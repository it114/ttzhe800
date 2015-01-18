;(function(a){
    var logstr ='<div class="other-links fr">'+
                    '<span class="other-login">'+
                    '<a  href="'FTXIAER.root +'/beans" class="my-jd"><i class="jd-icon"></i>我的卷豆</a>'+
                    '</span>'+
                    '<span class="sign signIn_div">'+
                    '<a id="point" href="javascript:;" class="btn"><i></i><span class="qdao">已签到</span></a>'+
                    '<div style="display: none;" class="box-sign" id="">'+
                    '<p class="juandou"><label>卷豆：</label><span class="dou"></span></p>'+
                    '<p><a href="'FTXIAER.root +'/juandou/task" class="visit">赚卷豆&gt;&gt;</a></p></div>'+
                    '</span>'+
                '</div>'+
                '<div class="other-links other-fanli fr">'+
                    '<span class="other-login">'+
                    '<a href="'FTXIAER.root +'/rebate" class="my-fanli"><i class="fl-icon"></i>我的返利</a>'+
                    '</span>'+
                '</div>'+
                '<ul class="login-union login-union-two fr">'+
                    '<div class="normal">'+
                        '<a class="normal-a" href="'FTXIAER.root +'"><img class="mb_avt" src="'FTXIAER.root +'[HEADPIC]_20x20.jpg"><span class="name-r">[NICK]</span>'+
                        '<em class="masegge" style="display: none">[MSG_NUM]</em><em class="cur"></em>'+
                        '</a>'+
                        '<div class="login-box zone-box" style="display: none;">'+
                            '<ul>'+
                            '<li><a href="'FTXIAER.root +'/message"><i class="icon-04"></i><span>我的消息</span></a></li>'+
                            '<li><a href="'FTXIAER.root +'/setting"><i class="icon-06"></i><span>账号设置</span></a></li>'+
                            '<li class="nobr"><a class="exit" href="'FTXIAER.root +'/login/logout"><i class="icon-07"></i><span>退出</span></a></li>'+
                            '</ul>'+
                        '</div>'+
                    '</div>'+
                '</ul>';
    funcLoginBefore = function(){
        var fl = '<div class="other-links fr">'+
                        '<span class="other-login">'+
                            '<a href="'FTXIAER.root +'/login">登录</a>/<a href="'FTXIAER.root +'/register">注册</a>'+
                        '</span>'+
                        '<span class="sign signIn_div">'+
                            '<a id="point" href="javascript:;" class="btn02"><i></i><span class="qdao">签到</span></a>'+
                        ' </span>'+
                 '</div>'+
                    '<ul class="login-union fr">'+
                        '<li class="noml"><a target="_blank" href="'FTXIAER.root +'/login/connect/type/sina"><i class="icon-weibo"></i><span>微博登录</span></a></li>'+
                        '<li><a target="_blank" href="'FTXIAER.root +'/login/connect/type/qq"><i class="icon-qq"></i><span>QQ登录</span></a></li>'+
                        '<li><a href="'FTXIAER.root +'/login/connect/type/taobao"><i class="icon-taobao"></i><span>淘宝登录</span></a></li>'+
                    '</ul>';
     	$('#userlogin').html(fl);
    };
    var msgNum = 0;
    funcLoginAfter = function(){
        var pic = __XD_USER__.pic;
        var default_pic = "/face/default.jpg";
        var fpic= XDTOOL.empty(pic)?default_pic:pic;
        var nick = __XD_USER__.nick;
        var uid = __XD_USER__.uid;
        //var msgcount = 0;
        if(nick.length > 10){
           nick = nick.substr(0, 10)+"…";
        }
        var floginstr = logstr.replace(/\[HEADPIC\]/g,fpic).replace(/\[NICK\]/g,nick).replace(/\[MSG_NUM\]/g,msgNum);
        /*if(msgcount==0){
            floginstr = floginstr.replace(/\[MESSAGE\]/,'');
        }*/

        a('#userlogin').html(floginstr);

        if(!XDTOOL.empty(__XD_USER__.uid)){
            var shareurl = __URL_JUANPI__+'/u/'+__XD_USER__.uid;
            a("#info_show .myshare").attr("href",shareurl);
        }
    };
    /**
     * fangfang 用户消息评论页面，点击切换菜单的同时异步刷新数据
     * @time 2014-02-19
     */
    funcSharePull = function(){
        var allNum = 0,
            atNum = 0,
            cmtNum = 0,
            lastiid = "",
            g = null;
        var numAjax = function(){
            if (a("#zone_tab").size()){
                if (a("#zone_tab .zt_f").eq(0).hasClass("c")) lastiid = a(".t_l .t_f").eq(0).attr("tid");
            }
            a.getJSON(
                __URL_JUANPI__+"/shareajax?callback=?",{action:"ajaxSharenum",args:{lastiid:lastiid}},
                function(data) {
                    if (data){
                        if (null != data.status.code && data.status.code == 1001){
                            allNum = parseInt(data.result.allNum);
                            atNum = parseInt(data.result.atNum);
                            cmtNum = parseInt(data.result.cmtNum);
                            shareNumChange(allNum,atNum,cmtNum);
                            if (allNum > 20) return false;
                            clearTimeout(g);
                            g = setTimeout(numAjax,60E3);
                        }
                    }
                }
            )
        };
        var shareNumChange = function(allNum,atNum,cmtNum){
            var addNum = function(obj,num){
                if (num != 0) {
                    if (obj.find("sup").size()){
                        obj.find("sup em").text(num);
                    }else{
                        obj.append('<sup><em>' + num + '</em><i></i></sup>');
                    }
                }
            };
            var sum = 0,
                tip = "";

            if (allNum > 20) {
                allNum = 20 ;
                tip = "+";
            }
            sum = allNum + tip;
            if (location.href.indexOf("/share") != -1){
                if (a("#zone_tab .zt_f").eq(0).hasClass("c") && allNum){
                    if (a("#wb_new_messages").size()){
                        a("#wb_new_messages a").html("有" + allNum + tip + "条新分享，点此刷新");
                    }else{
                        var str = '<div class="wb_new_messages" id="wb_new_messages"><a class="blu" href="/share/me">有';
                        str += allNum + tip +'条新分享，点此刷新...</a></div>';
                        a("#zone_tab").after(str);
                    }
                }
                if (a("#zone_tab").size()){
                    a("#zone_tab .zt_f").each(function(index){
                        var _sel = a(this);;
                        if (_sel.find("a").text() == "@我的"){
                            addNum(_sel,atNum);
                        }else if(_sel.find("a").text() == "评论我的"){
                            addNum(_sel,cmtNum);
                        }
                    });
                }
            }

        };
        g = setTimeout(numAjax,2E3);
    };

    funcInit = function(){

        if (__XD_USER__.uid == "" ||__XD_USER__.uid == "101010"){
            funcLoginBefore();
        }
        else {
            funcLoginAfter();
            $.getJSON(__URL_MEMBER__ + "/Public/unmessage?callback=?", function(data) {
                /*if(typeof(data) != "undefined " && data != 0 ){
                    $('.normal-a span ').after('<em class="masegge">'+data+'</em>');
                }*/
                if(typeof(data) != "undefined " && data != 0 ){
                    $('.normal-a .masegge ').show();
                    $('.normal-a .masegge ').html(data);
                    $('.normal-a').attr("href",__URL_MEMBER__+'/message');
                }
            });
        }
    };
    funcInit();
    
    /**
     * fangfang 用户页面，用户名及签到的下拉框移入/移出效果
     * @time 2014-02-19
     */
    $('.u_info').live('mouseover', function() {
        $(".personal-box").show();
    });
    $('.u_info').live('mouseout', function() {
        $(".personal-box").hide();
    });
    $('.login-union .normal').live('mouseover', function() {
        $(".login-union .zone-box").show();
    });
    $('.login-union .normal').live('mouseout', function() {
        $(".login-union .zone-box").hide();
    });
    $('.signIn_div').live('mouseover', function() {
        $(".signIn_div .box-sign").show();
    });
    $('.signIn_div').live('mouseout', function() {
        $(".signIn_div .box-sign").hide();
    });
    $('.signIn_div .box-sign').live('mouseover', function() {
        $(".signIn_div .box-sign").show();
    });
    $('.signIn_div .box-sign').live('mouseout', function() {
        $(".signIn_div .box-sign").hide();
    });



    /**
     * fangfang 卷皮首页签到领卷豆默认加载时js的请求
     * param {}
     * @time 2014-02-19
     */
    $(document).ready(function(){
        var box = $("#point_box");
        var uid = XDPROFILE.uid;

        if (uid == ""){
            $("#point .qdao").html('签到');
            return false;
        }

        $.getJSON(FTXIAER.root + "/point/pointLoadJson?uid="+uid+"&callback=?", function(json) {
            if(json.code == 1001){
                $("#point").removeClass("btn02");
                $("#point").addClass("btn");
                $("#point .qdao").html('已签到');
            } else {
                $("#point").removeClass("btn");
                $("#point").addClass("btn02");
                $("#point .qdao").html('签到');
            }
            $(".box-sign .juandou .dou").html(json.data);
            $(".juandou .num").html(json.data);
        });
    });


    //签到领卷豆
    $("#point").live('click', function(){
        var btn = $(this);
        //验证是否登录
        if (XDPROFILE.uid == "") return X