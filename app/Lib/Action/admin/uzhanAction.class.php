<?php
class uzhanAction extends BackendAction{
  protected $status = array(0,1,2,3,4,5,6,7,8,9,10,11,110);
  protected $nextcate = array();
  public function _initialize() {
    parent::_initialize();
    set_time_limit(0);
    $this->_mod = D('items');
    $this->_cate_mod = D('items_cate');
    $this->_settig   = M('setting');
  }
  public function uzhancai(){
    $cates = $this->_cate_mod->field('id,name,pid')->select();
    $ubind = $this->_settig->where(array('name'=>'ubind'))->getField('remark',true);
    $nodebd = bdpd($cates,$ubind);
    $this->assign('nodebd',$nodebd);
    $this->display('zhe');
  }
  /*开始时间设定*/
  public function starttime(){
    $mark = I('starttime','0','trim');
    $data = array('name'=>'u_star_ttime','data'=>$mark);
    $this->_settig->where(array('name'=>'u_star_ttime'))->delete();
    if($this->_settig->data($data)->add()){
      echo "parent:alert('修改成功')";
    }
  }
  /*获取设定时间*/
  public function getstarttime(){
     $time = $this->_settig->where(array('name'=>'u_star_ttime'))->getField('data');
     if(!$time){
      $this->ajaxReturn(0);
     }else{
      $this->ajaxReturn($time);
     }
  }
  /*绑定分类操作*/
  public function bind(){
    $data['remark'] = $this->_cookie('bzfid',trim);
    $uzhan = $this->_post();
    //处理u站分类
    if (is_array($uzhan)&&!empty($uzhan)) {
          $data['data'] = json_encode($uzhan);
    }
      $data['name'] = 'ubind';
    if ($this->_settig->data($data)->add()) {
       $this->ajaxReturn($this->status[4],'','绑定成功'); 
    }else{
      $this->ajaxReturn($this->status[5],'','绑定失败');
    }
  }
  /*绑定查询*/
  public function bindcx(){
    $bdid = $this->_post('bdid','trim');
    $bdinfo = $this->_settig->field('data')->where(array('remark'=>$bdid))->find();
    if ($bdinfo) {
      $this->ajaxReturn($this->status[6],'',$bdinfo);
    }
  }
  /*修改绑定*/
  public function xgbind(){
    $data['remark'] = $this->_cookie('xgfid','trim');
    $this->_settig->where(array('remark'=>$data['remark']))->delete();
    $uzhan = $this->_post();
    //处理u站分类
    if (is_array($uzhan)&&!empty($uzhan)){
      $data['data'] = json_encode($uzhan);
    }
      $data['name'] = 'ubind';
    if ($this->_settig->data($data)->add()) {
      $this->ajaxReturn($this->status[6],'','修改成功');  
    }else{
      $this->ajaxReturn($this->status[7],'','修改失败');
    }
  }
    /*取消绑定*/
  public function qxbd(){
      $qxcate = $this->_get('qxcate',trim);
      if ($this->_settig->where(array('remark'=>$qxcate))->delete()) {
        echo "取消成功";
      }
    }
    /*查询绑定信息,准备自动采集*/
  public function auto_info(){
      //绑定信息存储
      $bdinfo = array();
      //查询分类绑定信息
      $flinfo = $this->_settig->field('data,remark')->where(array('name'=>'ubind'))->select();
      if (!$flinfo) {
        $this->ajaxReturn($this->status[10],'','请先绑定分类信息！！');
      }
      foreach ($flinfo as $k => $v) {
        $bdinfo[$k]['fl']=$v['remark'];
        $temp = json_decode($v['data']);
        $bdinfo[$k]['ufl']= (array)$temp;
      }
      return $bdinfo;
    }
    public function first(){
      $firstcates = $this->auto_info();
      $firstcate  = $firstcates[0]['fl'];
        $name = $this->_cate_mod->where(array('id'=>$firstcate))->field('name')->find();
        $this->ajaxReturn($this->status[8],'',$name['name']);
    }
    /*一键采集所有分类*/
  public function auto_begin(){
    $start = $this->_get('flag');
    $actnum = 100;
    if($start=='start'){
      $bdinfo = $this->auto_info();
      F('bdinfo',$bdinfo);  
    }else{
       $bdinfo = F('bdinfo');
       $actnum = count($bdinfo);
    }
    if ($actnum == 0) {
      $this->ajaxReturn($this->status[9],'','全部采集完成');
    }
    //提示下一要采集的分类
    $next = isset($bdinfo[1]['fl'])?$bdinfo[1]['fl']:'';
    if ($next!=''){
      $name = $this->_cate_mod->where(array('id'=>$next))->field('name')->find();
      F('nextcate',$name['name']);
    }else{
      F('nextcate','没有了');
    }
    $fltemp = $bdinfo[0];
    array_shift($bdinfo);
    F('bdinfo',$bdinfo);
    $this->begin($fltemp);
  }
  public function begin($arr){
    $mdata = array();
    $fenlei=array(
      'cates' =>$arr['fl'],
      'zh'=> $arr['ufl']
      );
     //查询分类名称
    $name = $this->_cate_mod->where(array('id'=>$fenlei['cates']))->field('name')->find();
    F('fenlei',$fenlei);//缓存分类信息
     //开始获取目标网站当前分类所有宝贝数据。
      if (is_array($fenlei['zh'])&&$fenlei['zh']!=null) 
      {  
        //实例化U站采集类
        $uzhan = new uzhan();
        foreach ($fenlei['zh'] as $k => $v) 
        {
          if (strpos($k, 'juanpi')!==false) 
          {
            $jpc_temp = $uzhan->get('juanpichi',$v);//采集卷皮尺
            if(($jpc_temp!=2)&&($jpc_temp!=3))
            {
              $mdata[] = $jpc_temp;
            }
          }elseif (strpos($k, 'zhe800')!==false)
          {
            $zhe800_temp = $uzhan->get('zhe800',$v);//采集zhe800
            if(($zhe800_temp!=2)&&($zhe800_temp!=3))
            {  //过滤
              if(is_array($zhe800_temp)){$mdata[]= dealcf($zhe800_temp);}else{$mdata[]=$zhe800_temp;}
            }
          }elseif (strpos($k,'jiukuaiyou')!==false) 
          {
             //九块邮
            $jiukuaiyou_temp = $uzhan->get('jiukuaiyou',$v);
            if(($jiukuaiyou_temp!=2)&&($jiukuaiyou_temp!=3))
            {
              $mdata[] = $jiukuaiyou_temp;
            }   
          }
        }
        //全部宝贝检测
        if(empty($mdata))
        {
          $this->ajaxReturn($this->status[12],'','<font color="red">无法从目标网站获取数据,请检查程序!</font>');
        }
        $temps = array();
        foreach ($mdata as $k => $v) {
         $temps = array_merge($temps,$v); 
        }
        $mdata = $temps;
      }else
      {
        return;
      }
     $allnum = count($mdata);
       $this->assign('allnum',$allnum);
     foreach($mdata as $k=>$v){
        //检测与数据库的数据是否重复
        $num = $this->_mod->where(array('num_iid'=>$v['num']))->find();
        if($num){
          unset($mdata[$k]);
        }elseif(($v['num']=='')||($v['title']=='')||($v['picurl']=='')||($v['curprice']=='')||($v['price']=='')){
          unset($mdata[$k]);
        }
     }
     
     if(empty($mdata)){
        $nextcatename = F('nextcate');
        $this->nextcate['nextcate'] = $nextcatename;
        $this->ajaxReturn($this->status[0],$this->nextcate,'【'.$name['name'].'】分类没有可添加商品');
     }
     shuffle($mdata);
     F('mdata',$mdata);//缓存采集数据
     $numm = count($mdata);
     $this->assign('num',$numm);
     $this->assign('cf',$allnum - $numm);
     $this->assign('items',$mdata);
     $rz= $this->fetch('bfbegin');
     $this->ajaxReturn($this->status[1],$name['name'],$rz);
  }
  public function onezhe(){
    $cates = $this->_cate_mod->field('id,name,pid')->select();
    $this->assign('cates',$cates);
    $this->display();
  }
  public function onebegin(){
    if($this->_post('cates','trim')==null){
     $this->ajaxReturn(4,'','请选择自身分类!');
    }elseif($this->_post('zh','trim')==null){
    $this->ajaxReturn(5,'','请选择目标分类!');
    }
    $fenlei=array(
    'cates' =>$this->_post('cates','trim'),
    'zh'=> $this->_post('zh','trim')
    );
    F('fenlei',$fenlei);//缓存分类信息
    //开始获取目标网站当前分类所有宝贝数据。
    $uzhan = new uzhan();
    $nl1=chr(45);
    $nl2=chr(95);
    if ( strpos($fenlei['zh'],'juanpichi')!==false ) {
    $tempp = ltrim(strstr($fenlei['zh'],$nl1),$nl1) ? ltrim(strstr($fenlei['zh'],$nl1),$nl1) :ltrim(strstr($fenlei['zh'],$nl2),$nl2);
    $mdata = $uzhan->get('juanpichi',$tempp);
    }elseif ( strpos($fenlei['zh'],'zhe800')!==false  ) {
    $tempp = ltrim(strstr($fenlei['zh'],$nl1),$nl1) ? ltrim(strstr($fenlei['zh'],$nl1),$nl1) :ltrim(strstr($fenlei['zh'],$nl2),$nl2);
    $mdata = $uzhan->get('zhe800',$tempp);
    }elseif ( strpos($fenlei['zh'],'jiukuaiyou')!==false  ) {
    $tempp = ltrim(strstr($fenlei['zh'],$nl1),$nl1) ? ltrim(strstr($fenlei['zh'],$nl1),$nl1) :ltrim(strstr($fenlei['zh'],$nl2),$nl2);
    $mdata = $uzhan->get('jiukuaiyou',$tempp);
    }
    if ($mdata==2) {
    $this->ajaxReturn(2,'','无法从目标网站获取有效数据,请稍后尝试!');
    }elseif ($mdata==3) {
    $this->ajaxReturn(3,'','数据已获取成功,单处理失败!');
    }
    $allnum = count($mdata);
    $this->assign('allnum',$allnum);
    foreach($mdata as $k=>$v){
      //检测与数据库的数据是否重复
      $num = $this->_mod->where(array('num_iid'=>$v['num']))->find();
      if(is_array($num)&&$num!=null){
        unset($mdata[$k]);
      }elseif(($v['num']=='')||($v['title']=='')||($v['picurl']=='')||($v['curprice']=='')||($v['price']=='')){
        unset($mdata[$k]);
      }
    }
    if(empty($mdata)){
      $this->ajaxReturn($this->status[0],'','没有可添加商品');
    }
    //缓存采集数据
    F('mdata',$mdata);
    $numm = count($mdata);
    $this->assign('num',$numm);
    $this->assign('cf',$allnum - $numm);
    $this->assign('items',$mdata);
    $rz= $this->fetch('onebfbegin');
    $this->ajaxReturn($this->status[1],'',$rz);
  }
  public function additems(){
    $suc = 0;
    $err = 0;
    $mdata = F('mdata');
    $fenlei= F('fenlei');
    if (empty($mdata)) {
      $this->ajaxReturn($this->status[11],'','请先采集数据!');
    }
    //获取父分类pid
    $_pid = $this->_cate_mod->where(array('id' =>$fenlei['cates']))->field('pid')->find();
    $pid  = is_numeric($_pid['pid'])?$_pid['pid']:0;
    /*手/自动添加判断*/
    if (I('caitype','')) {
      $this->nextcate=0;
    }else{
      $name = $this->_cate_mod->where(array('id'=>$fenlei['cates']))->field('name')->find();
      $this->nextcate['cname'] = $name['name'];  
      $nextcatename = F('nextcate');
      $this->nextcate['nextcate'] = $nextcatename;
    }
      $time = $this->_settig->where(array('name'=>'u_star_ttime'))->getField('data');
      switch ($time) {
       case 't0':
        $coupon_start_time  = mktime(0,0,0,date("m"),date("d"),date("Y")); 
         break;
       case 't10':
        $coupon_start_time  = mktime(10,0,0,date("m"),date("d"),date("Y")); 
         break;
       case 'b0':
        $coupon_start_time  = mktime(0,0,0,date("m"),date("d")+1,date("Y")); 
         break;
       case 'b10':
        $coupon_start_time  = mktime(10,0,0,date("m"),date("d")+1,date("Y")); 
         break;
       default:
        $coupon_start_time  = time(); 
         break;
      }
     //数据入库
    foreach($mdata as $k=>$v){
      //优惠结束时间
      $coupon_end_time    = $coupon_start_time  + 3600*24*60;
      $sql = array(
       'pass'                       =>1,//是否通过审核
       'ems'                        =>1,//是否包邮
       'hits'                       =>rand(1000,3000),//点击次数
       'likes'                      =>rand(1000,3000),      
       'cate_id'                    =>$fenlei['cates'],
       'orig_id'                    =>$pid,
       'title'                      =>'【拍下'.$v['curprice'].'元】'.$v['title'],//标题
       'pic_url'                    =>$v['picurl'],//图片链接
       'price'                      =>$v['price'],//实际价格       
       'volume'                     =>rand(100,3000),//数量
       'seo_title'                  =>$v['title'],
       'add_time'                   =>time(),
       'shop_type'                  =>$v['type'],//店铺类型
       'num_iid'                    =>$v['num'],
       'seo_desc'                   =>$v['roc'],
       'coupon_price'               =>$v['curprice'],//优惠价格
       'coupon_rate'                =>floor(($v['curprice']/$v['price'])*10000),//折扣比率
       'coupon_start_time'          =>$coupon_start_time,//优惠开始时间
       'coupon_end_time'            =>$coupon_end_time,//优惠结束时间
      );
      if ($this->_mod->add($sql)) {
        $mdata[$k]['status']=1;
        $suc++;
      }else{
        $mdata[$k]['status']=0;
        $err++;
      }
      usleep(200000);
    }
    $this->assign('items',$mdata);
    $this->assign('suc',$suc);
    $this->assign('err',$err);
    F('mdata',array());//清空临时缓存
    $fetch = I('caitype','') ? 'onebegin' : 'begin'; 
    $rz= $this->fetch($fetch);
    $this->ajaxReturn($this->status[1],$this->nextcate,$rz);
  }
}

