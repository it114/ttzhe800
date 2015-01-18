(function($) {
	/** 
	 * fangfang_notfound，没有找到'.alert_record'等元素，此文件与jiu/pg-jiu.js文件内容几乎一样，
	 * 且两个文件90%以上功能皆没使用到
	 * start
	 */ 	
	$(".alert_record").live('click',function(){
		$(".browsing-history").removeClass('show-history');	
		$('.record').hide();
		$(".alert_record").remove();			
	});	
	$("#history").live('click',function(){

		if($(".browsing-history").hasClass('show-history')){
			$(".browsing-history").removeClass('show-history');
			$('.record').hide();
			$(".alert_record").remove();				
		}else{
			$(".browsing-history").addClass('show-history');
			$('.record').show();
			$(".alert_ceng").after("<div class='alert_record'></div>");
			$(".alert_record").show();
		}
		var cook_exist = XDTOOL.getCookie("history");
		if(cook_exist != ''&&cook_exist != undefined && cook_exist != null){
			$('.record').html("正在加载中……");	
			$.ajax({
				type:"post",
				dateType:"json",
				url:__U_WEB__+"/jiuajax",
				data:({ "action":'history'}),
				success:function (data) {	
					var data = eval("(" + data + ")");
					if(data.status.code==200){ 
						$('.record').html(data.result);	
						if($('.record').hasClass('record-empty')){
							$('.record').removeClass('record-empty');
						}			
						$('.his_02 ').hide();
						var len = $('.his_02 li').length;							
						if(len>0){
							$('.more-links').show();
						}
					}else{
						if(!$('.record').hasClass('record-empty')){
							$('.record').addClass('record-empty')
						}   
						$('.record').html('您还未浏览过九块邮宝贝哦！');
					}

				}
			});	
		}else{					
			if(!$('.record').hasClass('record-empty')){
				$('.record').addClass('record-empty')
			}   
			$('.record').html('您还未浏览过九块邮宝贝哦！');
		}      
		return false;			
	});
	$("#his_earlist").live('click',function(){
		$('.more-links').html('<b id="his_earlist" href="javascript:;">&lt; 最近</b><a id="his_later" href="javascript:;">更早 &gt;</a>');
		$('.his_01').show();
		$('.his_02').hide();
	});
	$("#his_later").live('click',function(){
		$('.more-links').html('<a id="his_earlist" href="javascript:;">&lt; 最近</a><b id="his_later" href="javascript:;">更早 &gt;</b>');
		$('.his_02').show();
		$('.his_01').hide();
	});
	$(".clear-record a").live('click',function(){
		var choice=confirm("您确认要删除吗？");	
		if(choice==true){
			XDTOOL.setCookie("history", null, {
				expires: true,
				path: "/"
			});
			$('.record').hide();
			$(".browsing-history").removeClass('show-history');	
			return true;							 
		}else{
			return false;
		}							
	});
	var basehref = location.href.toString();
	var htmlstr = '<a href="javascript:;" class="go-see clearlike">取消</a>';
	var blankstr = '<li class="box_bd_01 goods_box" data-res=""><div class="box_bd_02 "></div></li>';
	
	/**
	 *功能:喜欢弹出框延迟显示
	 *时间:2013-07-04
	 *姓名:熊金
	 * 
	 */

	var showflag = null;
	
	$(".goods_box .like").mouseleave(function(){
		var that = this;
		showflag = setTimeout(function(){
			if($(that).hasClass("goods_box_l")){
				$(that).css("z-index","");
			}else{
				$(that).css("z-index","5");
			}
			$("#like_alert").css('display','none');
		},2000);
		
	});
	
	$("#like_alert").mouseenter(function(){
		var that = this;
		clearTimeout(showflag);
		$(that).css('display',"block");
		
	}).mouseleave(function(){
		var that = this;
		clearTimeout(showflag);
		showflag = setTimeout(function(){
			$(that).css('display','none');
		},2000);
		
	});
	
	/**
	 *功能:首页商品分享信息
	 *时间:2013-07-04
	 *姓名:熊金
	 * 
	 */
	$("#like_alert .sharebaidu a").mouseover(function (){
		var that = this;
		var curobj = null;
		var likeobj = $(that).parents('#like_alert');
		$(".like").each(function(index,item){
			if($(item).attr('data-pid')==likeobj.attr("data-pid")){
				 curobj = item;
			}
		});

		var goodobj = $(curobj).parents(".goods_box");
		var spricematch = goodobj.find(".price-discount").html().match(/\d+\.(\d+)?/);
		var cpricematch = goodobj.find(".price-current").html().match(/\d+\.(\d+)?/);
		var sprice = spricematch!=null && spricematch.length>0 ? spricematch[0] : 0;
		var cprice = cpricematch!=null && cpricematch.length>0 ? cpricematch[0] : 0;
		var url = location.href.toString();
		var comment = goodobj.find(".title").html().replace(/\s*\n*【.+】\s+/g,"").replace(/\s+$/g,"");
		var pic = goodobj.find('.pic img').attr('src');
		var title = "【九块邮】"+ comment +"原价："+sprice+"  现价："+cprice;
		var desc = '一句话证明你在玩【九块邮】！我先来：全场九块九包邮，每天给你九块九的小幸福！';
		var text = '';	
		var type = $(this).attr("class");
		
		title = title.replace(/\s*\n*【.+】\s+/,"");
		if(type == 'bds_tsina') text = desc + title;
		
	    var data = "{'text':'"+ text +"','comment':'"+comment+"','desc':'"+ desc+"','url':'"+url+"','pic':'"+pic+"'}";

		$(that).parents("#bdshare").attr('data',data);
	});
	
	$("#like_alert .sharebaidu a").click(function (){
		var that = this;
		var type = $(this).attr("class");
		var pid = $(that).parents('#like_alert').attr("data-pid");
		$.ajax({
			type:"post",
			dateType:"json",
			url:__U_WEB__+"/jiuajax",
			data:({ "action":"likeshare","pid":pid,"type":type}),
			success:function (msg) {
				var msg = eval('(' + msg + ')');
					if(msg.status == 2001){
						var dou_now = $('.all_juandou:first').html().match(/\d+/);
						var dou_share = parseInt(dou_now) + 15;
						$('.all_juandou:first').html("卷豆："+dou_share+"个");
					}
			}
		})

	});
	
	/**
	 *功能:弹出首页喜欢成功的提示框
	 *时间:2013-07-04
	 *姓名:熊金
	 * 
	 */
	$(".goods_box .like").live('click',function(){
		clearTimeout(showflag);
		var that = this;
		var pid = $(this).attr("data-pid");
		var offset = $(that).parents(".goods_box ").offset();
		var liheight = $("ul.goods-list li").height();
		var likealert = $("#like_alert");
		var left = 0,top=0,width=0;
		var arrow  = $(".top-cur");
		var actionnum = $(that).parents(".goods_box").find(".cur-num").html();  //喜欢数字   

		likealert.attr('data-pid',pid);
		
		if($(that).hasClass("can")){
			return false;
		}else{
			$(that).addClass("can");
		}
		
		//把我喜欢商品写入cookie
		ADD_USER_LIKE(pid);

		width = $(that).parents("li").width();
		top = parseInt(offset.top)+liheight-4;
		left = parseInt(offset.left);
		
		//动态改变弹出框宽度 原来有一个-29的
		likealert.css("width",width);
		

		//如果在我喜欢页面就把我的喜欢换成取消
		if(basehref.indexOf("user/like")!=-1){
			likealert.find(".go-see").remove();
			likealert.find(".like-con").append(htmlstr);
			
		}
		
		//移动小箭标
		if(actionnum>=0 && actionnum<10){
			arrow.css('right','29px');
		}else if(actionnum>=10 && actionnum<100){
			arrow.css('right','30px');
		}else if(actionnum>=100 && actionnum <1000){
			arrow.css('right','36px');
		}else if(actionnum>=1000 && actionnum<9999){
			arrow.css('right','43px');
		}else if (actionnum>=10000 && actionnum<100000){
			arrow.css('right','42px');
		}else{
			arrow.css('right','40px');
		}
		
		
	

		if(!$(that).hasClass("no-like")){	//已喜欢
			$(that).parents(".goods_box").css("z-index","10");
			likealert.find(".liked").html("已喜欢~");
			likealert.find(".share_txt").html("喜欢就分享给闺蜜吧^o^");
			likealert.css({
				'top':top,
				'left':left,
				'display':"block"
			});
			$(that).removeClass("can");

		}else{	
			$(that).attr("title","已喜欢"); //喜欢
			likealert.find(".liked").html("喜欢成功~");
			likealert.find(".share_txt").html("分享就可领卷豆哦^o^");
			$(that).parents(".goods_box").css("z-index","10");
			likealert.css({
				'top':top,
				'left':left,
				'display':"block"
			});

			$(that).removeClass("no-like");
			$(that).parents(".like-state").find(".cur-num").html(parseInt($(that).parents(".like-state").find(".cur-num").html())+1);
			
			$.ajax({
				type:"post",
				dateType:"json",
				url:__U_WEB__+"/jiuajax",
				data:({ "action":"like","pid":pid}),
				success:function (msg) {

					$(that).removeClass("can");
				}
			})
		}
	});
	
	//内页我喜欢
	$(".goods_detail .like").live('click',function(){
		var loadingReg = '<div style="height:141px; text-align:center;"><img style="margin-top:35px;"src="'+__U_STATIC__+'/img/icon/loading.gif" alt=""></div>';
		f = new XDLightBox({
	        title: "正在加载....",
	        lightBoxId: "bbb",
	        contentHtml: loadingReg,
	        scroll: true
	    });
	    f.init();
	    $("#bbb .alert_top").width("360px");
	    $("#bbb .alert_content").css("padding","30px 40px");
	    $("#bbb .alert_content").width("280px");
		$("#like-tips").hide();
		var obj = $(this);
		if(obj.hasClass("can")){
			return false;

		}else{

			obj.addClass("can");
			var title = $(".goods_detail .title a").html();
			if(title.indexOf("原价") <= 0 ){
			    title = title +"原价："+$(".goods_detail .m-price").html().replace(/市场价：/,"")+"  现价："+$(".goods_detail .quan_title .price").html().replace(/<[^>]+>/g,"");
			}

			var url = location.href;
			var pic = obj.parents(".goods_con").find(".pic img").attr("src");
			var comment = obj.parents(".goods_con").find(".pic").data("res");
			var data = "{'text':'"+title+"','comment':'"+comment+"','desc':'一句话证明你在玩【九块邮】！我先来：全场九块九包邮，每天给你九块九的小幸福！','url':'"+url+"','pic':'"+pic+"'}";
			$("#like-tips #bdshare").attr("data",data);
		}
		
		var pid = $(this).data("pid");
		
		//添加内页喜欢
		ADD_USER_LIKE(pid);

		if(!$(this).hasClass("no-like")){	//已喜欢
			showlike("已喜欢！");
			likeShare(pid);
			obj.removeClass("can");
			return;
		}else{	//喜欢
			obj.attr("title","已喜欢");
			showlike("喜欢成功！");
			obj.removeClass("no-like");
			obj.parents(".like-state").find(".cur-num").html(parseInt(obj.parents(".like-state").find(".cur-num").html())+1);
			
			$.ajax({
				type:"post",
				dateType:"json",
				url:__U_WEB__+"/jiuajax",
				data:({ "action":"like","pid":pid}),
				success:function (msg) {
					obj.removeClass("can");
					likeShare(pid);
				}
			})
		}
	})
	
	var showlike = function($msg){
		$("#bbb").remove();
		$(".alert_fullbg:eq(1)").remove();
		var height_scr = $(window).scrollTop();
		var height_win = $(window).height();
		var height_div = $("#like-tips").height();
		var width_win = $(window).width();
		var width_div = $("#like-tips").width();
		$("#like-tips").css('top',(height_win-height_div)/2+height_scr+30);
		$("#like-tips").css('z-index',100009);
		$("#like-tips").css('left',(width_win-width_div)/2-60-3);
		$("#like-tips .liked").html($msg);
		$("#like-tips").show();
		$(".alert_fullbg").show();
		$(".alert_close,.alert_fullbg").click(function (){
			$(".alert_fullbg").hide();
			$("#like-tips").hide();
		});
		
	}

	$("#like-tips .go-see").click(function() {
		$(".alert_fullbg").hide();
		$("#like-tips").hide();
	});

	var likeShare = function(pid){
		$(".alert_content .sharebaidu a").mouseover(function (){
			var type = $(this).attr("class");
			var data1 = eval('(' + $(this).parents("#bdshare").attr("data") + ')');
			data1.text = data1.text.replace(data1.desc,"");
			if(type == 'bds_tsina'){
				data1.text = data1.desc + data1.text;
				var data = "{'text':'"+data1.text+"','comment':'"+data1.comment+"','desc':'"+data1.desc+"','url':'"+data1.url+"','pic':'"+data1.pic+"'}";
				$("#like-tips #bdshare").attr("data",data);
			}else{
				var data = "{'text':'"+data1.text+"','comment':'"+data1.comment+"','desc':'"+data1.desc+"','url':'"+data1.url+"','pic':'"+data1.pic+"'}";
				$("#like-tips #bdshare").attr("data",data);
			}
		});
		$(".sharebaidu a").click(function (){
			var type = $(this).attr("class");
			$.ajax({
				type:"post",
				dateType:"json",
				url:__U_WEB__+"/jiuajax",
				data:({ "action":"likeshare","pid":pid,"type":type}),
				success:function (msg) {
					var msg = eval('(' + msg + ')');
					$(".alert_fullbg").hide();
					$("#like-tips").hide();
					if(msg.status == 2001){
						var dou_now = $('.all_juandou:first').html().match(/\d+/);
						var dou_share = parseInt(dou_now) + 15;
						$('.all_juandou:first').html("卷豆："+dou_share+"个");
					}
				}
			})

		});
	}
	
	
	/**
	 * 功能:判断用户是否喜欢
	 * 时间:2013-07-01
	 * 修改人: 熊金
	 */
	CHECK_USER_LIKE = function(){
		var curpidArr =  new Array();
		var cookiepidArr = new Array();
    	var curpidLength = 0;
    	var cookiepidLength = 0 ;
    	var tmpStr = "";
    	$(".like").each(function(index,that){
    		curpidArr[index] = $(that).attr("data-pid");
    	});
    	
    	curpidLength = curpidArr.length;

    	if(curpidLength>0){
    		var tmpStr = XDTOOL.getCookie('jky_mylike');
    		if(tmpStr){
    			if (tmpStr.length>0) {
        			for(var i=0; i<curpidLength; i++ ){
        				if(tmpStr.indexOf(curpidArr[i])!=-1){
        					$(".like[data-pid='"+curpidArr[i]+"']").removeClass("no-like");
                        	$(".like[data-pid='"+curpidArr[i]+"']").attr("title","已喜欢");
        				}
        			}
        		}
    		}
    	}
		
	}

	CHECK_USER_LIKE();  //判断哪些商品被用户喜欢过 
	

	/**
	 * 功能:添加用户喜欢(存储格式:(jl_pid:jl_addtime) & (jl_pid : jl_addtime))
	 * 时间:2013-07-04
	 * 修改人: 熊金
	 */
	
	ADD_USER_LIKE = function(jlpid){
		var fulltime = new Date().getTime();
		var time = parseInt(fulltime/1000) ; //得到以秒为单位的最小时间
		var tmpStr = "";
		var likeStr = "";
		var allStr = "";

		tmpStr = XDTOOL.getCookie("jky_mylike");

		//如果不是第一次写入cookie
		if(tmpStr){
			if (tmpStr.length>0) {
    			//如果商品没有被写入cookie 
    			if(tmpStr.indexOf(jlpid)==-1){
    				likeStr = "(" + jlpid + ":" + time + ")";	
    				allStr = tmpStr + likeStr + "&";	
					XDTOOL.setCookie("jky_mylike", allStr, {
						expires: 1,
						path: "/",
						domain:".jiukuaiyou.com"
					});
    			}
    		}
        
        }else{

        	//如果是第一次写入cookie
        	likeStr = "(" + jlpid + ":" + time + ")";	
        	allStr = likeStr + "&"  ;	
        	XDTOOL.setCookie("jky_mylike",allStr, {
						expires: 1,
						path: "/",
						domain:".jiukuaiyou.com"
					});

        }
	}
	
	/**
	 *功能:取消喜欢功能框
	 *时间:2013-07-25
	 *姓名:熊金
	 * 
	 */
	$(".clearlike").live('click',function(){
		var that = this;
		var like_alert = $("#like_alert");
		var pid = like_alert.attr("data-pid");
		var likelist = $("#ulheight li .like");
		var blankbox = $("#ulheight li.box_bd_01")
		var likeobj = null;
		var likelen = 0,blanklen=0;
		var k=0; //保留补白的数量
		
		if(!confirm("确定要取消吗")){
			return false;
		}
		
		if(likelist.size()>0){
			likelen = likelist.size();
			likelist.each(function(index,that){
				if($(that).attr("data-pid")==pid){
					$(that).addClass("no-like");
					likeobj = $(that);
					clearUserLikeItem(pid); //删除喜欢商品信息
				}
			});
			
			//如果是登入状态
			if(__XD_USER__.uid){
				if($(that).data("lock")=="yes"){
					return false;
				}else{
					$(that).data("lock")=="yes";
					$.ajax({
						type:"post",
						dateType:"json",
						url:__U_WEB__+"/jiuajax",
						data:({ "action":"clearlike","pid":pid}),
						success:function (data) {
							var data = eval("("+data+")");
							var j=0;
							if(data && data.status.code=="200"){
								alert('取消成功');
								like_alert.css('display','none');
								blanklen = blankbox.size(); //原有补白个数
								j = (likelen-1)%3; //补白个数
								likeobj.parents("li").remove();
								$("#ulheight li").each(function(index,item){
									if((index+1)%3==0){
										$(item).removeClass("last").addClass("last");
									}else{
										$(item).removeClass("last");
									}
								});
								
								//如果需要补白
								if(j>0){
									blanklen>0 && blankbox.remove();
									
								}else{
									if(blanklen>0){
										blankbox.remove();
									}
								}
								//location.href = basehref;
							}else{
								alert('取消失败');
							}
							$(that).data("lock","no");
						}
					});
				}
			}
			
		}
		
	});
	
	/**
	 *功能:取消cookie中喜欢商品信息
	 *时间:2013-07-25
	 *姓名:熊金
	 * 
	 */
	function clearUserLikeItem(pid){
		var likecookie = XDTOOL.getCookie("jky_mylike");
		var likearr = [];
		var len = 0;
		var tmpstr = "";
		if(likecookie.length>0){
			if(likecookie.indexOf(pid)!=-1){
				likecookie = likecookie.replace(/&+$/,"");
				if(likecookie.indexOf("&")!=-1){
					likearr = likecookie.split("&");
				}else{
					likearr.push(likecookie);
				}

				if(likearr.length>0){
					len = likearr.length;
					for(var i=0; i<len;i++){
						if(likearr[i].indexOf(pid)!=-1){
							likearr.splice(i,1);
							break;
						}
					}
				}
				
				if(likearr.length>0){
					if(likearr.length>1){
						tmpstr = likearr.join('&')+"&";
					}else{
						tmpstr = likearr.join('&');
					}
					
				}else{
					tmpstr = "";
				}
				
				XDTOOL.setCookie("jky_mylike",tmpstr, {
					expires: 1,
					path: "/",
					domain:".jiukuaiyou.com"
				});	
			}
		}
		
	}	
})(jQuery);



