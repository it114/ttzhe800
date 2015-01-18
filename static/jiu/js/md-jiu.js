define(function(require,exports,module){
return function(){
	
	/**
	 * fangfang，点击举报，弹出举报框，填入信息并提交，start
	 * @param {}
	 * @time 2014-02-11
	 */
	//显示举报框
	$('.report').click(function(){
		var offsetpos = $(this).parentsUntil('.pic').offset();

		if ($('#alert_report').size() != 0) {
			$('#alert_report').remove();
		};
		var left = parseInt($(window).width()-offsetpos.left)/2;

		var title = $(this).attr('title');
		var	inform_html = '<div id="alert_report" class="alert_bg" > <div class="alert_box"> <div class="alert_top"> <span class="iconimg"></span> <span>举报</span> <a class="alert_close" href="javascript:;"></a> </div> <div class="alert_content"> <div class="l_c_l"> <form name="inform" id="inform" target="_self" method="post"> 商品名称：<font class="bloak">{title}</font><br /> 举报原因：<select name="reportAn" id="reportAn" class="selectClass">   <option value="请选择">请选择</option>   <option value="1">商品价格大于10元</option>   <option value="2">商品已下架</option>   <option value="3">商品不包邮</option>   <option value="4">商品要求两件起拍，一件不发货。</option>   <option value="5">卖家拒绝发货</option>   <option value="6">商品价格与活动价格不符合</option>   <option value="7">商品分类错误</option>   <option value="99">其它原因</option> </select> <br /> <label class="other" style="display:none">其它原因： <input type="text" name="otherReasons" class="text" id="otherReasons"/><br/></label> <input type="hidden" name="inform_znid" value="{znid}" id="znid"/> <input class="smt" type="submit" tabindex="3" value="提 交" /> </form> </div> </div> <div class="bottom">注：为保证您的合法权益，请如实填写您所遇到的情况。</div> </div> </div>';
		inform_html = inform_html.replace(/{title}/,title)
		.replace(/{znid}/,$(this).attr('znid'))
		.replace(/{href}/,window.location.pathname)
		.replace(/{search}/,window.location.search)
		$('.main').after(inform_html);
		box_report = new XDLightBox({
	        title:'试用',
	        lightBoxId:'alert_report',
	        contentHtml:inform_html,
	        scroll:true
	    });
	    box_report.init();

	    /**
	     * fangfang 商品内页，举报选择项下拉框是否选择最后一项(即val为8)，显示或隐藏'.other'即其他原因输入框
	     * @time 2014-02-17
	     */
	    $("#reportAn").on('change', function() {
	    	if($(this).val()==99) {
	        	$(".other").show();
	     	} else {
	        	$(".other").hide();
	     	}
	    });	
	});

	//选择举报理由
	


	$("#inform").live('submit',function(){
		var znid = $('#znid').attr('value');
		var rid = $("[name='reportAn']").val();
 		$.ajax({
			type:"post",
			dateType:"json",
			url:__U_WEB__+"/jiuajax",
			data:({ "action":'inform', "rid":rid,'znid':znid}),
			success:function (data) {
				var data = eval("(" + data + ")");
				alert(data.status.msg);
				box_report.close();
			}
		});
		return false;
	});
	/* fangfang，点击举报，弹出举报框，填入信息并提交，end */	


	/**
     * fangfang_obsolete，没有找到包含'.goods_img'等的页面，初步判定此函数功能为商品信息在鼠标
       移入/移出时的样式效果
     * @param {}
     * @time 2014-02-11
     */
	var rightSays = function (){
		//显示说说
		var goods_info;
		var state_title = false;
		var goods_info_obj;
       	$('.goods_img').mouseenter(function(){
       		goods_info = $(this).parents('.goods_info');
//	    	rightSays_mouseenter();


	    });
	    $('.goods_img').mouseleave(function(){
	    	goods_info_obj = $(this).parents('.goods_info');

	    });

	    $('.title_price').mouseenter(function(){
	    	clearTimeout(state_title);
       		goods_info = $(this).parents('.goods_info');
//	    	rightSays_mouseenter();

       		show_title = setTimeout(function(){rightSays_mouseenter(goods_info)},200);
	    });
	    $('.title_price').mouseleave(function(){
	    	goods_info = $(this).parents('.goods_info');
//	    	rightSays_mouseleave(goods_info);
			clearTimeout(show_title);
	    	state_title = setTimeout(function(){rightSays_mouseleave(goods_info)},100);
	    });


		var rightSays_mouseenter = function(goods_info){
			$(".goods_info").removeClass(' hover-info');
	        $(".us_say").find('.title').css('display','none');
	        $(".us_say").find('.price').css('display','block');
	        $(".goods_info").find('.comments').css('display','block');

			$(goods_info).removeClass(' hover-info');
	        $(goods_info).addClass(' hover-info');
	        $(goods_info).find('.comments').css('display','none');
	        $(goods_info).find('.title').css('display','block');
	        $(goods_info).find('.price').css('display','block');
		}
		var rightSays_mouseleave = function(goods_info){
			$(goods_info).removeClass('hover-info');
			$(goods_info).find('.comments').css('display','block');
	        $(goods_info).find('.title').css('display','block');
	        $(goods_info).find('.price').css('display','block');
		}
	}
	rightSays();

	/**
     * fangfang_obsolete，应为最初的微信二维码显示功能函数，并且现在的页面没有'.weixinmouse'
     * @param {}
     * @time 2014-02-11
     */
	$(".weixinmouse").bind("mousemove",function(){
		$(".weixin_img").css('display',"block");
	});
	$(".weixinmouse").bind("mouseout",function(){
		$(".weixin_img").css('display',"none");
	});

	/**
     * fangfang_notfound，没有找到'#stateid'及'#orderid'
     * @param {}
     * @time 2014-02-11
     */
	//显示状态
	$('#stateid').mouseenter(function(){
		$(this).addClass('hover');
	});
	$('#stateid').mouseleave(function(){
		$(this).removeClass('hover');
	});

	$('#orderid').mouseenter(function(){
		$(this).addClass('hover');
	});

	$('#orderid').mouseleave(function(){
		$(this).removeClass('hover');
	});



/**
 * fangfang_obsolete，此函数没有地方加载它，且没有找到'.white_dh'等元素
 * @param {}
 * @time 2014-02-11
 */
function fold_ie6_hide() {

	if(document.body.clientWidth < 1282){
		return false;
	}

	//默认设置小图标
		if (XDTOOL.getCookie("fold")=="open") {
		$('.white_dh #fold').attr('class','filter-fold');
	}else{
		$('.white_dh #fold').attr('class','filter-unfold');
	}
	flag = true;
	// 计算导航展开 关闭小图标
	$(window).resize(function(){
		$('.white_dh #fold').css('left',($(window).width()-$(".main").width())/2-34);
	});
	$(window).bind("scroll",function() {
		if ($('.double_main').size() == 1) {
			var temp = '528';
		}else if($('#zhifubao').size() == 1){
			var temp = '249';
		}else{
			var temp = '159';
		}
		//判断往下滚
		if (flag == true && $(document).scrollTop() > temp) {
			$('.white_dh #fold').css('left',($(window).width()-$(".main").width())/2-34);
			$('.white_dh #fold').css('display','block');
			flag = false;
			$('.bar_line').css('display','block');
			if (XDTOOL.getCookie("fold")=="open") {
				$('.daohang').css({'position':'fixed', 'top':'0px', 'margin-top':'0px'});
			} else {
				$('.white_dh #fold').attr('class','filter-unfold');
			}
		}

		if (flag == false && $(document).scrollTop() <= temp) {
			flag = true;
			$('.daohang').css('position','');
			$('.white_dh #fold').css('display','none');
			$('.bar_line').css('display','none');
		}
	});
	//收起
	$('.filter-fold').live('click',function(){
		$('.daohang').css('position','static');
		$('.white_dh #fold').attr('class','filter-unfold');
		XDTOOL.setCookie("fold", 'close', {
			expires: 300,
			path: "/"
    	});
	});
	//展开
	$('.filter-unfold').live('click',function(){
		$('.daohang').css({'position':'fixed', 'top':'0px', 'margin-top':'0px'});
		$('.white_dh #fold').attr('class','filter-fold');
		XDTOOL.setCookie("fold", 'open', {
			expires: 300,
			path: "/"
    	});
	});

}


//fold_ie6_hide();


	var goods_box = null;
	var tag_wait_fun = null,tag_wait_hide_fun = null;
	var z = null;
	/**
	 * fangfang_notfound，没有找到'.buy_content'等元素，start
	 * @param {}
	 * @time 2014-02-11
	 */
	//显示即将开始提示clearTimeout
	$('.buy_content .btn').mouseenter(function(){
		if ($(this).closest('.buy_content').find('.wait_quan').size() == 0 && $(this).closest('.buy_content').find('.wait_buy').size() != 0) {
			goods_box = $(this).closest('.buy_content').parents('.goods_box');
			tag_wait_fun = setTimeout(tag_wait,300);
		}
	});
	//隐藏即将开始提示
	$('.buy_content .btn').mouseleave(function(){
		if ($(this).closest('.buy_content').find('.wait_quan').size() == 0 && $(this).closest('.buy_content').find('.wait_buy').size() != 0) {
			clearTimeout(tag_wait_fun);
			$(goods_box).css('z-index',z);
			tag_wait_hide_fun = setTimeout(tag_wait_hide,600);
		}
	});
	var tag_wait_hide = function(){
		$(goods_box).find('.wait_buy').attr('style','display:none');
	}


	var tag_wait = function(){
		z = $(goods_box).css('z-index');
		$(goods_box).css('z-index','16');
		$(goods_box).find('.wait_buy').attr('style','display:inline');
	}
	/* fangfang_notfound，没有找到'.buy_content'等元素，end */

	/**
	 * fangfang_notfound，没有找到'.goods_box'等元素，start
	 * @param {}
	 * @time 2014-02-11
	 */
	$('.goods_box').mouseenter(function(){
		$(this).find('.buy_ed').attr('style','display:inline');
	});

	$('.goods_box').mouseleave(function(){
		$(this).find('.buy_ed').attr('style','display:none');
	});
	/* fangfang_notfound，没有找到'.goods_box'等元素，end */


	/**
	 * fangfang 初步判定此函数功能为，当电脑类型为ipad时，将'.pingban'添加到页面上，并设置cookie，点击关闭可隐藏'.pingban'
	 * @param {}
	 * @time 2014-02-11
	 */
	var ua = navigator.userAgent.toLowerCase();
	if (ua.match(/iPad/i) == "ipad") {
		if (XDTOOL.getCookie('ipad') != 'ok' &&  window.location.href == "http://www.jiukuaiyou.com/") {
			var inform_html = '<div class="pingban"><div class="jky_logo"></div><div class="jky_txt"><p class="top_p">把九块邮添加到主屏幕</p><p class="bottom_p">请点击工具栏上的<em class="plus"></em>或者<em class="plus_jia"></em>并选择"添加到主屏幕"便于直接访问。</p></div><a href="javascript:;"class="delete"></a></div>';
			$('.head').before(inform_html);
			$('.pingban').css('display','block');
		}
	}
	//关闭Ipad
	$('.delete').click(function(){
		XDTOOL.setCookie("ipad", 'ok', {
			expires: 300,
			path: "/"
    	});
		$('.pingban').css('display','none');
	});

	/**
	 * fangfang 页面底部文字的上下滚动，此功能从jiu/pg-jiu.js文件里迁入 start
	 * @param {}
	 * @time 2014-02-13
	 */
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
	/* fangfang 页面底部文字的上下滚动，此功能从pg-jiu.js文件里迁入 end */

}
})







