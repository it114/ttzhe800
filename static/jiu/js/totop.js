;(function($){
    // 导航独家 start
    $('.dujia .dj ').on('click', function(event) {
        var duIcon = $('.dujia').hasClass('dujia1');
        var loadUrl ="";
        if(duIcon){
            loadUrl = "http://'+window.location.host+'";
        }else{
            loadUrl = "http://'+window.location.host+'";
        }
        window.location = loadUrl;
    });
    // 导航独家 end
    F_logined = function(){
        var normal = $("div.normal")[0];
        $(normal).hover(function(){
            $("div.zone-box").show();
            $(this).find("em").addClass("open");
        },
        function(){
            $("div.zone-box").hide();
            $(this).find("em").removeClass("open");
        });

        var normal_new = $("div.normal")[1];
        $(normal_new).hover(function(){
            $(this).find(".login-box").show();
            $(this).find("em").addClass("open");
        },
        function(){
            $(this).find(".login-box").hide();
            $(this).find("em").removeClass("open");
        });


    }
    F_signIn_btn = function(){
        var $signIn_btn = $("#signIn_btn.can");
        if($("#signIn_btn").find("span").html() !== "已签到"){
            $signIn_btn.on('mouseenter',function(){
                if($("#signIn_btn").find("span").html() !== "已签到"){
                    $(this).removeClass("btn").addClass("btn hover");
                    $(this).find("span").html(" +5");
                }
            }).on('mouseleave',function(){
                if($("#signIn_btn").find("span").html() !== "已签到"){
                    $(this).removeClass("btn hover").addClass("btn");
                    $(this).find("span").html("签到");
                }
            })
        }
    }
    var F_boxLight = function(){
        var oBox = document.getElementById("box");
        var aImg = oBox.getElementsByTagName("li");
        var timer = null;
        var play = null;
        var i = 0 ;
        var index = 0;  
        var oBoxBtn = document.getElementById("boxbtn");
        var aNum = oBoxBtn.getElementsByTagName("b");
        //鼠标划过关闭定时器
        oBox.onmouseover = function (){
            clearInterval(play) 
        };
        //鼠标离开启动自动播放
        oBox.onmouseout = function (){
            autoPlay()
        }; 
        //鼠标划过关闭定时器
        aNum[0].onmouseover = function (){
            clearInterval(play) 
        };

        //鼠标离开启动自动播放
        aNum[0].onmouseout = function (){
            autoPlay()
        }; 

        aNum[0].onclick = function (){
            if(aImg[0].style.opacity > .5){
                show(1);
            }else{
                show(0);
            }
        };

        //鼠标划过关闭定时器
        aNum[1].onmouseover = function (){
            clearInterval(play) 
        };

        //鼠标离开启动自动播放
        aNum[1].onmouseout = function (){
            autoPlay()
        }; 

        aNum[1].onclick = function (){
            if(aImg[0].style.opacity > .5){
                show(1);
            }else{
                show(0);
            }
        };
          
        //自动播放函数
        function autoPlay (){
            play = setInterval(function () {
            index++;
            index >= aImg.length && (index = 0);
            show(index);    
            },4300);  
        }
        //autoPlay();//应用

        //图片切换, 淡入淡出效果
        function show (a){
            index = a;
            var alpha = 0;
            clearInterval(timer);     

            for (i = 0; i < aImg.length; i++){
                aImg[i].style.opacity = 0;
                aImg[i].style.filter = "alpha(opacity=0)";  
            }

            timer = setInterval(function () {
                alpha += 1;
                alpha > 100 && (alpha =100);
                aImg[index].style.opacity = alpha / 100;
                aImg[index].style.filter = "alpha(opacity = " + alpha + ")";
                alpha == 100 && clearInterval(timer)
            },10);
        }

    }


    var $sort = $(".search_box").find(".sort");
var F_s_select = function(){

    
    var F_s_open_chanl = function(o){
        o.addClass('open');
    };
    var F_s_close_chanl = function(o){
        o.removeClass('open');
    };
    $sort.on({
        mouseover: function(){
            F_s_open_chanl($(this));
        },
        mouseout: function(){
            F_s_close_chanl($(this));
        }
    });
    $sort.find('a').on('click', function(event) {
        event.preventDefault();
        var a1 = '<span sid="1">搜本站</span><i class="cur open"></i>';
        var a2 = '<span sid="2">搜全网</span><i class="cur open"></i>';
        if ($(this).find("span").attr("sid") == 1 ){
            $sort.find('a').eq(0).html(a1);
            $sort.find('a').eq(1).html(a2).find('i').css({
                display: 'none'
            });
        }else{
            $sort.find('a').eq(0).html(a2);
            $sort.find('a').eq(1).html(a1).find('i').css({
                display: 'none'
            });
        }
        F_s_close_chanl($sort);
    });
}

var F_s = function(){
    
    

    var F_s_or = function(){

        var val = $("#key").attr("value");
        if(_.isNull(val)||val == "请输入您要找的宝贝"){
          $("#key").focus();
          return false;
        }else{
            if($sort.find('a').eq(0).find('span').attr('sid') == 1){
                window.location.href = 'http://'+window.location.host+'/?m=search&a=index&key=' + $("#key").attr("value");
                
            }else{

                var ekv = 'http://r.m.taobao.com/s?p=mm_12867605_5344726_16056733&q=' + $("#key").attr("value");
                window.open(ekv, "_blank");
                $("#search").submit(function(event) {

                    return false;
                });
                
            }
        }
    }
    $("#k").on('click', F_s_or);
    

}

/** JS Document
  * Date: 2014-1-9;
  * Author: fangfang@juanpi.com
  * Function: Pictures Scroll
  **/
var F_scroll_pics = function(){
    var sWidth = $(".slide-img").width();
    var len = $("#box li").length;
    var index = 0;
    var picsScrollTimer;

    var leftBtnClickEvt = function(){
        $(".left-cur").on("click" , function () {
            index -= 1;
            if (index == -1) { index = len - 1; }
            showPics(index);
            addOrRemoveBtnsClass();
        });
    }
    
    var rightBtnClickEvt = function(){
        $(".right-cur").on("click" , function () {
            index += 1;
            if (index == len) { index = 0; }
            showPics(index);
            addOrRemoveBtnsClass();
            
        });
    }
   

    $("#box").css("width", sWidth * (len));
    
    $(".wechat").hover(function () {
        clearInterval(picsScrollTimer);
    }, function () {
        picsScrollTimer = setInterval(function () {
            showPics(index);
            addOrRemoveBtnsClass();
            index++;
            if (index == len) { index = 0; }
        }, 1800);
    }).trigger("mouseleave");
    

    var initBtnClickEvt = function(){
        leftBtnClickEvt();
        rightBtnClickEvt();
        addRightBtnClass();
    }

    function addRightBtnClass() {
        $(".right-cur").addClass("right-unactive");
        $(".right-unactive").unbind("click");
    }

    function addLeftBtnClass(){
        $(".left-cur").addClass("left-unactive");
        $(".left-unactive").unbind("click");
    }

    

    function removeRightBtnClass(){
        $(".right-cur").removeClass("right-unactive");
        $(".right-cur").on("click" , rightBtnClickEvt());
    }

    function removeLeftBtnClass(){
        $(".left-cur").removeClass("left-unactive");
        $(".left-cur").on("click" , leftBtnClickEvt());
    }
    

    /**
      *Date: 2014-01-09
      *Function: add or remove '.btns-unactive' class when pics scrolling
      **/
    function addOrRemoveBtnsClass(){
        if(index == 0){
             addRightBtnClass();
             removeLeftBtnClass();
        }else{  
            removeRightBtnClass();           
            addLeftBtnClass();        
        }
    }
    

    function showPics(index) {
        var nowLeft = -index * sWidth;
        $("#box").stop(true, false).animate({ "left": nowLeft }, 300);
    }

    initBtnClickEvt();
}

    F_s_select();
    //F_boxLight();
    F_s();
    F_logined();
    F_signIn_btn();
    F_scroll_pics();
    
})(jQuery)


