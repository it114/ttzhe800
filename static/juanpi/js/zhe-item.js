define(function(require,exports,module){
	return function(){

    /**
     * fangfang_notclear 此函数在其他地方没有被引用到
     * @time 2014-02-17
     */
	//json对象转换成json串
	var Obj2str = function(o) { 
        if (o == undefined) { 
            return ""; 
        } 
        var r = []; 
        if (typeof o == "string") return "\"" + o.replace(/([\"\\])/g, "\\$1").replace(/(\n)/g, "\\n").replace(/(\r)/g, "\\r").replace(/(\t)/g, "\\t") + "\""; 
        if (typeof o == "object") { 
            if (!o.sort) { 
                for (var i in o) 
                    r.push("\"" + i + "\":" + Obj2str(o[i])); 
                r = "{" + r.join() + "}" 
            } else { 
                for (var i = 0; i < o.length; i++) 
                    r.push(Obj2str(o[i])) 
                r = "[" + r.join() + "]"; 
            } 
            return r; 
        } 
        return o.toString().replace(/\"\:/g, '":""'); 
    }
	
	
    //举报 弹框
    XD.JUBAO = function (e) {
        if (XDPROFILE.uid == "") {
            XD.user_handsome_login_init();
            XD.user_handsome_login();
        } else {
            $("#otherReasons").val("");
            $(".other").hide();
            $("#reportAn ").get(0).selectedIndex=0;
            $("#report_title").html($(e).attr("title"));
            $("#report_title").attr("re",$(e).attr("re"));
            $('.alert_bg').show();
            $('.alert_fullbg').show();
            $("#alert_report").css({   // 定位浮层  
                top: (($(window).height() - $("#alert_report").height())/2),  
                left: ($(window).width() - $("#alert_report").width())/2  
            });  
        }
    };
    /**
     * fangfang 商品内页，用户撰写评论的输入框'#pub_content'
     * @time 2014-02-17
     */
    $("#pub_content").focus(function(){
         var content =  $("#pub_content").val();
         if(content == '抢沙发~'){
             $("#pub_content").val('');
         }
     });
    $("#pub_content").blur(function(){
        var content =  $("#pub_content").val();
        if(content == ''){
            $("#pub_content").val('抢沙发~');
        }
    });
    /**
     * fangfang 商品内页，举报选择项下拉框是否选择最后一项(即val为8)，显示或隐藏'.other'即其他原因输入框
     * @time 2014-02-17
     */
    $("#reportAn").change( function() {
     if($(this).val()==8) {
        $(".other").show();
     } else {
        $(".other").hide();
     }
    });
	//ajax发送举报内容到后台
    XD.JUBAO_SMT = function () {
        data = {
            'action':"reportPost",
            'iid':$("#report_title").attr("re"),
            'rtype':$("#reportAn").val(),
            'demo':$("#otherReasons").val()
        };
        var demo = data['demo'].replace(/\s/g,"");
        if(data['rtype']==0) {
            alert("请选择举报理由");
        }else if(data['rtype'] == 8 && demo == ""){
            alert("请填写其它原因");
        }else if(demo.length > 140){
            alert('请在140字以内说明理由');
        }else{
            $.ajax({
                url: "/shareajax",
                type: "POST",
                timeout: 6E4,
                data: data,
                dataType: "json",
                success: function(re) {
                    alert(re.status.msg);
                    $('.alert_bg').hide();
                    $('.alert_fullbg').hide();
                }
            });
        }
        
    };
	
}	
});