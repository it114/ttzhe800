define(function(require,exports,module){
    /**
     * fangfang_notfound 没有找到'.nav-classify'等元素
     * @param {}
     * @time 2014-02-12
     */
    F_jiu_list = function(){
        var $nav_a = $(".nav-classify li");
        var $nav_app = $nav_a.find('.tips');
        var $nav_app_close = $nav_app.find('.close');
        var F_nav = function(){
            //启动二维码 默认是不开启状态~
            
            $nav_a.find(".classify-a").JP_hoverDelay({
                hoverDuring:150,
                outDuring:0,
                hoverEvent:function () {
                    $nav_a.each(function(index, val) {
                         $(val).find("p").css("display","none");
                         $(val).find(".classify-a").removeClass("hover");
                    });
                    $(this).closest("li").find("p").css("display","block");
                    if(!$(this).closest("li").hasClass('app')) {
                        $(this).addClass("hover")
                    }else{
                        $("div.jiu-nav").css("z-index", "22");
                        $(".nav-classify li").find('.close').hide();
                    };
                    
                },
                outEvent:function () {
                    $(this).closest("li").hover(function(){},
                    function(){
                        $(this).find("p").css("display","none");
                        if(!$(this).closest("li").hasClass('app')) {
                            $(this).find(".classify-a").removeClass("hover");
                        }else{
                            $("div.jiu-nav").css("z-index", "18");
                            $(".nav-classify li").find('.close').show();
                        }; 
                    });
                }}
            );
        }
        //开启 nav ~
        F_nav();
        
    }

    /**
     * fangfang_notclear，启用列表页面的js效果，不太明白这样做的意义
     * @param {}
     * @time 2014-02-12
     */
    var F_open_jiu_list = function(){
        var addLoadEvent = function (func) {  
            var oldonload = window.onload; 
            if (typeof window.onload != 'function') {  
                window.onload = func;  
            } else {  
                window.onload = function() {  
                    oldonload();  
                    func();  
                }  
            }  
        } 
        addLoadEvent(F_jiu_list);
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
        if(navigator.userAgent.indexOf('iPad') > -1){
            return false;
        }      
        if (!window.XMLHttpRequest) {
           return;          
        }else{
            //默认执行一次
            $navFun();
            $(window).bind("scroll", $navFun);
        }
    }
    F_nav_scroll(); 



    module.exports = {
        F_open_jiu_list: F_open_jiu_list,
        F_nav_scroll: F_nav_scroll
    }
});
    
    




