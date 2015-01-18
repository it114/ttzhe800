define(function(require,exports,module){
	var F_item_tip = function(){
		$("p.buy-action").find("a").hover(function() {
			$(this).closest("p").find('.quan-tips').show();
		}, function() {
			$(this).closest("p").find('.quan-tips').hide();
		});
	}

	module.exports = {
		//移入显示优惠劵
        F_item_tip: F_item_tip
    }
});