$(function(){
	 //显示优惠券
    var fhover=null;
	 $(".r_jiuitem li").mouseenter(function(){
   	if($(this).find(".go_quan").size()>0){
   		var that = this;
   		fhover = setTimeout(function(){
   			$(that).find(".pic").addClass("hover");
   		},200);
   	}
   });
	$(".r_jiuitem li").mouseleave(function(){
   	if($(this).find(".go_quan").size()>0){
   		var that = this;
  			clearTimeout(fhover);
  			$(that).find(".pic").removeClass("hover");
   	}
	});
	
	//提示抢光了
	$(".go_sellout").click(function(){
		var html = '<div class="alert_content"><p class="band_weibo">很抱歉，该优惠券已被抢光了！</p><div class="exchange_btn" style="display: block;"><a href="javascript:;" class="ex_ok pay_ok">确定</a></div></div>';
		var box = new XDLightBox({
            title:'',
            lightBoxId:'juandou_exchange',
            contentHtml:html,
            scroll:true
        });
        box.init();	
		
	});

	$(".ex_ok").live('click',function(){
		$(".alert_fullbg,#juandou_exchange").remove();
		
	});
		
	
});

(function($){
	$.fn.linkAutoScroll = function(){
		var _self = $(this);
		var firstLi = $('.links_list li:first');
		var ul = $('.links_list');
		if ($('.links_list li a').size() > 12) {
			firstLi.clone().appendTo(ul);
			firstLi.animate({marginTop:"-18px"}, 800, function() {
				firstLi.remove();
			});
			setTimeout(function(){_self.linkAutoScroll()}, 5E3);
		};
	};
})(jQuery);
$("body").linkAutoScroll();

