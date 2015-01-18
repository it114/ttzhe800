/**
 * Created with JetBrains WebStorm.
 * User: zhuleilei
 * Date: 12-9-7
 * Time: 上午8:14
 *
 */
(function($){
    /**
     * fangfang 将整个页面回到顶部的按钮功能
     * @method extend
     * @param {}
     * @time 2014-02-10
     */
    $.fn.toTop = function(){
        var bt = '<div id="back_top" class="back_top" style="display: block;"><a href="javascript:;" style="display: none;"></a></div>';
        var _self = $(this);
        c = $(window);
        if(c.width()>1024){
            _self.append(bt);
        }
        $("#back_top .call-survey").live("click",function(){
            $("body").feedbackInit();
        });
        /**
         * fangfang_notclear 这段代码重复下面的功能的意义在哪里 
         * @time: 2014-03-04
         */
        c.resize(function(){
            if(c.width()>1024){
                if($("#back_top").length<=0){
                    _self.append(bt);
                    c.scrollTop() == 0?$("#back_top").find("a").fadeOut() : $("#back_top").find("a").fadeIn();
                    b.find("a").click(function(){
                        $('.down-slide').css('top', 137);
                        $(window).scrollTop(0);
                        return false;
                    });
                }
            }else{
                if($("#back_top").length>0){
                    $("#back_top").remove();
                }
            }
        });
        $(window).scroll(function(){
            b = $("#back_top");
            if(b.length>0){
                $(window).scrollTop() == 0? b.find("a").fadeOut() : b.find("a").fadeIn();
                b.find("a").click(function(){
                    var isJkyDivUp = $('.warp-jky').attr('isup');
                    if(isJkyDivUp == 'yes'){
                        $('.jky-ico').stop(true).animate({width: '140'}, 300).siblings().animate(
                        {width: '110'}, 300); 
                    }else{
                        $('.jp-ico').stop(true).animate({width: '140'}, 300).siblings().animate(
                        {width: '110'}, 300); 
                    }                   
                    $('.down-slide').css('top', 137);
                    $(window).scrollTop(0);
                    return false;
                });
            }
        });
    };
    
	

    /**
     * 鼠标移入，出现二维码
     * Author: zhuwenfang
     * Date: 14-01-10
     * Time: AM 10:02
     * Function: when mouse hovers, showing 'the two dimensional code' div 
     **/
    var F_showTwoDimenCode = function(){
        var popImgHtml = "<div class='pop-img fl'>"
        + "<div class='jqywx fl'></div>" 
        + "<p class='tao-img fl'></p>"
        + "</div>";

        $(".kik").on("mouseenter", function(){
            if( $(".pop-img").length == 0 ){                  
                $(".follow ul li:last").append( popImgHtml ); 
            }       
        });
       
        $(".follow ul li:last").on("mouseleave", function(){
           $(".pop-img").remove();
        });
    }
    F_showTwoDimenCode();

    /**
     * 将文字信息上下滚动
     * Author: zhuwenfang
     * Date: 14-01-10
     * Time: PM 16:55
     * Function: scrolling the dom 'li' up&down 
     **/
    var liAutoScroll = function(){
        var liScrollTimer;
        var $obj = $('.links_list_box');
        $obj.hover(function(){
            clearInterval(liScrollTimer);
        }, function(){
            liScrollTimer = setInterval(function(){
                $obj.find(".links_list").animate({
                    marginTop : -20 + 'px'
                }, 500, function(){
                    $(this).css({ marginTop : "0px"}).find("li:first").appendTo(this);
                });

            }, 3000);
        }).trigger("mouseleave");

    }
    liAutoScroll();
	

    if( document.getElementById("copydiv") ){
        setTimeout(
            /**
             * 合作首页，将文字通知信息向左无缝滚动
             * Author: zhuwenfang
             * Date: 14-01-14
             * Time: PM 16:06
             * Function: scroll text to left cyclically
             **/
            function F_scrollTextToLeft(){
                var ancesdiv = document.getElementById("ancesdiv");
                var scroldiv = document.getElementById("scroldiv");
                var copydiv = document.getElementById("copydiv");
                copydiv.innerHTML = document.getElementById("scroldiv").innerHTML;
                function Marquee(){
                    if(ancesdiv.scrollLeft-copydiv.offsetWidth >= 0){
                        ancesdiv.scrollLeft-=scroldiv.offsetWidth;
                    }else{
                        ancesdiv.scrollLeft++;
                    }
                }
                var myvar=setInterval(Marquee,30);
                ancesdiv.onmouseout=function (){ myvar=setInterval(Marquee,30); }
                ancesdiv.onmouseover=function(){ clearInterval(myvar); }
            }, 1000
        );
    }

    /**
     * fangfang 此函数功能为页面向下滑动时，给左边侧标题栏增添'九块邮'图像
     * @param {}
     * @time 2014-02-12
     */ 
    var $navFun = function() {
        
        var st = $(document).scrollTop(), 
            headh = $("div.head").height(),           
            $nav_classify = $("div.jiu-side-nav");

        if(st > headh){
            $nav_classify.addClass("fixed");
        } else {
            $nav_classify.removeClass("fixed");
        }

    };

    /**
     * fangfang，绑定滚动函数
     * @param {}
     * @time 2014-02-12
     */ 
    var F_nav_scroll = function () {       
        if (!window.XMLHttpRequest) {
           return;          
        }else{
            //默认执行一次
            $navFun();
            $(window).bind("scroll", $navFun);
        }
    }
    F_nav_scroll();

    // 导航独家 end
    F_logined = function(){
        var normal = $(".login-union .normal");
        $(normal).hover(function(){
            $(this).find("em").addClass("open");
        },
        function(){
            $(this).find("em").removeClass("open");
        });
    }

    F_logined() 

})(jQuery);
$("body").toTop();