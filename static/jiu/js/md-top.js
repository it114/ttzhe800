define(function(require,exports,module){
    return function(){
	 var isIE = (document.all && window.ActiveXObject && !window.opera) ? true : false;


     var searchbar = function(){
     	var $key = $("#key");
		var k = $key.data("keyword");
		if($key.val()==''){
			$key.val(k);
		};
		$key.focus(function(){
			if(!isIE){
				document.getElementById("key").removeEventListener("input",handle);
			}
			
			if($key.val()==k){
				$key.val('');
			};

		});
		$key.blur(function(){
			if($key.val()==''){
				$key.val(k);
			};
			if(!isIE){
				document.getElementById('key').addEventListener("input",handle,false);
			}
			
		});
		
		var handle = function(){
			$key.val(($key.val().replace(k,"")));	
		}
		

		if(!isIE){
				document.getElementById('key').addEventListener("input",handle,false);
			}
		
		$(".head .search_box form").submit(function(){
			if($key.val()==k||$key.val()==''){
				$key.focus();
				return false;
			};
		});
	};
	var droplist = function(){
		$("#toolbar .menu:eq(3)").hover(function(){	
			$(this).addClass("menu-hover");
		},function() {
			$(this).removeClass("menu-hover");
		});
	};
	var check_activity_tips = function(){
		if(XDTOOL.getCookie('activity_tips')!="close"){
			$(".activity_tips").show();
			XDTOOL.setCookie("activity_tips", 'close', {
            	expires: 300,
            	path: "/"
        	});
		}
	}
	

	var dropApp = function(){
	var	$applist = $("#toolbar .menu:eq(0)");
		$("#dropApp").hover(function(){
			check_activity_tips();
			$applist.addClass("menu-hover");
			$(".activity_tips").hide();
		},function() {
			$applist.removeClass("menu-hover");
		});

		$("#toolbar .menu:eq(0) .close").click(function(){
			$(".activity_tips").hide();
			XDTOOL.setCookie("activity_tips", 'close', {
            	expires: 300,
            	path: "/"
        	});
		});

		$("#toolbar .menu:eq(0) .menu-client").hover(function(){
			$applist.addClass("menu-hover");
		},function(){
			$applist.removeClass("menu-hover");
		});
	};
	var addQQshortcut = function(){
		$(".add_qq").click(function(){
			window.open('http://shuqian.qq.com/post?from=3&jumpback=2&noui=1&uri='+encodeURIComponent(document.location.href)+'&title='+encodeURIComponent(document.title),'','width=930,height=570,left=50,top=50,toolbar=no,menubar=no,location=no,scrollbars=yes,status=yes,resizable=yes');
			void(0);
		});
	}
	
	//底部微信显示
	var Show_weixin = function(){
		$('#foot_kik').unbind('mouseenter');
		//显示状态
		$('#foot_kik').mouseenter(function(){
			$('.kit-img').css('display','block');
		});
		//隐藏隐藏
		$('#foot_kik').mouseleave(function(){
			$('.kit-img').css('display','none');
		});

	}

	check_activity_tips();
	searchbar();
	droplist();
	dropApp();
	addQQshortcut();
	Show_weixin();

}	
})