(function($) {
	//旧版提示
	$tearing_angle = $('div.tearing_angle');


	if (XDTOOL.getCookie('old') != 'close') {
		$tearing_angle.css('display','block');
	}else{
		$tearing_angle.css('display','none');
	}
	$('a.old_jiu').click(function(){
		XDTOOL.setCookie("old", 'close', {
			expires: 300,
			path: "/"
		});
	});

	$('.del').click(function(){
		XDTOOL.setCookie("old", 'close', {
			expires: 300,
			path: "/"
		});
		$tearing_angle.remove();
	});
	/**
	 * fangfang_notclear 懒加载首页的各个卖家图片，不大明白这样做的意义 start
	 * @time 2014-02-13
	 */
	//列表24个
	$('ul.goods-list').find('img').lazyload({threshold:200, failure_limit:46});
	/* fangfang_notclear 懒加载首页的各个卖家图片，不大明白这样做的意义 end*/
	//我的喜欢
	$('.jiu_bd').find('.pic img').lazyload({threshold:200, failure_limit:24});
	//右侧19.9
	$('#r_shijiu').find('li img').lazyload({threshold:100, failure_limit:6});
	//右边值得买
	$('.worth_buy_goods').find('li img').lazyload({threshold:100, failure_limit:6});
	//右边图片轮换
	$(".apply_list").find('.goods_info img').lazyload({threshold:300, failure_limit:4});
	//右边折扣
	$(".discount-info").find('.goods_info img').lazyload({threshold:100, failure_limit:5});
	//右边他们说
	$("#comment,.theysays").find('.goods_info img').lazyload({threshold:100, failure_limit:5});
	//右边折扣
	$(".zheright").find('li img').lazyload({threshold:100, failure_limit:6});
	
	//底部优汇
	$(".other-content").find('li img').lazyload({threshold:100, failure_limit:6});
	
	//内页其他关键词
	$(".double-info").find('li img').lazyload({threshold:100, failure_limit:6});
	
	
	//左边图片提示
	if (XDTOOL.getCookie('leftimg') != 'close') {
		$('.tips_goods').css('display','block');
	}
	$('.tips_goods .iknow').click(function(){
		XDTOOL.setCookie("leftimg", 'close', {
			expires: 300,
			path: "/"
		});
		$('.tips_goods').remove();
	});
	//右边提示高度活动兼容
	if($('.double_main').size() > 0){
		$('.tips_goods').css('top','708px');
	}

	//显示状态
	$('.go_sign').mouseenter(function(){
		$('.go_sign_arrow').css('display','block');
	});
	//隐藏隐藏
	$('.go_sign').mouseleave(function(){
		$('.go_sign_arrow').css('display','none');
	});


	$('.share_weibo a').live('click',function(){
		if ($(this).attr('href') == 'javascript:;') {
			$('.weibo_alert').css('display','none');	
			$(this).find('.weibo_alert').css('display','block');
		}
	})

	$('.weibo_alert').live('mouseleave',function(){
		$('.weibo_alert').css('display','none');
	})

	/** 
	 * fangfang_notfound，没有找到'.alert_record'等元素，此文件与jiu/pg-jiu.js文件内容几乎一样，
	 * 且两个文件90%以上功能皆没使用到
	 * end
	 */ 

})(jQuery);


