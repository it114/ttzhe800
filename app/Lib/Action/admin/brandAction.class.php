<?php
/*商家分类管理*/
class brandAction extends BackendAction {
    public function _initialize() {
        parent::_initialize();

    }
    public function index() {
        $k = I('k','','trim');
        $where = array();
        if($k){
            $where['sname'] = array('like','%'.$k.'%');
        }
        $this->list  = M('seller')->where($where)->select();
        $this->display();
    }
    public function so(){
        $k = I('ks','','trim')  || I('km','','trim');
        $this->ajaxReturn(1,U('brand/index',array('k'=>$k)));
    }
     public function add(){
        $this->display();
     }
   //添加商家
     public function addact(){
        $sid = I('sid',0,'intval');
        $method = $sid?'save':'add';
        $msg = $sid?'修改':'增加';
     //创建数据
          $data = array(
             'sname'=>I('name','','htmlspecialchars'),
             'surl'=> I('url','','htmlspecialchars'),
             'burl'=> I('burl','','htmlspecialchars'),
             'ishot' =>I('hot','N','trim'),
             'sort'=>I('sort','255','intval'),
             'isshow'=>I('isshow','Y','trim'),
             'des'   =>I('des','','htmlspecialchars'),
          );
          if($sid){
            $data['sid']=$sid;
          }
          if(I('logo','')){
            $data['spic'] = I('logo','');
          }
         if(I('fpic','')){
            $data['fpic'] = I('fpic','');
          }
          //写入数据
          $db = M('seller');
          if($id = $db->$method($data)){
            $this->ajaxReturn(1,$msg.'成功',U('brand/index'));
          }else{
            $error = $db->getdbError();
            $this->ajaxReturn(0,$msg.'失败',$error);
          }
        }

    public function show(){
        $type = I('type','','trim');
        $id   = I('id',0,'intval');
        $value = I('value','','trim');
        $url   = I('url','','trim');
        $replace  = ($value=='Y') ? 'enabled' :'disabled';
        $search   = ($value=='N') ? 'enabled' :'disabled';
        $url = str_replace($search, $replace, $url);
        if(!$type || !id || !$value) $this->ajaxReturn(0,'无效参数');
        if($type=='hot'){
            if(M('seller')->where(array('sid'=>$id))->save(array('ishot'=>$value))){
                $this->ajaxReturn(1,$url,'');
            }
        }else{
            if(M('seller')->where(array('sid'=>$id))->save(array('isshow'=>$value))){
                $this->ajaxReturn(1,$url,'');
            }  
        }
    }
    /**
     * 批量删除
     */
    public function delete() {
       $id  = I('id');
       if(is_array($id)){
        foreach ($id as $k => $v) {
            M('seller')->where(array('sid'=>$v))->delete();
            M('seller_items')->where(array('sid'=>$v))->delete();
        }
       }
       $this->ajaxReturn(1,'删除成功',U('brand/index'));
    }
    
    public function deleteone(){
        $id  = I('sid','','intval');
        if(!$id) $this->ajaxReturn(0,'非法参数','');
        if(M('seller')->where(array('sid'=>$id))->delete()){
           M('seller_items')->where(array('sid'=>$id))->delete();
            $this->ajaxReturn(1,'删除成功','');
        }else{
            $this->ajaxReturn(0,'删除失败','');
        }
    }

    public function edit(){
        $id = I('sid','','intval');
        if(!$id)  $this->ajaxReturn(0,'无效参数','');
        $this->seller = M('seller')->where(array('sid'=>$id))->find();
        $this->display();
    }
    public function branditems(){
        $sid   =  I('sid','','intval');
        $where = array();
        if ($sid) {
         $where = array('sid'=>$sid);
        }
        $this->list = M('seler_items')->where($where)->select();

        $this->display();
    }
    
    public function  upload(){
        import('ORG.Net.UploadFile');
        $up = new UploadFile();
        if($up->upload(FTX_DATA_PATH.'upload/seller/')){
          $info   = $up->getUploadFileInfo();
          $spic = FTX_DATA_PATH.'upload/seller/'.$info[0]['savename'];  
          $this->ajaxReturn(2,'上传成功',$spic);
         }else{
          $this->ajaxReturn(0,'上传失败');
         } 
    }

    public function have(){
        $sid = I('sid',0,'intval');
        $temp  =  M('seller')->where(array('sid'=>$sid))->Field('burl,sname')->find();
        $item_list = $this->getItems($temp['burl']);
        F('seller_item',$item_list);
        F('seller_sid',$sid);
        F('seller_nick',$temp['sname']);
        $this->ajaxReturn(1,'','');
    }

