(function($){
    XDLightBox = function(k) {
        c = $;
        var a = this,
        f = null,
        d = c.extend({
            title: "",
            lightBoxId: "",
            ajax: false,
            contentHtml: "",
            scroll: false,
            isBgClickClose: true,
            type: "default"
        },
        k),
        b = null,
        i = null,
        h = null,
        j = function() {
            return (document.documentElement.scrollTop || document.body.scrollTop) + ((document.documentElement.clientHeight || document.body.clientHeight) - b.height()) / 2
        };
        a.getBoxFrame = function() {
            return b
        };
        a.getFrameId = function() {
            return d.lightBoxId
        };
        a.getBackground = function() {
            return h
        };
        a.close = function() {
            f && f.abort();
            b.remove();
            h.remove();
            c("body").unbind("keydown")
        };
        a.resize = function() {
            var a = (c(window).width() - b.width()) / 2,
            g = j();
            i.css({
                width: b.width(),
                height: b.height()
            });
            c.browser.msie && c.browser.version == "6.0" && h.css("height", document.documentElement.clientHeight || document.body.clientHeight);
            d.scroll ? c.browser.msie && c.browser.version == "6.0" ? (b.css({
                left: a,
                top: g
            }).show(), c(window).scroll(function() {
                var a = j();
                b.css("top", a)
            })) : (g = ((document.documentElement.clientHeight || document.body.clientHeight) - b.height()) / 2, b.css({
                left: a,
                top: g,
                position: "fixed"
            }).show()) : b.css({
                left: a,
                top: g
            }).show()
        };
        a.init = function() {
            if (d.lightBoxId != "") {
                if (d.type == "default") var e = XDTEMPLATE.lightBox.replace(/{title}/g, d.title).replace(/{id}/g, d.lightBoxId);
                e = d.ajax ? e.replace(/{body}/g, "") : e.replace(/{body}/g, d.contentHtml);
                c("body").append('<div class="alert_fullbg"></div>'+e);
                b = c("#" + d.lightBoxId);
                i = c(".lb_fix");
                h = c(".alert_fullbg");
                d.ajax && a.loading();
                a.resize();
                c(window).resize(function() {
                    a.resize()
                });
                c(".alert_close").click(function() {
                    a.close()
                });
                c(".alert_fullbg").click(function() {
                    d.isBgClickClose && a.close()
                })
            }
        };
        a.fadeout = function() {
            f && 
            f.abort();
            b.fadeOut(500);
            h.fadeOut(500, 
            function() {
                a.close()
            })
        };
        a.startAjax = function(a) {
            f = a
        };
        a.buildContent = function(e) {
            var g = false;
            b.find(".alert_content").size() == 0 && (b.find(".alert_box").html('<div class="alert_top"><span>' + d.title + '</span><a href="javascript:;" class="alert_close" ></a></div><div class="alert_content"></div>'), g = true);
            b.find(".alert_content").html(e);
            g && c("#" + d.lightBoxId + " .alert_close").click(function() {
                a.close()
            });
            a.resize()
        };
        a.success = function(e) {
            e = '<div class="alert_suc"><em></em><span>{text}</span><a href="javascript:;" class="close alert_close"></a></div>'.replace(/{text}/, 
            e);
            b.find(".lb_hd").hide();
            b.find(".alert_box").html(e);
            a.resize();
            b.find(".alert_bbg .alert_close").click(function() {
                a.close()
            });
            setTimeout(function() {
                a.fadeout()
            },
            1E3)
        };
        a.success_close = function(e, c) {
            var d = '<div class="lb_nohd"><a href="javascript:;" class="lb_close"></a><div class="lb_s">{text}</div></div>'.replace(/{text}/, e);
            b.find(".content").html(d);
            b.find(".lb_hd").hide();
            a.resize();
            b.find(".lb_nohd .lb_close").click(function() {
                a.close()
            });
            setTimeout(function() {
                a.close()
            },
            c || 1E3)
        };
        a.fail = function(c, 
        d) {
            var f = '<div class="lb_nohd"><a href="javascript:;" class="lb_close"></a><div class="lb_f">{text}</div></div>'.replace(/{text}/, c);
            b.find(".content").html(f);
            b.find(".lb_hd").hide();
            a.resize();
            b.find(".lb_nohd .lb_close").click(function() {
                a.close()
            });
            setTimeout(function() {
                a.close()
            },
            d || 2E3)
        };
        a.loading = function(c) {
            c || (c = "请稍后");
            b.find(".alert_box").html('<div class="alert_loading"><img src="'+__U_STATIC__+'/img/icon/loading.gif" /><span>{text}......</span><a href="javascript:;" class="alert_close">取消</a></div>'.replace(/{text}/, 
            c));
            a.resize()
        }
    }


})(jQuery)