;(function(a){	
	var Globe_AddCollect = function(sURL,sTitle)
	{
		try
		{
			window.external.addFavorite(sURL,sTitle);
		}
		catch (e)
		{
			try
			{
				window.sidebar.addPanel(sTitle,sURL,"");
			}
			catch (e)
			{
				alert("加入收藏失败，请使用Ctrl+D进行添加");
			}
		}
	}
	var F_addCollect = function(){
		var href = "http://www.jiukuaiyou.com";
		var title = "九块邮";
		$(".top-nav").find("a").eq(1).on('click', function(event) {
			event.preventDefault();
			Globe_AddCollect(href,title);
		});
	}

	F_addCollect();
	
	var Globe_To_Top_Init = function() {
		var bt = '<div class="back_top" id="back_top" style="display:none"><a href="javascript:;"></a></div>';
		a('body').append(bt);
		b = a('#back_top');
		b.css('right',($(window).width()-$(".main").width())/2-80);
		if(a(window).scrollTop()!=0){
			b.css('display',"block");
		}
		$(window).resize(function(){
			b.css('right',($(window).width()-$(".main").width())/2-80);
			
		});
		a(window).scroll(function(){
			a(window).scrollTop() == 0 ? b.fadeOut() : b.fadeIn();
			b.click(function(){
				a(window).scrollTop(0);
			});
		});
	}

	//判断是否显示 手机二维码
	var jiuweixin = "";



	var Globe_Kik_Code=function(){

		if(document.body.clientWidth < 1281){
			return false;
		} 

			window.onbeforeunload=onclose;

			function onclose()
			{
			    if(event.clientX>document.body.clientWidth&&event.clientY<0||event.altKey)
			    {
			           jiuweixin = "close";//这里添加具体的处理方案
			    } 
			}


		if(u.indexOf("jiukuaiyou")!=-1){
			//if(true){
			var flag = u.indexOf("help")==-1 && u.indexOf("about")==-1 
			           && u.indexOf("iphone")==-1 && u.indexOf("android")==-1 
			           && u.indexOf("wap")==-1;
			if(flag){
				if(jiuweixin != 'close'){
					var b = '<div style="display: none; right: 0px;" class="kik_code" id="kik_code">'
							+'<a class="kik_img" target="_blank" href="/iphone"></a>'
							+'<a class="close"    href="javascript:;"></a>'
							+'</div>';
					a('body').append(b);
					$('#kik_code').css('right',10);
					document.body.clientWidth < 1366 ? a("#kik_code").fadeOut() : a("#kik_code").fadeIn();
					$(this).scrollTop() < 1014 ? a("#kik_code").hide() : a("#kik_code").fadeIn();
					 
				}
			}
			a("#kik_code .close").live('click',function(){
				 $.ajax({
						type:"post",
						dateType:"json",
						url:__U_WEB__+"/jiuajax",
						data:({ "action":"weixin"}),
						success:function (msg) {
							jiuweixin = "close"
							a("#kik_code").fadeOut();
						}
				});
				 
			});
			$(window).resize(function(){
				if (jiuweixin != 'close') {
					$('#kik_code').css('right',10);
		 			document.body.clientWidth < 1366 ? a("#kik_code").fadeOut() : a("#kik_code").fadeIn();
		 		};
		    });
		}
	}


})(jQuery);