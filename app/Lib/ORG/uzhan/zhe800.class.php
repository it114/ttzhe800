<?php
/*****************************************************************************************************/
            /*******************************折800采集*******************************/
/*****************************************************************************************************/
Class zhe800{
	protected $status  = array(0,1,2,3,4,5,6,7,8);
	//获取数据
		/***
	参数:string
	返回:array 二维数组。所有采集数据

	***/
	public function zhe800_allitems($tag_id){
		$ddata = array();
		$str ='http://zhe800.uz.taobao.com/list.php?page=1&tag_id='.$tag_id;
		$rz = file_get_contents($str);
		$rz = iconv('gbk','utf-8',$rz);
		//检测是否有分页信息,如果没有则不在进行分页处理
		$pre_pageinfo = '/<div class=\"page_div clear area page_bottom\">/s';
		preg_match($pre_pageinfo,$rz,$pageinfo);
		if(is_array($pageinfo)&&$pageinfo!=null){
		 //获取总页数
		 $pre_allpages = '/<div class=\"page_div clear area page_bottom\">(.*?)<\/div>/s';
		  preg_match($pre_allpages,$rz,$pagedata);
		  $pre_pages   = '/list.php\?page=(\d+?)\&/s';
		  preg_match_all($pre_pages,$pagedata[1],$pages);
		  $pages = count($pages[1]) - 1;

			if(is_numeric($pages)&&$pages>0){
				//获取需要采集的所有页面$allpages_url.
				$allpages_url = array();
				$url1 ='http://zhe800.uz.taobao.com/list.php?page=';
				$url2 = '&tag_id='.$tag_id;
				for($i=0;$i<$pages;$i++){
				 $allpages_url[$i] = $url1.$i.$url2;
				}
			}
			//------------获取原始数据-------------
			$data = $this->zhe800_getgoodsdata($allpages_url);
			if(empty($data)) {
				return $this->status[2];
			}
			//------------处理原始数据-------------
			$ddata = $this->zhe800_deal($data);
		    if(empty($ddata)||($ddata===false)) {
		    	return $this->status[3];
		    }
		}else{
		 $allpages_url = $str;
			//------------获取原始数据-------------
			$data = $this->zhe800_getgoodsdata($allpages_url);
			if(empty($data)) {
				return $this->status[2];
			}
			//------------处理原始数据-------------
			$ddata = $this->zhe800_deal($data);
			if(empty($ddata)||($ddata===false)) {
				return $this->status[3];
			}
		}
		return $ddata;
	}
	/***
	 参数:string||array->待采集的所有页面
	 返回:array->返回采集的原始数据
	***/
	protected function zhe800_getgoodsdata($url){
		static $curdata = array();
		if(is_array($url)&&$url!=null){
			 foreach($url as $v){
				//获取当前页面数据
				@$curpage = file_get_contents($v);
				$curpage = iconv('gbk','utf-8',$curpage);
				//获取当前页面的所有商品
				$pre_allgoods = '/<div class=\"dealinfo\">(.*?)<\/div>/is';
				preg_match_all($pre_allgoods,$curpage,$arrdata);
				if(is_array($arrdata[1])&&$arrdata[1]!=null){
				 $curdata = array_merge($curdata,$arrdata[1]);
				}
				sleep(2);
			}
		}
		if(is_string($url)&&$url!=null){
		       //获取当前页面数据
				$curpage = file_get_contents($url);
				$curpage = iconv('gbk','utf-8',$curpage);
				//获取当前页面的所有商品
				$pre_allgoods = '/<div class=\"dealinfo\">(.*?)<\/div>/is';
				preg_match_all($pre_allgoods,$curpage,$arrdata);
				if(is_array($arrdata[1])&&$arrdata[1]!=null){
				 $curdata = $arrdata[1];
				}
		}
		return $curdata;
	}
	/***
	参数:array ->原始数据信息
	返回:array ->干净的数据
	***/
	protected function zhe800_deal($data){
	 $alldata = array();//储存所有处理后的数据
	 $gdata = array();//储存处理后的数据
	 if(!is_array($data)) {die('为获取到原始数据');};
	   $pre_title    = '/<h2>.*?\/strong.*?href=\"(.*?)\">(.*?)<\/a>/s';//获得链接和标题   
	   // $pre_price    = '/<h3>.*?<i>(.*?)<\/i>/us';//获得原价
	   $pre_curprice = '/<h4>.*?<span>.*?<\/b>(.*?)<\/span>.*?<i>.*?(\d+?)<\/i>.*?<\/h4>/s';//获得当前价格
	   $pre_picurl   = '/<img.*?src=\"(.*?)\"/s';//获取图片地址
	   $pre_roc      = '/<h6.*?<\/em>(.*?)<\/h6>/s';//获取推荐语
	   $pre_type     = '/tmall/i';//获取店铺类型
	   $pre_num      = '/http.*?id=(\d+)/';//获取商品id   
	  //开始处理数据
	foreach($data as $v){
	  // print_r($v);exit;
	   preg_match($pre_title,$v,$tu);
	   $gdata['url']   = $tu[1];
	   $gdata['title'] = $tu[2];
	   // preg_match($pre_price,$v,$price);
	   // $gdata['price'] = $price[1];
	   preg_match($pre_curprice,$v,$curprice);
	   $gdata['price'] = $curprice[2];
	   $gdata['curprice'] = trim(strip_tags($curprice[1]));
	   preg_match($pre_picurl,$v,$picurl);
	   //进一步处理图片
	   $picurl[1] = substr($picurl[1],0,strrpos($picurl[1], '_'));
	   $gdata['picurl']  = $picurl[1];
	   
	   preg_match($pre_roc,$v,$roc);
	   $gdata['roc']  = trim($roc[1]);
	   //判断店铺类型
	   preg_match($pre_type,$tu[1],$type);
	   if(is_array($type)&&($type!=null)){
	    $gdata['type'] = 'B';
	   }else{
	    $gdata['type'] = 'C';
	   }
	   //获取商品id
	   preg_match($pre_num,$tu[1],$num);
	   $gdata['num'] = $num[1];
	   $gdata['source'] = '折800';
	   $alldata[]= $gdata;
	  }
	  // p($gdata);
	  if(empty($alldata)) return false;
	  return $alldata;
	}
}
?>