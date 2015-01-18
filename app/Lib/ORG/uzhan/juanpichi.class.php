<?php
/*****************************************************************************************************/
            /*******************************卷皮尺采集*******************************/
/*****************************************************************************************************/
Class juanpichi{
protected $status  = array(0,1,2,3,4,5,6,7,8);

public function juanpichi_allitems($item){
  $rz = $this->juanpichi_getdata($item);//获取页面内容
  if (!$rz) {return $this->status[2];}
  $or_items = $this->juanpichi_getordata($rz,$item);//
  if (!$or_items) {return $this->status[3];}
  $items = $this->juanpichi_deal($or_items);
  if (!$items) {return $this->status[3];}
  return $items;
}
/***
  @获取指定url页面内容
  参数:string eg.url
  返回:string
***/
protected function juanpichi_getdata($item){
if (strlen($item)>26) {$url=$item;}else{$url = 'http://juanpi.uz.taobao.com/d/index?u=index/all/'.$item;}
  $fn = curl_init();//初始化链接句柄
  //参数设置
  curl_setopt($fn,CURLOPT_URL,$url);
  curl_setopt($fn,CURLOPT_TIMEOUT,30);//超时时间30秒防止卡死
  curl_setopt($fn,CURLOPT_RETURNTRANSFER,1);//以文件流的形式返回数据而不是直接显示
  curl_setopt($fn,CURLOPT_HEADER,0);

  $fm = curl_exec($fn);//执行句柄
  curl_close($fn);//关闭句柄
  //转换文档编码为UTF8
    $res = iconv('gbk','utf-8',$fm);
  if(($res==false)||($res==null)){
    return false;
  }
  return $res;
}
/***
 @处理获取的网页内容
 参数:string,string
 返回:array 单个宝贝的最初数据
***/
protected function juanpichi_getordata($str='',$item=''){
  if(($str=='')||($str==false)||($item=='')){
   return false;
  }
  $url = 'http://juanpi.uz.taobao.com/d/index?u=index/all/'.$item;
  //匹配分页数量
  $pre_page_1 = '/<div class=\"page\">(.*?)<\/a>/si';
  preg_match($pre_page_1,$str,$temp);
  if (is_array($temp)&&!empty($temp)&&isset($temp[0])) {
    $pre_page_2 ='/<div class=\"page\">.*?(\d)<\/a>/si'; 
      preg_match($pre_page_2,$temp[0],$temps);
      if(is_array($temps)&&!empty($temps)&&isset($temp[1])&&$temps[1]>1){
            for ($i=1; $i <$temps[1]+1 ; $i++) { 
              $url_all[] = $url.'/'.$i; 
            }
      }
      //处理数据得到原始宝贝信息
       $items = $this->juanpichi_dealor($url_all);
       if (!is_array($items)||!$items) {
         return false;
       }else{
        return $items;
       }
  }else{
      $url_all = $url;
      //处理数据得到原始宝贝
       $items = $this->juanpichi_dealor($url_all);
       if (!is_array($items)||!$items) {
         return false;
       }else{
        return $items;
       }
  }
}

/***
处理页面信息
  参数:string||array
  返回array
***/
protected function juanpichi_dealor($str=''){
  //判断页数情况
  $cont = '';
  if (is_array($str)&&$str!='') {
    foreach ($str as $k => $v) {
      $cont .= $this->juanpichi_getdata($v);
      sleep(2);
    }
    //匹配所有宝贝
    $pre_items = '/<li class=\"goods-box(.*?)<\/li>/si';
    preg_match_all($pre_items, $cont, $temp);
    if (is_array($temp)&&!empty($temp)&&isset($temp[0])) {
      return $temp[0];
    }else{
      return false;
    }
  }elseif (is_string($str)&&$str!='') {
    $cont = $this->juanpichi_getdata($str);
    //匹配所有宝贝
    $pre_items = '/<li class=\"goods-box(.*?)<\/li>/si';
    preg_match_all($pre_items, $cont, $temp);
    if (is_array($temp)&&!empty($temp)&&isset($temp[0])) {
      return $temp[0];
    }else{
      return false;
    }
  }else{
    return false;
  }
}
/***
  处理原始数据
  参数:array
  返回array
***/
  protected function juanpichi_deal($arr=''){
   $data_all = array();//储存所有处理过的数据
   $data     = array();//储存单个处理过的数据
   if (($arr=='')||!is_array($arr)) {
     return false;
   }
   //匹配商品详情信息:原始价格，当前价格，标题+促销信息，单品id，pic链接
   $pre_info = array(
     'url'    => '/<div class=\"btn buy\">.*?\"(http.*?)\">/s',//获得链接    
     'price'    => '/<span class=\"price-old\">.*?<\/em>(.*?)</us',//获得原价
     'curprice' => '/<span class=\"price-current\">.*?<\/em>(.*?)</s',//获得当前价格
     'picurl'   => '/<img.*?src=\"(.*?)\"\/>/s',//获取图片地址
     'roc'      => '/<div class=\"title-tips\">(.*?)</s',//获取推荐语
     'title'    => '/<h5.*?>.*?<\/a>.*?>(.*?)<\/a>.*?<\/h5>/s',//获取标题
     'type'     => '/<em class=\"icon.*?<\/em>/s',//获取店铺类型
     'pictemp'  => '/^http.*?(http.*)$/s'//处理意外情况
    );
   foreach ($arr as $k => $v) {
    preg_match($pre_info['url'],$v,$tempurl);
    //获商品id
    if (isset($tempurl[1])) {$data['num'] = substr($tempurl[1],strpos($tempurl[1], 'id=')+3);$data['url']=$tempurl[1];}
    //获取店铺类型
    preg_match($pre_info['type'], $v,$temptype);
    if(isset($temptype[0])&&strpos($temptype[0],'tao-n')>1) {$data['type']='C';}else{$data['type']='B';}
    preg_match($pre_info['price'], $v,$tempp);
    //获取原价
    if (isset($tempp[1])) {$data['price'] = trim($tempp[1]);}else{$data['price'] = '';}
    preg_match($pre_info['curprice'], $v,$tempc);
    //获取当前价
    if (isset($tempc[1])) {$data['curprice'] = trim($tempc[1]);}else{$data['curprice'] = '';}  
    preg_match($pre_info['picurl'], $v,$temppic);
    //获取图片链接
    if (isset($temppic)) {
      if (strrpos($temppic[1], 'juanpi')>1) {
       preg_match($pre_info['pictemp'],$temppic[1],$temp);
       $temppic[1] = $temp[1];
      }
      if(strrpos($temppic[1] , 'data-ks-lazyload')!== false) {
        $temppic[1] = strstr($temppic[1], 'http');
      }
      $data['picurl'] = substr($temppic[1],0,strrpos($temppic[1], ' '));}else{$data['picurl'] = '';
    }
    preg_match($pre_info['roc'], $v,$temproc);
    //获取推荐语
    if (isset($temproc[1])) {$data['roc'] = trim($temproc[1]);}else{$data['roc'] = '';}
    preg_match($pre_info['title'], $v,$tempt);
    //获取标题
    if (isset($tempt[1])) {$data['title'] = strip_tags(trim($tempt[1]));}else{$data['title'] = '';}
    $data['source'] = '卷皮尺';
    $data_all[] = $data;
   }
    if (!empty($data_all)) {return $data_all;}elseif (empty($data_all)) {return false;}else{return false;}
   }
}
?>