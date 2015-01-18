define(function(require,exports,module){
	return function(){
	/**
     * fangfang_notfound 没有找到引入此js、或者是包含此js的deal.js文件的网站  start
     * @time 2014-02-13
     */	
		//分享文案修改
	$(".show_body .sharebaidu a").mouseover(function() {
		var type = $(this).attr("class");
		var data1 = eval('(' + $(this).parents("#bdshare").attr("data") + ')');
		data1.text = data1.text.replace(data1.desc,"");
		if(type == 'bds_tsina'){
			data1.text = data1.desc + data1.text;
			var data = "{'text':'"+data1.text+"','comment':'"+data1.comment+"','desc':'"+data1.desc+"','url':'"+data1.url+"','pic':'"+data1.pic+"'}";
			$(".show_body #bdshare").attr("data",data);
		}else{
			var data = "{'text':'"+data1.text+"','comment':'"+data1.comment+"','desc':'"+data1.desc+"','url':'"+data1.url+"','pic':'"+data1.pic+"'}";
			$(".show_body #bdshare").attr("data",data);
		}
	});

	//点击抢光晒单提醒
	$('#pte_shaidan').click(function(){
		$('#img_pic').show();$('.nav_title').removeClass('active');$("#comment_nav3").addClass('active');$('#i_type').val(3);
	});

	//抢光弹窗
	/*var F_buy_action = function(){
		var $buyaction = $("p.buy-action a");
		if($buyaction.hasClass("sell_out")&&($("#alert-activity-over").length <= 0)){
			var url = $buyaction.attr('href');
			//$buyaction.attr('href','javascript:void(0);');
			//$buyaction.removeAttr("target");
			if($(".keyword").length != 0){
				var url_jiu = $(".keyword").attr("href");
			}
			var content = '<p class="tips">哎哟！您来晚了，该宝贝活动已结束啦！</p><div class="activity-con"><div class="pic fl"></div><div class="detail fl"><p>您可以查看其它<a href="http://www.jiukuaiyou.com">九块九宝贝</a><br />或去淘宝<a href="'+url+'" target="_blank">直接购买>></a></p></div></div>';
			f = new XDLightBox({
		        title: "温馨提示",
		        lightBoxId: "alert-activity-over",
		        contentHtml: content,
		        scroll: true
		    });
		    _(f.init()).throttle(5000);;
		}else{
			$(window).unbind("scroll",F_buy_action);
		}
	}
	$(window).bind("scroll",F_buy_action);*/

	//留言
	$("#comment_nav1").click(function(){
		$('#page_location ul li').removeClass('active');
		$(this).parent('li').addClass('active');
		$('#img_pic').hide();
		$('#i_type').val(1);
		//$('#img_pic').hide();$('.nav_title').removeClass('active');$("#comment_nav1").addClass('active');

	});
	//咨询
	$("#comment_nav2").click(function(){
		$('#img_pic').hide();$('.nav_title').removeClass('active');$("#comment_nav2").addClass('active');$('#i_type').val(2)
	});
	//晒订单
	$("#comment_nav3").click(function(){
		$('#img_pic').show();
		$('#page_location ul li').removeClass('active');
		$(this).parent('li').addClass('active')
		//$('.nav_title').removeClass('active');$("#comment_nav3").addClass('active');
		$('#i_type').val(3);
	});
	//普通商品显示晒单
	$(".show_share_div_deal").click(function(){
		if (XDPROFILE.uid == '') {
			XD.Globe_Check_Login();
			return false;
		}

		if(isGiftItem!="0")
		{

		$("#share_goods_div").slideDown("slow");;
		location.hash="share_goods_div";
		document.getElementById("title").focus();
		}
		else
		{
			open_dialog("晒货",Dialog_txt);
		}
	});

	var xdhost = "http://"+window.location.host;
	var _Quan = {};

	//优惠券初始
	var _Coupon = function(){
		_Quan.hostarr = window.location.href.split('?');
		if ($('.go-quan').size() != 0) {
			_Quan.user = $('.go-quan').attr('quan_user');
			_Quan.bind = $('.go-quan').attr('quan_bind');
			_Quan.znid = $('.go-quan').attr('quan_znid');
			_Quan.type = $('.go-quan').attr('quan_type');
			if (_Quan.type != 'end') {
				if (_Quan.user == 'true' && _Quan.bind == 'true') {
					_Quan.click = __U_MAIN__+'/jump/'+_Quan.znid;
					$('.go-quan').attr('href',_Quan.click);
					$('.go-quan').attr('target','_blank');

					if (XDTOOL.getCookie('deal_weibo') == 'ok') {
						XDTOOL.setCookie("deal_weibo", '', {
							expires: true,
							path: "/"
				    	});
						window.location = _Quan.click;
					}
				}
			}
			if (window.location.search == '?login' && _Quan.user == 'false') {
				XD.user_handsome_login_init();
           		XD.user_handsome_login();
           		XDTOOL.setCookie("login_redirect", 'go', {
					expires: true,
					path: "/",
					domain:".jiukuaiyou.com"
		    	});
			}else if (window.location.search == '?weibo' && _Quan.bind == 'false') {
				var html = '<div id="juandou_exchange" class="alert_bg"><div id="weibo" class="alert_box">'
				+'<div class="alert_top"><span>请先绑定微博</span><a href="javascript:;" class="alert_close"></a></div>'
				+'<div class="alert_content"><p class="choice_band">您可以选择绑定：</p>'
				+'<div class="weibo_type"><a title="QQ登录" target="_blank" href="'+__U_MAIN__+'/connect/signin/qq" class="l_qqweibo"></a>'
				+'<span>或</span><a title="新浪微博" target="_blank" href="'+__U_MAIN__+'/connect/signin/sina" class="l_sina"></a>'
				+'</div><p class="tips_txt">Tips:绑定成功后即可领取优惠券</p></div></div></div>';
				$('.jiu_goodsinfo').append(html);
				return false;
			}
		}
	}
	_Coupon();

	/**
	 *
	 * 登入后自动跳转到优惠券页面
	 *
	 */
	function redirectQuan(){
		if(window.location.search == '?login'){
			if(XDTOOL.getCookie('login_redirect')=='go' && XDPROFILE.uid ){
				var  goquan = $(".go-quan ");
				if(goquan){
					var redirectHref = goquan.attr('href');
					var quan_type = goquan.attr('quan_type');
					if( quan_type=="buy"){
						XDTOOL.setCookie("login_redirect", '', {
							expires: false,
							path: "/",
							domain:".jiukuaiyou.com"
				    	});
						window.location = redirectHref;
					}
				}
			}
		}
	}
	redirectQuan();

	$('.weibo_type a').live('click',function(){
		$('#juandou_exchange').remove();
		var text = $(this).attr('title');
		var html = '<div id="juandou_exchange" class="alert_bg"><div class="alert_box"><div class="alert_top"><span>请先绑定微博</span><a href="javascript:;" class="alert_close"></a></div><div class="alert_content"><p class="band_weibo">您正在绑定:'+text+'</p><div style="display: block;" class="exchange_btn"><a id="ex_ok_isweibo" class="ex_ok"  href="javascript:;">完成绑定</a><a class="ex_exit" href="javascript:;">取消</a></div></div></div></div>';
		$('.jiu_goodsinfo').append(html);

		XDTOOL.setCookie("deal_weibo", 'ok', {
			expires: true,
			path: "/"
    	});
	});

    $('#weibo .alert_close').live('click',function(){
		window.location = _Quan.hostarr[0];
	});

	//关闭确定按钮
	$('.ex_ok').live('click',function(){
		window.location = _Quan.hostarr[0];
	});

	//商品评论
	$('#pub_content').click(function(){
		XD.Globe_Check_Login();
		if($('#pub_content').val()=='你也可以顺便说点什么 O(∩_∩)O'){
			$('#pub_content').val('');
		};

	});
	$('#pub_content').focusout(function(){

		if($('#pub_content').val()==''){
			$('#pub_content').val('你也可以顺便说点什么 O(∩_∩)O');
		};

	});

	//显示即将和抢购技巧
	$('.price_tag').mouseenter(function(){
		$('.wait_buy').css('display','block');

	});
	//隐藏即将和抢购技巧
	$('.price_tag').mouseleave(function(){
		$('.wait_buy').css('display','none');
	});

   //点击回复
    XD.Tweet_Comment_Reply_Init = function() {
        $(".com-list").find(".sms").find(".reply").live("click",
        function() {
            var b = $(this).parents(".com-big").find(".pub-txt");
			window.location.hash="jiu_comment";
            //兼容item页面
            if (typeof b.val() == 'undefined') {
                b = $(this).parents(".note_comment_warp").find(".pub_txt");
            }

			$('#img_pic').hide();$('.nav_title').removeClass('active');$("#comment_nav1").addClass('active');$('#i_type').val(1)


			if(typeof b.val() == 'undefined')
			{
				b = $(".pub_area").find(".pub_txt");
			}

            var d = $(this).parents("li");
            var c = d.find(".name").text();
            $("input[name='touid']").val($(this).attr('touid'));

            //被回复的用户名

            var e = b.val();

            if (e == '' || e == '你也可以顺便说点什么 O(∩_∩)O') {
                e = "回复@" + c + ": ";
            } else if (e.indexOf("回复@") == -1) {
                e = "回复@" + c + ": " + e;
            } else {
                e = e.replace(/@\S+?\:/, "@" + c + ":");
            }
            b.val(e);
            if (b[0].createTextRange) {
                d = b[0].createTextRange();
                d.moveEnd("character", b.val().length);
                d.moveStart("character", b.val().length);
                d.select();
            } else {
                b[0].setSelectionRange(b.val().length, b.val().length);
                b.focus();
            }
        })
    };

    var loading= '<div class="verifi-code fr" id="loding"><img  style="margin-top:-13px;" src="'+__U_STATIC__+'/img/icon/loading.gif" alt=""/></div>';
	var $verifyHtml = '<div class="verifi-code fr" id="verifi-code"><span>验证码：</span><input type="text"   height="20" tabindex="2" maxlength="4" size="10" id="verify" class="security_input" name="verify"><span id="ico" style="display:none;" class="tips_right"></span><a title="换一张" id="standardCode" href="javascript:;" class="change_code"><img id="standardCode_img" src="'+__U_WEB__+'/public/verify" class="change_code_img" /></a>';
	var verifyflag = false;
	var verfiytime = null;

	$("#verify").live('blur',function(){
		var that = this;
		$(that).val() && $("#standardCode").die('click');
		verfiytime = setTimeout(function(){
			checkVerify(that);
		},500);

	});



	function checkVerify(obj){
		var that = obj;
		var verify =$(that).val();
		if(verify!=""){
			$("#standardCode").die('click');
			$.ajax({
				type:"post",
				dateType:"json",
				url:xdhost+'/jiuajax/verify',
				data:{'action':'verify','verify':verify},
				success:function (data) {
					var data = eval("("+data +")");
					if(data.status.code==200){
						$('#ico').removeClass().addClass('tips_right').css('display','block');
						$("#pub_submit").trigger("click");
						verifyflag = true;
					}else{
						$('#ico').removeClass().addClass('tips_wrong').css('display','block');
						$("#standardCode").live('click',function(){
							$("#standardCode_img").attr('src',__U_WEB__+"/public/verify?t="+Math.random());
						});
						verifyflag = false;

					}
				}
			});
		}else{
			 verifyflag = false;
		}

		return true;
	}

	//提交评论
	$('#pub_submit').click(function(){

		if (XDPROFILE.uid == '') {
			XD.Globe_Check_Login();
			return false;
		}

		if ($('#pub_submit').attr('status') == 'not') {
			return false;
		}
		clearTimeout(verfiytime);
		if($("#i_type").val()==3)
		{
			if($(".begin_buy").html()=="开抢提醒"){
				//alert("宝贝预告中，等开抢后再来晒吧！");
				//return false;
			}
		}
		var picArray = XD.FX_Shuo_Pic_Array;
		var that = $('#pub_submit');
		var i_type = $("#i_type").val()?$("#i_type").val():1;

		var text = $('#pub_content').val();
		if (text == '') {
			alert("请输入评论内容");
		}else if(XDTOOL.getMsgLength(text) > 140){
			alert("评论内容超过140个字了。");
		}else if(text == '你也可以顺便说点什么 O(∩_∩)O'){
			alert("请输入评论内容");
		}else if($("#i_type").val()==3 && picArray==''){
			alert("上传订单截图才有可信度哦!")
		}else{
			$('#pub_submit').attr('status','not');
			var verifyobj = $("#verify");
			if(verifyobj.size()>0){
				$(that).data('clicknum','next');
				var verify = verifyobj.val();
				if(verify==""){
					alert('验证码不能为空');
					verifyobj.focus();
					$('#pub_submit').attr('status','ok');
					return false ;
				}
			}else{
				$(that).data('clicknum','first');
			}
			var postarr = {
				'gid':$('.show_body').data('gid'),
				'uid':XDPROFILE.uid,
                'touid':$("input[name='touid']").val(),
				'comment':text,
				'verify':verify
			};


			var url = ($("#i_type").val()==3) ? "shareajax/PostOder":"jiuajax";
			verifyobj.size()==0 && $(that).after(loading);
			$(that).html('提交中…');
			$.ajax({
				type:"post",
				dateType:"json",
				url:xdhost+'/deal/postComment',
				data:{'action':'item_comment','post':postarr,'picArray':picArray,'i_type':i_type},
				success:function (data) {
					//var data = eval("("+data+")");
					if(data.code=='405'){
						alert(data.msg);
						window.location.href = "http://user.juanpi.com/login/logout";
					}else if(data.code=='403'){
						if($("#loding").size()>0) $('#loding').remove();
						$(that).after($verifyHtml);
						setTimeout(function(){
							$('#pub_submit').attr('status','ok');
						},500);

					}else if(data.code=='200'){

						var comment_html = '<li><a target="_blank" href="http://www.jiukuaiyou.com/u/'+XDPROFILE.uid+'" class="header"><img src="'+XDPROFILE.face+'_34x34.jpg" class="uinfo" alt="'+XDPROFILE.username+'"></a><a class="name" target="_blank" href="http://www.jiukuaiyou.com/u/'+XDPROFILE.uid+'">'+XDPROFILE.username+'</a><p class="sms"><span class="con">：'+data.msg.comment+'</span><span class="time">('+data.msg.addtime+')</span><a href="javascript:;" class="reply">回复</a></p></li>';
						XD.FX_Shuo_Pic_Array = new Array();
						if($('#note_comment_list  .tuijian').size()>0){
							$('#note_comment_list  .tuijian').after(comment_html);
						}else{
							$('#note_comment_list').prepend(comment_html);
						}

						$('#pub_content').val('');
						$('#pub_content').html('');
						alert("评论成功");
						$('#pub_submit').attr('status','ok');
						$('.pub_img_box').html("");
					}else{
						alert(data.msg);
						$('#pub_submit').attr('status','ok');
					}
					$("#pub_submit").html('确定');
					if($("#loding").size()>0) $('#loding').remove();
					$("#ico").css('display','none');
					$("#standardCode").live('click',function(){
						$("#standardCode_img").attr('src',__U_WEB__+"/public/verify?t="+Math.random());
					});
					if($("#verify").size()>0 && data.code=='200' && $(that).data('clicknum')=="next"){
						$("#verifi-code").remove();

					}else if($("#verify").size()>0){
						$("#standardCode").get(0).click();
						$("#verify").focus();
						$("#verify").val("");
					}
				}
			});
		}
	});

	$("#pub_content").val("你也可以顺便说点什么 O(∩_∩)O");
	XD.Tweet_Comment_Reply_Init()//回复


	$(document).ready(function(){
		if (XDPROFILE.uid != '' && document.location.hash == '#page_location') {
			$("#pub_content").val("");
			$('#pub_content').focus();
		}
        $("#i_type").val("1");  //评论翻页时描点设定
        $(".page-last a").on('click',function(event){
            var  href = $(this).attr('href') +'#jiu_comment';
            window.location.href = href;
            event.preventDefault();
        });


	})

	}
	/* fangfang_notfound 没有找到引入此js、或者是包含此js的deal.js文件的网站  end */
})
	