;(function(a,b){var c=a(b);a.fn.lazyload=function(d){function h(){var b=0;e.each(function(){var c=a(this);if(g.skip_invisible&&!c.is(":visible"))return;if(!a.abovethetop(this,g)&&!a.leftofbegin(this,g))if(!a.belowthefold(this,g)&&!a.rightoffold(this,g))c.trigger("appear");else if(++b>g.failure_limit)return!1})}var e=this,f,g={threshold:0,failure_limit:0,event:"scroll",effect:"show",container:b,data_attribute:"d-src",skip_invisible:!0,appear:null,load:null};return d&&(undefined!==d.failurelimit&&(d.failure_limit=d.failurelimit,delete d.failurelimit),undefined!==d.effectspeed&&(d.effect_speed=d.effectspeed,delete d.effectspeed),a.extend(g,d)),f=g.container===undefined||g.container===b?c:a(g.container),0===g.event.indexOf("scroll")&&f.bind(g.event,function(a){return h()}),this.each(function(){var b=this,c=a(b);b.loaded=!1,c.one("appear",function(){if(!this.loaded){if(g.appear){var d=e.length;g.appear.call(b,d,g)}a("<img />").bind("load",function(){c.hide().attr("src",c.attr(g.data_attribute))[g.effect](g.effect_speed),b.loaded=!0;var d=a.grep(e,function(a){return!a.loaded});e=a(d);if(g.load){var f=e.length;g.load.call(b,f,g)}}).attr("src",c.attr(g.data_attribute))}}),0!==g.event.indexOf("scroll")&&c.bind(g.event,function(a){b.loaded||c.trigger("appear")})}),c.bind("resize",function(a){h()}),h(),this},a.belowthefold=function(d,e){var f;return e.container===undefined||e.container===b?f=c.height()+c.scrollTop():f=a(e.container).offset().top+a(e.container).height(),f<=a(d).offset().top-e.threshold},a.rightoffold=function(d,e){var f;return e.container===undefined||e.container===b?f=c.width()+c.scrollLeft():f=a(e.container).offset().left+a(e.container).width(),f<=a(d).offset().left-e.threshold},a.abovethetop=function(d,e){var f;return e.container===undefined||e.container===b?f=c.scrollTop():f=a(e.container).offset().top,f>=a(d).offset().top+e.threshold+a(d).height()},a.leftofbegin=function(d,e){var f;return e.container===undefined||e.container===b?f=c.scrollLeft():f=a(e.container).offset().left,f>=a(d).offset().left+e.threshold+a(d).width()},a.inviewport=function(b,c){return!a.rightofscreen(b,c)&&!a.leftofscreen(b,c)&&!a.belowthefold(b,c)&&!a.abovethetop(b,c)},a.extend(a.expr[":"],{"below-the-fold":function(b){return a.belowthefold(b,{threshold:0})},"above-the-top":function(b){return!a.belowthefold(b,{threshold:0})},"right-of-screen":function(b){return a.rightoffold(b,{threshold:0})},"left-of-screen":function(b){return!a.rightoffold(b,{threshold:0})},"in-viewport":function(b){return!a.inviewport(b,{threshold:0})},"above-the-fold":function(b){return!a.belowthefold(b,{threshold:0})},"right-of-fold":function(b){return a.rightoffold(b,{threshold:0})},"left-of-fold":function(b){return!a.rightoffold(b,{threshold:0})}})})(jQuery,window)