/*递归*/
function bdpd($node,$bded=null,$pid=0){
  $nodebd = array();
  foreach ($node as $v) {
    if (is_array($bded)) {
      $v['bded']= in_array($v['id'], $bded)?1:0;
    }
    if ($v['pid']==$pid) {
      $v['child'] = bdpd($node,$bded,$v['id']);
      $nodebd[] = $v;
    }
  }
  return $nodebd;
}
/*商品去重复*/
function dealcf($items){
  if (!is_array($items)) {return false;}
  $temp =array();
  foreach($items as $k=>$v){
    $temp[] = implode('||',$v);
  }
  $rz = array_unique($temp);
  foreach($rz as $k=>$v){
    $temp=explode('||',$v);
    foreach ($temp as $kk => $vv) {
      if    ($kk==0)    $ttemp[$k]['url']=$vv;
      elseif($kk==1)    $ttemp[$k]['title']=$vv;
      elseif($kk==2)    $ttemp[$k]['price']=$vv;
      elseif($kk==3)    $ttemp[$k]['curprice']=$vv;
      elseif($kk==4)    $ttemp[$k]['picurl']=$vv;
      elseif($kk==5)    $ttemp[$k]['roc']=$vv;
      elseif($kk==6)    $ttemp[$k]['type']=$vv;
      elseif($kk==7)    $ttemp[$k]['num']=$vv;
      elseif($kk==8)    $ttemp[$k]['source']=$vv;
    }
  }
  return $ttemp;
}
?>