    protected function getItems($url){
        $content  = $this->getdata($url);
        //匹配最大页数
        // preg_match('/maxlength=\"(\d+)\"/', $content,$v);
        // $pages = isset($v[1] ) ? $v[1] : 1;
        //匹配当前页面所有宝贝
        //普通版淘宝页面
        preg_match_all('/catid[\s\S]+?(<div class=\"box\">[\s\S]+?)<hr/si', $content,$items);
         $list = array();
        foreach($items[1] as $k=>$v){
          //type
          if(strripos($v, 'a.m.taobao')!==false){
            $list[$k]['type'] = 'C';
          }else{
            $list[$k]['type'] = 'B';
          }
          //id
         preg_match('/href=\".*?i(.*?)\.htm/usi',$v,$ids);
         $list[$k]['num'] = isset($ids[1]) ? $ids[1] : '';
         //title 
         preg_match('/<a[\s\S]+?>(.*?)<\/a>/usi', $v,$titles);
         $list[$k]['title'] = isset($titles[1]) ? $titles[1] : '';
         //img
         preg_match('/<img src=\"([\s\S]+?)\"/si', $v,$imgs);
         $list[$k]['img'] = substr($imgs[1],0,strrpos($imgs[1], '_'));
         //subtotal
         preg_match('/<p>.*：(\d+)/si',$v,$subtotal);
         $list[$k]['subtotal'] = isset($subtotal[1]) ? $subtotal[1] : '';
         //couprice
         preg_match('/<span.*?￥(\d+)/si', $v,$couprice);
         $list[$k]['couprice'] = isset($couprice[1]) ? $couprice[1] : '';
         //price
         preg_match('/<del.*?>￥(\d+)/si',$v,$price);
         $list[$k]['price'] = isset($price[1]) ? $price[1] : '';

         if(!$list[$k]['price']) {
          $list[$k]['price'] = $list[$k]['couprice'];
         }elseif (!$list[$k]['couprice']) {
           $list[$k]['couprice'] = $list[$k]['price'];
         }
        }
       foreach ($list as $k => $v) {
         if (!$v['num'] || !$v['title'] || !$v['img'] || !$v['subtotal'] || !$v['couprice'] || !$v['price'] ) {
            unset($list[$k]);
         }
       }
      return $list;
         
    }
    public function additems(){
     if(($item_list=F('seller_item'))===false){
        $this->ajaxReturn(0,'请先提取数据!');
      }
      $this->tatal = count($item_list);
      $sid = F('seller_sid');
      $nick =F('seller_nick');
      $suc = 0;
      foreach($item_list as $k=>$v){
            $coupon_start_time  = time();
            //优惠结束时间
            $coupon_end_time    = $coupon_start_time  + 3600*24*100;
            $sql = array(
             'pass'                       =>1,//是否通过审核
             'ems'                        =>1,//是否包邮
             'hits'                       =>rand(1000,3000),//点击次数
             'nick'                       =>$nick, 
             'likes'                      =>$v['subtotal'],      
             'sid'                        =>$sid,
             'title'                      =>$v['title'],//标题
             'pic_url'                    =>$v['img'],//图片链接
             'price'                      =>$v['price'],//实际价格       
             'volume'                     =>$v['subtotal'],//数量
             'seo_title'                  =>$v['title'],
             'add_time'                   =>time(),
             'shop_type'                  =>$v['type'],//店铺类型
             'num_iid'                    =>$v['num'],
             'seo_desc'                   =>$v['title'],
             'coupon_price'               =>$v['couprice'],//优惠价格
             'coupon_rate'                =>floor(($v['curprice']/$v['price'])*10000),//折扣比率
             'coupon_start_time'          =>$coupon_start_time,//优惠开始时间
             'coupon_end_time'            =>$coupon_end_time,//优惠结束时间
            );
            if (M('seller_items')->add($sql)) {
              $suc++;
            }
            usleep(200000);
          }
      $this->assign('suc',$suc);
      $data = $this->fetch('msg');
      $this->ajaxReturn(1,$data,'');
    }

  protected function getdata($url){
    $fn = curl_init();//初始化链接句柄
    //参数设置
    curl_setopt($fn,CURLOPT_URL,$url);
    curl_setopt($fn,CURLOPT_TIMEOUT,30);//超时时间30秒防止卡死
    curl_setopt($fn,CURLOPT_RETURNTRANSFER,1);
    curl_setopt($fn,CURLOPT_HEADER,0);
    $fm = curl_exec($fn);//执行句柄
    curl_close($fn);//关闭句柄
    if(($fm==false)||($fm==null)){
      return false;
    }
    return $fm;
  }


}