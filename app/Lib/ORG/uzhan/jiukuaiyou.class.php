<?php
/*jiukuaiyou  U站采集插件*/
Class jiukuaiyou{
	protected $status  = array(0,1,2,3,4,5,6,7,8);
    protected $url     = 'http://jiukuaiyoucom.uz.taobao.com/d/jiu?u=';
	public function jiukuaiyou_allitems($category){
		$rz = $this->jiukuaiyou_getdata( $this->url . $category );
		if (!$rz) {return $this->status[2];}
		$or_items = $this->jiukuaiyou_getordata($rz,$category);
		if (!$or_items) {return $this->status[3];}
		$items = $this->jiukuaiyou_deal($or_items);
		if (!$items) {return $this->status[3];}
		return $items;
	}
	/***
	  @获取指定url页面内容
	  参数:string eg.url
	  返回:string
	***/
	protected function jiukuaiyou_getdata($url){
		$fn = curl_init();//初始化链接句柄
		//参数设置
		curl_setopt($fn,CURLOPT_URL,$url);
		curl_setopt($fn,CURLOPT_TIMEOUT,30);//超时时间30秒防止卡死
		curl_setopt($fn,CURLOPT_RETURNTRANSFER,1);
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
	处理页面信息
	  参数:string||array
	  返回array
	***/
	protected function jiukuaiyou_dealor($url=''){
	  //判断页数情况
	  $cont = '';
	  if (is_array($url))
	   {
	    foreach ($url as $k => $v) {
	      $content .= $this->jiukuaiyou_getdata($v);
	    }
	   }
	   else
	   {
	     $content = $this->jiukuaiyou_getdata($url);
	   }
	   //匹配所有宝贝
	    $pre_items = '/<ul[\s\S]+?goods-list[\S\s]+?<\/ul>/s';
	    preg_match_all($pre_items, $content, $temp);
	    if(empty($temp[0])){
	    $pre_items = '/<ul[\s\S]+?goods-list[\S\s]+/s';
	    preg_match_all($pre_items, $content, $temp);	
	    }
	    $content = implode('',$temp[0]);
	    preg_match_all('/<li[\s\S]+?<\/li>/si', $content, $temp);
	    if (isset($temp[0])) {
	      return $temp[0];
	    }else{
	      return false;
	    }
	}

	/***
	 @处理获取的网页内容分页信息
	 参数:string,string
	 返回:array 单个宝贝的最初数据
	***/
	protected function jiukuaiyou_getordata($str='',$item=''){
	  if(($str=='')||($str==false)||($item=='')){
	   return false;
	  }
	  $url = $this->url.$item;
	  if (false !== stripos($str, 'class="pageNav"')) {
	      preg_match_all('/<div class=\"pageNav\">.*?<a.*?>(\d+)<\/a>/is',$str,$temps);
	      if(isset($temps[1]) && !empty($temps))
	      {
			rsort($temps[1]);
			for ($i=1; $i <=$temps[1][0] ; $i++) { 
			   $url_all[] = $this->url.$item.'/'.$i;
			}
	      }
	      //处理数据得到原始宝贝信息
	       $items = $this->jiukuaiyou_dealor($url_all);
	       if (!is_array($items)||!$items) {
	         return false;
	       }else{
	        return $items;
	       }
	  }else{
	      $url_all = $url;
	      //处理数据得到原始宝贝
	       $items = $this->jiukuaiyou_dealor($url_all);
	       if (!is_array($items)||!$items) {
	         return false;
	       }else{
	        return $items;
	       }
	  }
	}
    /*
    对宝贝信息进行最后处理
    @ items array
    @ return array
    */
	protected function jiukuaiyou_deal($items=array()){
	  $shops = array();
      if(!is_array($items)) return false;
		$shops = array();
        foreach ($items as $k => $v) {
        	//num
        	preg_match('/href=\".+?id=(\d+)\"/', $v,$num);
        	$shops[$k]['num'] = isset($num[1]) ? $num[1] : '';
        	
			
			//type
			preg_match('/<div\s+?class=\"btn-new.*?(.+?)<\/div>/s', $v,$typey);
        	$shops[$k]['type'] = isset($typey[1]) ? trim($typey[1]) : '';
			
			if(stripos($shops[$k]['type'],'去淘宝抢购')){
							$shops[$k]['type']='C';
						}else{
							$shops[$k]['type']='B';
						}
			
        	//PICURL
        	if (stripos($v, 'data-ks-lazyload')!==flase) {
        		preg_match('/data-ks-lazyload=\"(\S+?)\"/s', $v,$itempic);
        	}
        	if(!isset($itempic[1])){
        		preg_match('/src=\"(\S+?)\"/s', $v,$itempic);
        	}
        	$shops[$k]['picurl'] = $itempic[1];
        	//title
        	preg_match('/<a\s+?class=\"title\"[\s|\S]+?>(.*?)<\/a>/s', $v,$itemtitle);
        	$shops[$k]['title'] = isset($itemtitle[1]) ? trim($itemtitle[1]) : '';
        	//roc
        	preg_match('/<div\s+?class=\"title-tips\">(.+?)<\/div>/s', $v,$itemroc);
        	$shops[$k]['roc'] = isset($itemroc[1]) ? trim($itemroc[1]) : '';
        	//curprice 
        	preg_match('/<span\s+?class=\"price-current.*?<\/em>([\d|\.]+?)<\/span>/', $v,$itemcurprice);
            $shops[$k]['curprice'] = isset($itemcurprice[1]) ? trim($itemcurprice[1]) : 0;
            //price
            preg_match('/<span\s+?class=\"price-old.*?<\/em>([\d|\.]+?)<\/span>/', $v,$itemprice);
            $shops[$k]['price'] = isset($itemprice[1]) ? trim($itemprice[1]) : 0;
            //source
            $shops[$k]['source'] = '九块邮';
        }
        return $shops;
    }
}
?>