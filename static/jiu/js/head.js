;(function(a){ 
    /**
     * fangfang，用户访问统计Cookie共享
     * @param {}
     * @time 2014-02-11
     */ 
    if(!XDTOOL.empty(XDTOOL.getCookie("_Qt")) && XDTOOL.empty(XDTOOL.getCookie("_QM")) ){
        var _Qt = XDTOOL.getCookie('_Qt');
        $.getJSON(__U_JUANPI__+"/landcookie.php?callback=?",
            {qt:_Qt},
            function(data){
                if(data.code==1001){
                    var cookieobj = {expires:365,path:'/',domain:".jiukuaiyou.com"};
                    XDTOOL.setCookie("_QM",1,cookieobj);
                }
            });
    }
    if(!XDTOOL.empty(__XD_USER__.uid)&&(XDTOOL.empty(XDTOOL.getCookie("c_login"))||XDTOOL.getCookie("c_login")=='0')){
        var uid = XDPROFILE.uid;
        $.getJSON(__U_JUANPI__+"/logincookie?callback=?",
            {uid:__XD_USER__.uid,pic:__XD_USER__.pic,nick:__XD_USER__.nick,sign:__XD_USER__.sign,exp:XDTOOL.getCookie("s_exp")},function(data){
                if(data.code==1001){
                    var cookieobj = {expires:0,path:'/',domain:".jiukuaiyou.com"};
                    XDTOOL.setCookie("c_login",1,cookieobj);
                }
            });
    }

    /**
     * 当页面加载时，立即显示已登录的用户名及卷豆数量
     * Author: zhuwenfang
     * Date: 14-01-13
     * Time: AM 9:03
     * Function: when page is downloading, instantly execute 'checkUserIsLogin'
     **/ 
    var checkUserIsLogin = function(){
        if(XDTOOL.getMsgLength(__XD_USER__.nick) > 4){
            var u_name = XDTOOL.jsMbSubstr(__XD_USER__.nick,4)+"...";
        }else{
            var u_name = __XD_USER__.nick;
        }
       var login_card =
           '<p class="other-links fr">'
               + '<span>|</span>'
               + '<span>'
               + '<a href="http://hezuo.juanpi.com/" target="_blank">卖家报名</a>'
               + '</span>'
               + '</p>'
               + '<div class="login-ed fr"><div class="normal"><a href="'+__URL_MEMBER__+'" target="_blank" class="nor-a"><span>' + u_name + '</span><em class="cur"></em></a>'
           + '<div style="display:none;" class="login-box zone-box">'
           + ' <ul>'
           + '<li><a href="'+__URL_MEMBER__+'/beans/index/type/try" target="_blank"><i class="icon-04"></i><span>我的试用</span></a></li>'
           + '<li><a href="'+__URL_MEMBER__+'/setting" target="_blank"><i class="icon-06"></i><span>账号设置</span></a></li>'
           + '<li><a href="'+__URL_MEMBER__+'/login/logout" class="exit" ><i class="icon-07"></i><span>退出</span></a></li>'
           + '</ul>'
           + '</div>'
           + '</div>'
           + '</div>'
           + '<p class="fr">Hi~欢迎登录九块邮</p>';
        var qiandao_card =
            '<p><label>卷豆：</label><span class="dou">0</span><i class="icon-dou"></i></p>'
            +'<p><a href="__URL_JUANPI__/juandou" target="_blank" class="exchange">卷豆商城>></a></p>'
            +'<p><a href="__URL_MEMBER__/invite" target="_blank" class="visit">邀请得卷豆</a></p>';
        $('.box-sign').html(qiandao_card);
        $('#userlogin').html(login_card);

    }
    var F_checkUserIsLogin = function(){
      if(XDTOOL.getMsgLength(__XD_USER__.uid) >0){
        checkUserIsLogin();
      }
    }
    F_checkUserIsLogin();
    if(XDTOOL.getMsgLength(__XD_USER__.sign) > 0){
          $('#signIn_btn').html("<i></i><span>签到</span>");
        }else{
          $('#signIn_btn').html("<i></i><span>签到</span>");
        }

    
})(jQuery);
