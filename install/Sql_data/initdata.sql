SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `ftxia_ad` (
  `id` int(5) NOT NULL auto_increment,
  `board_id` smallint(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `extimg` varchar(255) NOT NULL,
  `extval` varchar(200) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL default '0',
  `add_time` int(10) NOT NULL default '0',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

INSERT INTO `ftxia_ad` (`id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status`) VALUES
(1, 3, 'text', '关于我们', 'index.php?m=help&a=read&id=1', '关于我们', '', '', '关于我们', 1387555200, 1450627200, 0, 0, 1, 1),
(4, 2, 'text', '商家合作', 'index.php?m=help&a=read&id=4', '商家合作', '', '', '商家合作', 1387555200, 1450627200, 0, 0, 4, 1),
(3, 2, 'text', '免责声明', 'index.php?m=help&a=read&id=3', '免责声明', '', '', '免责声明', 1387555200, 1513785600, 0, 0, 3, 1),
(5, 4, 'code', '女装', '', '<li   ><div  class="list-good buy todayDb "  ><a href="http://item.taobao.com/item.htm?spm=a1z10.3.w4002-6692007488.20.zrlqBe&id=40740524079" target="_blank"><img  src="http://gw3.alicdn.com/bao/uploaded/i2/TB1PrjsFVXXXXcaXFXXXXXXXXXX_!!0-item_pic.jpg_220x220.jpg" alt="2014最新秋冬欧洲站修身显瘦双排扣中长款呢外套女式羊毛呢外套" border="0" class="good-pic"/></a><span class="brand_new"></span><h5 class="good-title"><a target="_blank" href="/index.php?m=index&a=cate&cid=1" class="fl">【女装】</a>             <a target="_blank" href="http://item.taobao.com/item.htm?spm=a1z10.3.w4002-6692007488.20.zrlqBe&id=40740524079" class="title">2014最新秋冬欧洲站修身显瘦双排扣中长款呢外套女式羊毛呢外套</a></h5><div class="title-tips"><span class="into"></span><div class="like-state">						<div class="like-num">							<dl class="J_scrollUp" style="top: 0px;">								<dd class="cur-num">5415</dd>								<dd class="add-num">+1</dd>							</dl>						</div>						<a title="喜欢" data-pid="35052" class="like" href="javascript:;"><em></em></a>	  </div>	</div><div class="good-price"><span class="price-current"><em>￥</em>399.0</span><span class="des-other"><span class="discount">销量：5415</span>	</span><div class="btn buy"><a href="http://item.taobao.com/item.htm?spm=a1z10.3.w4002-6692007488.20.zrlqBe&id=40740524079" target="_blank"><em class="icon tao-n"></em><span>去抢购</span></a></div></div><div class="pic-des"><div class="des-state"><div class="share"><a class="sina" href="http://v.t.sina.com.cn/share/share.php?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35052&title=2014最新秋冬欧洲站修身显瘦双排扣中长款呢外套女式羊毛呢外套,亲们注意了： 本款为呢大衣 清新保暖两不误~将小清新进行到底！由于实体店面销量第一， 本款的跟风、冒牌者非常猖獗！ 不仅价格高低不齐，质量更加无法保证！亲们一定要擦亮眼睛，千万不要买到“价格实惠”、“虚标羊毛含量”的“假羊毛”啦！&pic=http://gw3.alicdn.com/bao/uploaded/i2/TB1PrjsFVXXXXcaXFXXXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到新浪微博"></a><a class="qqwb" href="http://share.v.t.qq.com/index.php?c=share&a=index&url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35052&title=2014最新秋冬欧洲站修身显瘦双排扣中长款呢外套女式羊毛呢外套,亲们注意了： 本款为呢大衣 清新保暖两不误~将小清新进行到底！由于实体店面销量第一， 本款的跟风、冒牌者非常猖獗！ 不仅价格高低不齐，质量更加无法保证！亲们一定要擦亮眼睛，千万不要买到“价格实惠”、“虚标羊毛含量”的“假羊毛”啦！&pic=http://gw3.alicdn.com/bao/uploaded/i2/TB1PrjsFVXXXXcaXFXXXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到腾讯微博"></a><a class="kaixin" href="http://www.kaixin001.com/rest/records.php?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35052&style=11&content=2014最新秋冬欧洲站修身显瘦双排扣中长款呢外套女式羊毛呢外套,亲们注意了： 本款为呢大衣 清新保暖两不误~将小清新进行到底！由于实体店面销量第一， 本款的跟风、冒牌者非常猖獗！ 不仅价格高低不齐，质量更加无法保证！亲们一定要擦亮眼睛，千万不要买到“价格实惠”、“虚标羊毛含量”的“假羊毛”啦！&pic=http://gw3.alicdn.com/bao/uploaded/i2/TB1PrjsFVXXXXcaXFXXXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到开心网"></a>	<a class="douban" href="http://www.douban.com/recommend/?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35052&title=2014最新秋冬欧洲站修身显瘦双排扣中长款呢外套女式羊毛呢外套,亲们注意了： 本款为呢大衣 清新保暖两不误~将小清新进行到底！由于实体店面销量第一， 本款的跟风、冒牌者非常猖獗！ 不仅价格高低不齐，质量更加无法保证！亲们一定要擦亮眼睛，千万不要买到“价格实惠”、“虚标羊毛含量”的“假羊毛”啦！&image=http://gw3.alicdn.com/bao/uploaded/i2/TB1PrjsFVXXXXcaXFXXXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到豆瓣网"></a>	  <a class="qzong" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35052&desc=2014最新秋冬欧洲站修身显瘦双排扣中长款呢外套女式羊毛呢外套&summary=正在促销活动中6.7折后399.0元，截止：2014年12月03日，赶快去看看吧！&title=亲们注意了： 本款为呢大衣 清新保暖两不误~将小清新进行到底！由于实体店面销量第一， 本款的跟风、冒牌者非常猖獗！ 不仅价格高低不齐，质量更加无法保证！亲们一定要擦亮眼睛，千万不要买到“价格实惠”、“虚标羊毛含量”的“假羊毛”啦！&site=http://www.16iu.com&pics=http://gw3.alicdn.com/bao/uploaded/i2/TB1PrjsFVXXXXcaXFXXXXXXXXXX_!!0-item_pic.jpg&style=203&width=98&height=22&otype=share" target="_blank" title="分享到QQ空间"></a></div><span class="state-time fl">开始：2014-08-27 00:59</span><a title="2014最新秋冬欧洲站修身显瘦双排扣中长款呢外套女式羊毛呢外套" class="buy_ed fr " style="display:block;" znid="35052" href="javascript:;">举报</a></div></div></div></li>', '', '', '', 1409068800, 1417017600, 0, 0, 255, 1),
(6, 4, 'code', '玩具', '', '<li   >\r\n<div  class="list-good buy todayDb "  >\r\n<a href="http://item.taobao.com/item.htm?spm=a1z10.3.w4023-1660951523.4.ABL4Hz&id=25137384456" target="_blank">\r\n<img  src="http://gw2.alicdn.com/bao/uploaded/i2/1087032144/T2CKCYXuVXXXXXXXXX_!!1087032144.jpg_220x220.jpg" alt="贝嘟嘟灵动4G故事机宝宝婴幼儿童mp3早教机可充电可下载免费试用" class="good-pic"/>\r\n</a>\r\n<span class="brand_new"></span><h5 class="good-title">\r\n<a target="_blank" href="/index.php?m=index&a=cate&cid=17" class="fl">【母婴】</a>             \r\n<a target="_blank" href="http://item.taobao.com/item.htm?spm=a1z10.3.w4023-1660951523.4.ABL4Hz&id=25137384456" class="title">贝嘟嘟灵动4G故事机宝宝婴幼儿童mp3早教机可充电可下载免费试用</a>\r\n</h5>\r\n<div class="title-tips">\r\n<span class="into"></span>\r\n<div class="like-state">\r\n						<div class="like-num">\r\n							<dl class="J_scrollUp" style="top: 0px;">\r\n								<dd class="cur-num">3541</dd>\r\n								<dd class="add-num">+1</dd>\r\n							</dl>\r\n						</div>\r\n						<a title="喜欢" data-pid="35053" class="like" href="javascript:;"><em></em></a>\r\n					</div>\r\n				</div>\r\n<div class="good-price">\r\n<span class="price-current"><em>￥</em>128.0</span>\r\n<span class="des-other">\r\n<span class="discount">销量：3541</span>	\r\n</span>\r\n<div class="btn buy">\r\n<a href="http://item.taobao.com/item.htm?spm=a1z10.3.w4023-1660951523.4.ABL4Hz&id=25137384456" target="_blank">\r\n<em class="icon tao-n"></em><span>去抢购</span></a> \r\n</div>\r\n</div>\r\n<div class="pic-des">\r\n<div class="des-state">\r\n<div class="share">\r\n<a class="sina" href="http://v.t.sina.com.cn/share/share.php?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35053&title=贝嘟嘟灵动4G故事机宝宝婴幼儿童mp3早教机可充电可下载免费试用,儿童启蒙贝嘟嘟早教故事机 灵动4G 老客户免费试用，2014年5月26日8点开始，6个月内在本店消费满50元的老客户才有资格领取，先到先得，领完即止。领取成功后，卖家将包邮并免费提供试用品给客户，试用品无需返还，请到试用个人中心提交试用报告，帮助其他消费者更好的选购。&pic=http://gw2.alicdn.com/bao/uploaded/i2/1087032144/T2CKCYXuVXXXXXXXXX_!!1087032144.jpg" target="_blank" title="分享到新浪微博"></a>\r\n<a class="qqwb" href="http://share.v.t.qq.com/index.php?c=share&a=index&url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35053&title=贝嘟嘟灵动4G故事机宝宝婴幼儿童mp3早教机可充电可下载免费试用,儿童启蒙贝嘟嘟早教故事机 灵动4G 老客户免费试用，2014年5月26日8点开始，6个月内在本店消费满50元的老客户才有资格领取，先到先得，领完即止。领取成功后，卖家将包邮并免费提供试用品给客户，试用品无需返还，请到试用个人中心提交试用报告，帮助其他消费者更好的选购。&pic=http://gw2.alicdn.com/bao/uploaded/i2/1087032144/T2CKCYXuVXXXXXXXXX_!!1087032144.jpg" target="_blank" title="分享到腾讯微博"></a>\r\n<a class="kaixin" href="http://www.kaixin001.com/rest/records.php?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35053&style=11&content=贝嘟嘟灵动4G故事机宝宝婴幼儿童mp3早教机可充电可下载免费试用,儿童启蒙贝嘟嘟早教故事机 灵动4G 老客户免费试用，2014年5月26日8点开始，6个月内在本店消费满50元的老客户才有资格领取，先到先得，领完即止。领取成功后，卖家将包邮并免费提供试用品给客户，试用品无需返还，请到试用个人中心提交试用报告，帮助其他消费者更好的选购。&pic=http://gw2.alicdn.com/bao/uploaded/i2/1087032144/T2CKCYXuVXXXXXXXXX_!!1087032144.jpg" target="_blank" title="分享到开心网"></a>	\r\n<a class="douban" href="http://www.douban.com/recommend/?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35053&title=贝嘟嘟灵动4G故事机宝宝婴幼儿童mp3早教机可充电可下载免费试用,儿童启蒙贝嘟嘟早教故事机 灵动4G 老客户免费试用，2014年5月26日8点开始，6个月内在本店消费满50元的老客户才有资格领取，先到先得，领完即止。领取成功后，卖家将包邮并免费提供试用品给客户，试用品无需返还，请到试用个人中心提交试用报告，帮助其他消费者更好的选购。&image=http://gw2.alicdn.com/bao/uploaded/i2/1087032144/T2CKCYXuVXXXXXXXXX_!!1087032144.jpg" target="_blank" title="分享到豆瓣网"></a>	  \r\n<a class="qzong" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35053&desc=贝嘟嘟灵动4G故事机宝宝婴幼儿童mp3早教机可充电可下载免费试用&summary=正在促销活动中3.3折后128.0元，截止：2023年09月03日，赶快去看看吧！&title=儿童启蒙贝嘟嘟早教故事机 灵动4G 老客户免费试用，2014年5月26日8点开始，6个月内在本店消费满50元的老客户才有资格领取，先到先得，领完即止。领取成功后，卖家将包邮并免费提供试用品给客户，试用品无需返还，请到试用个人中心提交试用报告，帮助其他消费者更好的选购。&site=http://www.16iu.com&pics=http://gw2.alicdn.com/bao/uploaded/i2/1087032144/T2CKCYXuVXXXXXXXXX_!!1087032144.jpg&style=203&width=98&height=22&otype=share" target="_blank" title="分享到QQ空间"></a>\r\n</div>\r\n<span class="state-time fl">开始：2014-08-27 01:23</span>\r\n\r\n<a title="贝嘟嘟灵动4G故事机宝宝婴幼儿童mp3早教机可充电可下载免费试用" class="buy_ed fr " style="display:block;" znid="35053" href="javascript:;">举报</a>\r\n</div>\r\n</div>\r\n</div>\r\n</li>', '', '', '', 1409068800, 1629993600, 0, 0, 255, 1),
(7, 4, 'code', '汽车', '', '<li   >\r\n<div  class="list-good buy todayDb "  >\r\n<a href="http://item.taobao.com/item.htm?spm=a1z10.3.w4002-5791262293.21.2u4Kq7&id=38898497122" target="_blank">\r\n<img  src="http://gw2.alicdn.com/bao/uploaded/i3/T1JcGCFuBjXXXXXXXX_!!0-item_pic.jpg_220x220.jpg" alt="大众朗逸 POLO 速腾新宝来 途观CC 郎行新捷达 真皮方向盘套 把套" class="good-pic"/>\r\n</a>\r\n<span class="brand_new"></span><h5 class="good-title">\r\n<a target="_blank" href="/index.php?m=index&a=cate&cid=16" class="fl">【汽车】</a>             \r\n<a target="_blank" href="http://item.taobao.com/item.htm?spm=a1z10.3.w4002-5791262293.21.2u4Kq7&id=38898497122" class="title">大众朗逸 POLO 速腾新宝来 途观CC 郎行新捷达 真皮方向盘套 把套</a>\r\n</h5>\r\n<div class="title-tips">\r\n<span class="into"></span>\r\n<div class="like-state">\r\n						<div class="like-num">\r\n							<dl class="J_scrollUp" style="top: 0px;">\r\n								<dd class="cur-num">4566</dd>\r\n								<dd class="add-num">+1</dd>\r\n							</dl>\r\n						</div>\r\n						<a title="喜欢" data-pid="35051" class="like" href="javascript:;"><em></em></a>\r\n					</div>\r\n				</div>\r\n<div class="good-price">\r\n<span class="price-current"><em>￥</em>46.0</span>\r\n<span class="des-other">\r\n<span class="discount">销量：4566</span>	\r\n</span>\r\n<div class="btn buy">\r\n<a href="http://item.taobao.com/item.htm?spm=a1z10.3.w4002-5791262293.21.2u4Kq7&id=38898497122" target="_blank">\r\n<em class="icon tao-n"></em><span>去抢购</span></a> \r\n</div>\r\n</div>\r\n<div class="pic-des">\r\n<div class="des-state">\r\n<div class="share">\r\n<a class="sina" href="http://v.t.sina.com.cn/share/share.php?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35051&title=大众朗逸 POLO 速腾新宝来 途观CC 郎行新捷达 真皮方向盘套 把套,新品上市亏本冲量，实付白胶（46）RMB 硅胶（66）RMB 沃安车品承诺：15天内接受退货（不影响2次销售）。质保1年，接受1年内出现任何质量问题磨破磨坏包换。真正信得过的质量才敢于承诺。别家敢做此承诺吗？此价格仅限5天每天限50条先到先得。亲们拍起来  大众车主的福音如果&pic=http://gw2.alicdn.com/bao/uploaded/i3/T1JcGCFuBjXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到新浪微博"></a>\r\n<a class="qqwb" href="http://share.v.t.qq.com/index.php?c=share&a=index&url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35051&title=大众朗逸 POLO 速腾新宝来 途观CC 郎行新捷达 真皮方向盘套 把套,新品上市亏本冲量，实付白胶（46）RMB 硅胶（66）RMB 沃安车品承诺：15天内接受退货（不影响2次销售）。质保1年，接受1年内出现任何质量问题磨破磨坏包换。真正信得过的质量才敢于承诺。别家敢做此承诺吗？此价格仅限5天每天限50条先到先得。亲们拍起来  大众车主的福音如果&pic=http://gw2.alicdn.com/bao/uploaded/i3/T1JcGCFuBjXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到腾讯微博"></a>\r\n<a class="kaixin" href="http://www.kaixin001.com/rest/records.php?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35051&style=11&content=大众朗逸 POLO 速腾新宝来 途观CC 郎行新捷达 真皮方向盘套 把套,新品上市亏本冲量，实付白胶（46）RMB 硅胶（66）RMB 沃安车品承诺：15天内接受退货（不影响2次销售）。质保1年，接受1年内出现任何质量问题磨破磨坏包换。真正信得过的质量才敢于承诺。别家敢做此承诺吗？此价格仅限5天每天限50条先到先得。亲们拍起来  大众车主的福音如果&pic=http://gw2.alicdn.com/bao/uploaded/i3/T1JcGCFuBjXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到开心网"></a>	\r\n<a class="douban" href="http://www.douban.com/recommend/?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35051&title=大众朗逸 POLO 速腾新宝来 途观CC 郎行新捷达 真皮方向盘套 把套,新品上市亏本冲量，实付白胶（46）RMB 硅胶（66）RMB 沃安车品承诺：15天内接受退货（不影响2次销售）。质保1年，接受1年内出现任何质量问题磨破磨坏包换。真正信得过的质量才敢于承诺。别家敢做此承诺吗？此价格仅限5天每天限50条先到先得。亲们拍起来  大众车主的福音如果&image=http://gw2.alicdn.com/bao/uploaded/i3/T1JcGCFuBjXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到豆瓣网"></a>	  \r\n<a class="qzong" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35051&desc=大众朗逸 POLO 速腾新宝来 途观CC 郎行新捷达 真皮方向盘套 把套&summary=正在促销活动中8.2折后46.0元，截止：2014年12月03日，赶快去看看吧！&title=新品上市亏本冲量，实付白胶（46）RMB 硅胶（66）RMB 沃安车品承诺：15天内接受退货（不影响2次销售）。质保1年，接受1年内出现任何质量问题磨破磨坏包换。真正信得过的质量才敢于承诺。别家敢做此承诺吗？此价格仅限5天每天限50条先到先得。亲们拍起来  大众车主的福音如果&site=http://www.16iu.com&pics=http://gw2.alicdn.com/bao/uploaded/i3/T1JcGCFuBjXXXXXXXX_!!0-item_pic.jpg&style=203&width=98&height=22&otype=share" target="_blank" title="分享到QQ空间"></a>\r\n</div>\r\n<span class="state-time fl">开始：2014-08-27 00:59</span>\r\n\r\n<a title="大众朗逸 POLO 速腾新宝来 途观CC 郎行新捷达 真皮方向盘套 把套" class="buy_ed fr " style="display:block;" znid="35051" href="javascript:;">举报</a>\r\n</div>\r\n</div>\r\n</div>\r\n</li>', '', '', '', 1409068800, 1417017600, 0, 0, 255, 1),
(8, 4, 'code', '童装', '', '<li   >\r\n<div  class="list-good buy todayDb "  >\r\n<a href="http://item.taobao.com/item.htm?_u=q1dft0tb135&id=40136778733" target="_blank">\r\n<img  src="http://gw2.alicdn.com/bao/uploaded/i4/TB1Rv86FVXXXXc_XpXXXXXXXXXX_!!0-item_pic.jpg_220x220.jpg" alt="3条包邮【天使妞妞】女童2014秋冬全棉加厚毛圈磨毛弹力打底裤" class="good-pic"/>\r\n</a>\r\n<span class="brand_new"></span><h5 class="good-title">\r\n<a target="_blank" href="/index.php?m=index&a=cate&cid=22" class="fl">【童装】</a>             \r\n<a target="_blank" href="http://item.taobao.com/item.htm?_u=q1dft0tb135&id=40136778733" class="title">3条包邮【天使妞妞】女童2014秋冬全棉加厚毛圈磨毛弹力打底裤</a>\r\n</h5>\r\n<div class="title-tips">\r\n<span class="into"></span>\r\n<div class="like-state">\r\n						<div class="like-num">\r\n							<dl class="J_scrollUp" style="top: 0px;">\r\n								<dd class="cur-num">6774</dd>\r\n								<dd class="add-num">+1</dd>\r\n							</dl>\r\n						</div>\r\n						<a title="喜欢" data-pid="35050" class="like" href="javascript:;"><em></em></a>\r\n					</div>\r\n				</div>\r\n<div class="good-price">\r\n<span class="price-current"><em>￥</em>31.5</span>\r\n<span class="des-other">\r\n<span class="discount">销量：6774</span>	\r\n</span>\r\n<div class="btn buy">\r\n<a href="http://item.taobao.com/item.htm?_u=q1dft0tb135&id=40136778733" target="_blank">\r\n<em class="icon tao-n"></em><span>去抢购</span></a> \r\n</div>\r\n</div>\r\n<div class="pic-des">\r\n<div class="des-state">\r\n<div class="share">\r\n<a class="sina" href="http://v.t.sina.com.cn/share/share.php?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35050&title=3条包邮【天使妞妞】女童2014秋冬全棉加厚毛圈磨毛弹力打底裤,加粉丝，获取上新和额外促销信息。新浪微博：@天使妞妞童装店；微信公信号：angelmimi1204,。欢迎妈妈们在微博上发来宝宝秀照片，另外全部5分好评，并写出20字以上评语可以返现5元哦~。&pic=http://gw2.alicdn.com/bao/uploaded/i4/TB1Rv86FVXXXXc_XpXXXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到新浪微博"></a>\r\n<a class="qqwb" href="http://share.v.t.qq.com/index.php?c=share&a=index&url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35050&title=3条包邮【天使妞妞】女童2014秋冬全棉加厚毛圈磨毛弹力打底裤,加粉丝，获取上新和额外促销信息。新浪微博：@天使妞妞童装店；微信公信号：angelmimi1204,。欢迎妈妈们在微博上发来宝宝秀照片，另外全部5分好评，并写出20字以上评语可以返现5元哦~。&pic=http://gw2.alicdn.com/bao/uploaded/i4/TB1Rv86FVXXXXc_XpXXXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到腾讯微博"></a>\r\n<a class="kaixin" href="http://www.kaixin001.com/rest/records.php?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35050&style=11&content=3条包邮【天使妞妞】女童2014秋冬全棉加厚毛圈磨毛弹力打底裤,加粉丝，获取上新和额外促销信息。新浪微博：@天使妞妞童装店；微信公信号：angelmimi1204,。欢迎妈妈们在微博上发来宝宝秀照片，另外全部5分好评，并写出20字以上评语可以返现5元哦~。&pic=http://gw2.alicdn.com/bao/uploaded/i4/TB1Rv86FVXXXXc_XpXXXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到开心网"></a>	\r\n<a class="douban" href="http://www.douban.com/recommend/?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35050&title=3条包邮【天使妞妞】女童2014秋冬全棉加厚毛圈磨毛弹力打底裤,加粉丝，获取上新和额外促销信息。新浪微博：@天使妞妞童装店；微信公信号：angelmimi1204,。欢迎妈妈们在微博上发来宝宝秀照片，另外全部5分好评，并写出20字以上评语可以返现5元哦~。&image=http://gw2.alicdn.com/bao/uploaded/i4/TB1Rv86FVXXXXc_XpXXXXXXXXXX_!!0-item_pic.jpg" target="_blank" title="分享到豆瓣网"></a>	  \r\n<a class="qzong" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fwww.16iu.com%2Findex.php%3Fm%3Djump%26a%3Dindex%26id%3D35050&desc=3条包邮【天使妞妞】女童2014秋冬全棉加厚毛圈磨毛弹力打底裤&summary=正在促销活动中9折后31.5元，截止：2014年12月03日，赶快去看看吧！&title=加粉丝，获取上新和额外促销信息。新浪微博：@天使妞妞童装店；微信公信号：angelmimi1204,。欢迎妈妈们在微博上发来宝宝秀照片，另外全部5分好评，并写出20字以上评语可以返现5元哦~。&site=http://www.16iu.com&pics=http://gw2.alicdn.com/bao/uploaded/i4/TB1Rv86FVXXXXc_XpXXXXXXXXXX_!!0-item_pic.jpg&style=203&width=98&height=22&otype=share" target="_blank" title="分享到QQ空间"></a>\r\n</div>\r\n<span class="state-time fl">开始：2014-08-27 01:00</span>\r\n\r\n<a title="3条包邮【天使妞妞】女童2014秋冬全棉加厚毛圈磨毛弹力打底裤" class="buy_ed fr " style="display:block;" znid="35050" href="javascript:;">举报</a>\r\n</div>\r\n</div>\r\n</div>\r\n</li>', '', '', '', 1409068800, 1417017600, 0, 0, 255, 1),
(9, 5, 'text', '购物说明', 'index.php?m=article&a=cate&id=3', '购物说明', '', '', '', 1409068800, 1661529600, 0, 0, 255, 1),
(10, 5, 'text', '消费保障', 'index.php?m=article&a=cate&id=2', '消费保障', '', '', '', 1409068800, 1661529600, 0, 0, 255, 1),
(11, 1, 'text', '报名须知', 'index.php?m=article&a=cate&id=1', '报名须知', '', '', '', 1409068800, 1661529600, 0, 0, 255, 1),
(12, 1, 'text', '商家报名', 'index.php?m=goods&a=goods_add', '商家报名', '', '', '', 1409068800, 1648224000, 0, 0, 255, 1),
(13, 3, 'text', '联系我们', 'index.php?m=help&a=read&id=2', '联系我们', '', '', '', 1409068800, 1661529600, 0, 0, 255, 1);

CREATE TABLE IF NOT EXISTS `ftxia_adboard` (
  `id` smallint(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `tpl` varchar(20) NOT NULL,
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

INSERT INTO `ftxia_adboard` (`id`, `name`, `tpl`, `width`, `height`, `description`, `status`) VALUES
(1, '帮助中心', 'help', 300, 300, '', 1),
(2, '商务合作', 'hezuo', 300, 300, '', 1),
(3, '关于我们', 'about', 300, 300, '', 1),
(4, '合作商家', 'html', 0, 0, '', 1),
(5, '购物指南', 'weibo', 300, 300, '购物指南', 1);

CREATE TABLE IF NOT EXISTS `ftxia_admin` (
  `id` mediumint(6) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` smallint(5) NOT NULL,
  `last_ip` varchar(15) default NULL,
  `last_time` int(10) default '0',
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_name` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


CREATE TABLE IF NOT EXISTS `ftxia_admin_auth` (
  `role_id` tinyint(3) NOT NULL,
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `ftxia_admin_auth` (`role_id`, `menu_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 17),
(1, 18),
(1, 19),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 36),
(1, 37),
(1, 38),
(1, 50),
(1, 51),
(1, 52),
(1, 54),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 70),
(1, 117),
(1, 118),
(1, 119),
(1, 148),
(1, 149),
(1, 150),
(1, 151),
(1, 152),
(1, 153),
(1, 154),
(1, 155),
(1, 156),
(1, 157),
(1, 158),
(1, 159),
(1, 160),
(1, 161),
(1, 162),
(1, 164),
(1, 181),
(1, 185),
(1, 186),
(1, 187),
(1, 190),
(1, 195),
(1, 199),
(1, 200),
(1, 201),
(1, 202),
(1, 203),
(1, 216),
(1, 232),
(1, 233),
(1, 234),
(1, 235),
(1, 236),
(1, 237),
(1, 238),
(1, 240),
(1, 242),
(1, 245),
(1, 249),
(1, 250),
(1, 256),
(1, 257),
(1, 258),
(1, 259),
(1, 260),
(1, 261),
(1, 262),
(1, 263),
(1, 264),
(1, 265),
(1, 269),
(1, 270),
(1, 271),
(1, 274),
(1, 275),
(1, 276),
(1, 277),
(1, 278),
(1, 279),
(1, 280),
(1, 281),
(1, 282),
(1, 283),
(1, 284),
(1, 286),
(1, 287),
(1, 288),
(1, 289),
(1, 290),
(1, 291);

CREATE TABLE IF NOT EXISTS `ftxia_admin_role` (
  `id` tinyint(3) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `ordid` tinyint(3) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `ftxia_admin_role` (`id`, `name`, `remark`, `ordid`, `status`) VALUES
(1, '超级管理员', '超级管理员', 0, 1);

CREATE TABLE IF NOT EXISTS `ftxia_article` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL default '0',
  `last_time` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;


CREATE TABLE IF NOT EXISTS `ftxia_article_cate` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL default '0',
  `spid` varchar(50) NOT NULL,
  `ordid` smallint(4) unsigned NOT NULL default '255',
  `status` tinyint(1) NOT NULL default '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

INSERT INTO `ftxia_article_cate` (`id`, `name`, `pid`, `spid`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc`) VALUES
(1, '报名须知', 0, '0', 1, 1, '玩家攻略', '玩家攻略,购物心得,网购经验', '资深网购专家教你怎么玩卷皮尺.'),
(2, '消费保障', 0, '0', 255, 1, '', '', ''),
(3, '购物说明', 0, '0', 255, 1, '', '', '');

CREATE TABLE IF NOT EXISTS `ftxia_auto_user` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_badword` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `word_type` tinyint(1) unsigned NOT NULL default '1' COMMENT '1：禁用；2：替换；3：审核',
  `badword` varchar(100) NOT NULL,
  `replaceword` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_help` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(120) NOT NULL,
  `info` text NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  `last_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `ftxia_help` (`id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time`) VALUES
(2, '联系我们', '<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma,Helvetica,Arial,宋体,sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;">\r\n	　　皮卷网　[<a href="http://www.16iu.com/" target="_blank" style="margin:0px;padding:0px;color:#5E5E5E;">16IU.COM</a>]\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma,Helvetica,Arial,宋体,sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;">\r\n	　　如果您对我们的网站以及服务有任何疑问、意见或建议，请随时与我们在线客服取得联系！我们的客服人员会给您详尽细致的解答，您的意见或建议将立即得到反馈。\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma,Helvetica,Arial,宋体,sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;">\r\n	　　工作时间：周一至周五（09：00 - 12：00　14：00 - 18：00）\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#5E5E5E;font-family:Tahoma,Helvetica,Arial,宋体,sans-serif;line-height:30px;white-space:normal;background-color:#FFFFFF;">\r\n	&nbsp; &nbsp; &nbsp; 联系方式：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=89677070&amp;site=qq&amp;menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:89677070:51" alt="点击这里给我发消息" title="点击这里给我发消息" /></a> \r\n</p>', '', '', '', 1409071077),
(3, '免责声明', '<p>\r\n	　　尊敬的用户：<br />\r\n您即将通过本页面确认使用皮卷网以外的第三方卖家为您提供的商品和相关服务需注意的相关事项。在接受本须知内容之前，请您仔细阅读本须知的 全部内容如果您对本须知的条款有疑问的，请通过皮卷网客服渠道进行询问，皮卷网将向您解释条款内容。如果您不同意本须知的任意内容，或者无法准确理解皮卷网对条款的解释，请不要进行后续操作。<br />\r\n皮卷网使用须知（简称“本须知”）是皮卷网用户(以下简称“用户”或“您”)就使用基于在皮卷网的卖家（以下简称“卖家”）提供相关商品或服务所签署的有效文件。用户通过网络页面点击确认或以其他方式选择接受本须知，即表示您同意接受以下全部内容： <br />\r\n1．在您在本网站中与卖家产生的所有交易，均在淘宝网内进行，对于交易过程中的资金及个人信息的安全问题，均由淘宝网负责，本网站不承担任何交易过程产生的资金及个人信息安全问题的责任。 <br />\r\n2．卖家提供的产品和服务由卖家独立负责。在交易过程中遇到任何质量或者服务问题，均可以按照正常的淘宝维权流程进行维权，本网站不对卖家提供的商品或服务承担任何责任。 <br />\r\n3．为了保障您的权益，本网站将定期对卖家提供的商品宣传进行检查，但您理解检查不可能每时每刻都在进行。所以，请您仔细阅读卖家对商品的各种宣传资料，对其做出准确判断。本网站对卖家所涉及的商品和服务任何内容、宣传、和其他材料未作认证，也不对此负责或承担任何责任。 <br />\r\n4．网络欺诈往往会模仿、仿冒淘宝网登录页面的样式制作视觉感相似的页面诱导您输入账号和密码等信息，皮卷网提醒您防范网络风险，不要向任何人士（包括卖家）透露淘宝网账号、密码等相关信息。 <br />\r\n5．您理解并同意， 皮卷网仅提供淘宝网卖家的商品链接，对于卖家的商品服务的选择和交易的内容，应由您自行判断，且审慎交易。您需自行了解卖家提供的商品或服务的功能、收费标准、退款规则、服务有效期等情况并注意交易风险。皮卷网不对卖家和用户行为的合法性、有效性及卖家提供商品和服务的真实性、合法性和有效性作任何明示和默示的担保。皮卷网用户与卖家产生纠纷时将努力进行协调，卖家也应秉承为用户提供优质商品和服务的理念为用户提供便利，但皮卷网并不保证协调取得实际效果。 <br />\r\n6．如您发现卖家侵犯您的合法权益的，或您不幸遭遇网络欺诈的，请及时联系淘宝网，本网站会协助您维护您的合法权益。\r\n</p>\r\n<br />', '', '', '', 1409071138),
(4, '商家合作', '<p>\n	<strong><span style="font-size:16px;">一、招商报名规则：</span></strong> \n</p>\n<p>\n	<strong><span style="font-size:16px;"><br />\n</span></strong> \n</p>\n<p>\n	<table style="padding-bottom:0px;line-height:30px;widows:2;text-transform:none;text-indent:0px;margin:0px;padding-left:0px;letter-spacing:normal;padding-right:0px;border-collapse:collapse;font-family:Tahoma,Helvetica,Arial,宋体,sans-serif;orphans:2;color:#5e5e5e;font-size:12px;word-spacing:0px;padding-top:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="5" width="700" bgcolor="#cccccc">\n		<tbody style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#eeeeee">\n				<th style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">\n					活动价格\n				</th>\n				<th style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">\n					9.9包邮\n				</th>\n				<th style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">\n					10-20元包邮\n				</th>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					活动价格\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					9.9包邮\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					10-20元包邮\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					C店要求\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					1红心以上\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					1钻以上\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					B店要求\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					不限\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					不限\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					近30日销量\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					不限\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					不限\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					动态评分\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					同行持平及以上\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					同行持平及以上\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					商品评价\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					不限\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					不限\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					报名数量\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					&gt;200件\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					&gt;200件\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					历史价格\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					&gt;本活动价格\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					&gt;本活动价格\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					审核周期\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					3工作日\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					3工作日\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					打折方式\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					限时、VIP\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					限时、VIP\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					准时开始\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					定时上架\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					定时上架\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					重复周期\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					一件商品只上一次\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					一件商品只上一次\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					店内客服\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					必须在线\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					必须在线\n				</td>\n			</tr>\n			<tr style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" bgcolor="#ffffff">\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					优先通过\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					价值较大商品\n				</td>\n				<td style="border-bottom:#aaaaaa 1px dotted;border-left:#aaaaaa 1px dotted;padding-bottom:0px;text-indent:12px;margin:0px;padding-left:0px;padding-right:0px;font:12px/1.5 Tahoma,Helvetica,Arial,宋体,sans-serif;border-top:#aaaaaa 1px dotted;border-right:#aaaaaa 1px dotted;padding-top:0px;">\n					价值较大商品\n				</td>\n			</tr>\n		</tbody>\n	</table>\n<span style="color:#5e5e5e;font-family:''Tahoma,Helvetica,Arial,宋体,sans-serif'';"><span style="line-height:30px;"><br />\n</span></span> \n</p>\n<strong><span style="font-size:16px;">二、活动流程</span></strong> \n<p style="padding-bottom:0px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;padding-left:0px;letter-spacing:normal;padding-right:0px;font:12px/30px Tahoma,Helvetica,Arial,宋体,sans-serif;word-wrap:break-word;white-space:normal;orphans:2;color:#5e5e5e;word-spacing:0px;padding-top:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="sphz_p">\n	1、商家认真查看活动要求说明进行报名。<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n2、准确填写报名信息，提交报名，我们会在三天内进行审核，请关注自己的报名后台查看审核结果。。<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n3、审核通过的活动，我们会联系商家，沟通活动准备工作及上线排期等问题。\n</p>\n<p style="padding-bottom:0px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;padding-left:0px;letter-spacing:normal;padding-right:0px;font:12px/30px Tahoma,Helvetica,Arial,宋体,sans-serif;word-wrap:break-word;white-space:normal;orphans:2;color:#5e5e5e;word-spacing:0px;padding-top:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="sphz_p">\n	<br />\n</p>\n<strong><span style="font-size:16px;">三、黑名单</span></strong> \n<p style="padding-bottom:0px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;padding-left:0px;letter-spacing:normal;padding-right:0px;font:12px/30px Tahoma,Helvetica,Arial,宋体,sans-serif;word-wrap:break-word;white-space:normal;orphans:2;color:#5e5e5e;word-spacing:0px;padding-top:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="sphz_p" sphz_p_er="">\n	1、拉黑原因（重要）&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n如果商家有以下行为，我们将终止与该商家合作，并将该商家列入黑名单永不合作。 我们真诚的提醒您，诚信合作，拉黑对您对我们都是损失！&nbsp;<span style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">1.1、绕圈报名上活动，同款商品刻意联系不同专员审核者，发现即拉黑，活动随时终止；&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n1.2、未按约定排期上架宝贝，修改宝贝价格、宝贝标题，活动时间以及添加我们的宣传图片；&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n1.3、活动中单方面将宝贝下架；&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n1.4、活动中单方面修改价格或包邮情况；&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n1.5、活动中删除宝贝标题中的【MiaoshaNet独享】，或是删除我们的宣传图片或链接；&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n1.6、活动期间同时参加其他促销活动；&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n1.7、售卖假货或劣质产品等欺骗消费者的行为；&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n1.8、未履行相应的售后服务，未能及时恰当处理用户投诉问题；&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n1.9、活动期间悬挂过多其他活动宣传图片，恶意引导用户，造成用户误解的行为；&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n1.10、其他不诚信以及违规行为，最终解释权归本活动所有。&nbsp;</span>2、其他说明&nbsp;<span style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">2.1、加入黑名单的商家，本活动永不合作，且无法删除此黑名单。&nbsp;<br style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" />\n2.2、黑名单由招商专员或活动排查专员添加。</span> \n</p>\n<p style="padding-bottom:0px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;padding-left:0px;letter-spacing:normal;padding-right:0px;font:12px/30px Tahoma,Helvetica,Arial,宋体,sans-serif;word-wrap:break-word;white-space:normal;orphans:2;color:#5e5e5e;word-spacing:0px;padding-top:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="sphz_p" sphz_p_er="">\n	<span style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;"><br />\n</span> \n</p>\n<strong><span style="font-size:16px;">四、联系方式</span></strong> \n<p style="padding-bottom:0px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;padding-left:0px;letter-spacing:normal;padding-right:0px;font:12px/30px Tahoma,Helvetica,Arial,宋体,sans-serif;word-wrap:break-word;white-space:normal;orphans:2;color:#5e5e5e;word-spacing:0px;padding-top:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="sphz_p" sphz_p_linx="">\n	<span style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;" class="sphz_span"><strong style="padding-bottom:0px;margin:0px;padding-left:0px;padding-right:0px;padding-top:0px;">商务合作QQ：</strong>89677070</span>\n</p>', '', '', '', 1404635684),
(1, '关于我们', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style="font-size:16px;color:#E53333;"><strong>&nbsp; &nbsp;皮卷网是有浩天淘宝客二次开发，免费升级，免费使用</strong></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style="font-size:16px;color:#E53333;"><strong>&nbsp; &nbsp;我们的口号：将淘宝客程序免费进行到底！</strong></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style="font-size:16px;color:#E53333;"><strong>&nbsp; &nbsp;www.16iu.com</strong></span>\r\n</p>', '', '', '', 1409071195);

CREATE TABLE IF NOT EXISTS `ftxia_ipban` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `expires_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_items` (
  `id` int(11) NOT NULL auto_increment,
  `ordid` int(11) default '9999' COMMENT '自定义排序',
  `cate_id` int(11) default '0' COMMENT '属于分类',
  `orig_id` smallint(6) default '1',
  `num_iid` varchar(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` varchar(255) default NULL,
  `tags` varchar(255) default NULL,
  `nick` varchar(200) NOT NULL,
  `uid` int(10) unsigned NOT NULL default '1',
  `uname` varchar(20) NOT NULL default 'admin',
  `pic_url` varchar(200) NOT NULL,
  `pic_urls` varchar(200) default NULL,
  `price` decimal(11,2) NOT NULL,
  `click_url` varchar(500) default NULL,
  `volume` int(11) NOT NULL,
  `commission` decimal(11,2) NOT NULL,
  `commission_rate` int(11) NOT NULL,
  `coupon_price` decimal(11,2) NOT NULL,
  `coupon_rate` int(11) NOT NULL,
  `coupon_start_time` int(11) default NULL,
  `coupon_end_time` int(11) default NULL,
  `pass` int(11) default '0' COMMENT '是否审核',
  `status` varchar(20) default 'underway' COMMENT '出售状态',
  `fail_reason` varchar(500) default NULL COMMENT '未通过理由',
  `shop_type` varchar(11) default NULL,
  `item_url` varchar(500) default NULL COMMENT '宝贝地址',
  `ems` int(11) default '0',
  `hits` int(11) default '0' COMMENT '点击量',
  `isshow` int(11) default '1',
  `likes` int(11) default '0',
  `inventory` int(11) default '0' COMMENT '库存',
  `seo_title` varchar(255) default NULL,
  `seo_keys` varchar(255) default NULL,
  `seo_desc` text,
  `add_time` int(11) default NULL,
  `last_rate_time` int(10) NOT NULL default '0',
  `is_collect_comments` int(1) default '0' COMMENT '是否采集了淘宝评论1表示已经采集了淘宝评论',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `num_iid` (`num_iid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35054 ;

INSERT INTO `ftxia_items` (`id`, `ordid`, `cate_id`, `orig_id`, `num_iid`, `title`, `intro`, `tags`, `nick`, `uid`, `uname`, `pic_url`, `pic_urls`, `price`, `click_url`, `volume`, `commission`, `commission_rate`, `coupon_price`, `coupon_rate`, `coupon_start_time`, `coupon_end_time`, `pass`, `status`, `fail_reason`, `shop_type`, `item_url`, `ems`, `hits`, `isshow`, `likes`, `inventory`, `seo_title`, `seo_keys`, `seo_desc`, `add_time`, `last_rate_time`, `is_collect_comments`) VALUES
(34962, 9999, 1, 1, '18429238361', '浪莎短裤防走光安全裤蕾丝三分裤莫代尔打底裤子保险裤大码女夏薄', '强烈推荐：浪莎短裤防走光安全裤蕾丝三分裤莫代尔打底裤子保险裤大码女夏薄，优惠活动折扣价格：9.90元，已成交：35763人收货笔。', '浪莎 打底 短裤 蕾丝 三分 裤子 保险 安全 夏薄 莫代尔', '浪莎女装旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i2/T13ZqwFFdbXXXXXXXX_!!0-item_pic.jpg', NULL, 9.90, NULL, 35763, 0.00, 0, 9.90, 10000, 1409071952, 1409331152, 1, 'underway', NULL, 'B', NULL, 1, 1625636778, 1, 7654, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34963, 9999, 1, 1, '39562662465', '2014秋装新款韩版潮显瘦牛仔裤大码长裤休闲铅笔糖果色女小脚裤子', '强烈推荐：2014秋装新款韩版潮显瘦牛仔裤大码长裤休闲铅笔糖果色女小脚裤子，优惠活动折扣价格：19.80元，已成交：23156人收货笔。', '秋装 牛仔裤 长裤 小脚 铅笔 糖果 裤子 新款 休闲 韩版潮', 'waytocreate旗舰店', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i3/TB1dHTLFVXXXXc_XXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 19.80, NULL, 23156, 0.00, 0, 19.80, 10000, 1409071952, 1409331152, 1, 'underway', NULL, 'B', NULL, 1, 800695199, 1, 5924, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34964, 9999, 1, 1, '40175093060', '丽丽普特夏装女装弹力九分打底裤女外穿9分春秋大码胖mm薄款长裤', '强烈推荐：丽丽普特夏装女装弹力九分打底裤女外穿9分春秋大码胖mm薄款长裤，优惠活动折扣价格：9.60元，已成交：22400人收货笔。', '普特 长裤 打底裤 夏装 弹力 女装 春秋', '丽丽普特旗舰店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i3/TB1PHzuFVXXXXcfXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 9.60, NULL, 22400, 0.00, 0, 9.60, 10000, 1409071952, 1409331152, 1, 'underway', NULL, 'B', NULL, 1, 1062916222, 1, 6508, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34965, 9999, 1, 1, '22874176428', '9.9元春夏款 纯棉 Y字 工字莫代尔 吊带背心 打底衫  小背心 女装', '强烈推荐：9.9元春夏款 纯棉 Y字 工字莫代尔 吊带背心 打底衫  小背心 女装，优惠活动折扣价格：8.90元，已成交：20779人收货笔。', '背心 工字 元春 打底 纯棉 吊带 女装 莫代尔 夏款 9.9', '精品暖宝宝', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i4/T1Ywt9FshiXXXXXXXX_!!0-item_pic.jpg', NULL, 8.90, NULL, 20779, 0.00, 0, 8.90, 10000, 1409071952, 1409331152, 1, 'underway', NULL, 'C', NULL, 1, 1023238678, 1, 9991, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34966, 9999, 1, 1, '37269578831', '韩国春秋薄款hm莫代尔纯棉打底裤女士夏季显瘦大码外穿糖果灰白色', '强烈推荐：韩国春秋薄款hm莫代尔纯棉打底裤女士夏季显瘦大码外穿糖果灰白色，优惠活动折扣价格：17.90元，已成交：19968人收货笔。', '灰白色 打底裤 韩国 纯棉 糖果 夏季 春秋 女士 莫代尔', 'be爱ve', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i1/TB1caI4FFXXXXbLXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 17.90, NULL, 19968, 0.00, 0, 17.90, 10000, 1409071952, 1409331152, 1, 'underway', NULL, 'C', NULL, 1, 533499377, 1, 8354, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34967, 9999, 1, 1, '37698986638', '七分纯棉打底裤女士夏季显瘦大码外穿糖果色春秋薄款女装小脚短裤', '强烈推荐：七分纯棉打底裤女士夏季显瘦大码外穿糖果色春秋薄款女装小脚短裤，优惠活动折扣价格：19.00元，已成交：19872人收货笔。', '七分 打底裤 短裤 小脚 纯棉 糖果 女装 夏季 春秋 女士', 'xlqy旗舰店', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i1/T1b_dAFRJcXXXXXXXX_!!0-item_pic.jpg', NULL, 19.00, NULL, 19872, 0.00, 0, 19.00, 10000, 1409071953, 1409331152, 1, 'underway', NULL, 'B', NULL, 1, 1660052809, 1, 6087, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34968, 9999, 1, 1, '17568873048', '防晒衣防紫外线长袖正品长款防晒服女大码夏季薄款披肩开衫小外套', '强烈推荐：防晒衣防紫外线长袖正品长款防晒服女大码夏季薄款披肩开衫小外套，优惠活动折扣价格：19.84元，已成交：19833人收货笔。', '防晒 防紫外线 开衫 披肩 长袖 正品 外套 夏季', '俊军旗舰店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i4/17801023056701550/T1TiOJXERbXXXXXXXX_!!0-item_pic.jpg', NULL, 19.84, NULL, 19833, 0.00, 0, 19.84, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 737837801, 1, 5109, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34969, 9999, 1, 1, '14839567110', 'MJX2014秋季新款格子衬衫女 长袖时尚休闲修身潮女装情侣衬衣', '强烈推荐：MJX2014秋季新款格子衬衫女 长袖时尚休闲修身潮女装情侣衬衣，优惠活动折扣价格：29.90元，已成交：19694人收货笔。', '衬衫 时尚休闲 修身 长袖 衬衣 格子 秋季 女装 新款 情侣', 'mjx旗舰店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/TB1lM7VFVXXXXXJaXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 29.90, NULL, 19694, 0.00, 0, 29.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 762039651, 1, 4227, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34970, 9999, 1, 1, '23883488910', '白色t恤女短袖体恤修身纯棉打底衫韩版圆领紧身夏装纯色女款 潮', '强烈推荐：白色t恤女短袖体恤修身纯棉打底衫韩版圆领紧身夏装纯色女款 潮，优惠活动折扣价格：25.80元，已成交：19122人收货笔。', '女款 打底 纯色 圆领 体恤 夏装 紧身 修身 短袖 纯棉', '梦想真美好', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i4/T13ZtZFQ4bXXXXXXXX_!!0-item_pic.jpg', NULL, 25.80, NULL, 19122, 0.00, 0, 25.80, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 248453492, 1, 9421, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34971, 9999, 1, 1, '18134822671', '包邮夏季莫代尔纯棉平角打底裤短裤子大码防走光蕾丝三分安全裤女', '强烈推荐：包邮夏季莫代尔纯棉平角打底裤短裤子大码防走光蕾丝三分安全裤女，优惠活动折扣价格：7.90元，已成交：18087人收货笔。', '平角 打底裤 纯棉 蕾丝 三分 夏季 裤子 安全 莫代尔 包邮', 'wangxiaocai593060', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i4/T1buNXFQXXXXXXXXXX_!!0-item_pic.jpg', NULL, 7.90, NULL, 18087, 0.00, 0, 7.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 244467989, 1, 6695, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34972, 9999, 1, 1, '38684367502', '包邮5901 春装新款2014 女士吊带背心 小吊带衫大码打底工字背心', '强烈推荐：包邮5901 春装新款2014 女士吊带背心 小吊带衫大码打底工字背心，优惠活动折扣价格：5.80元，已成交：17376人收货笔。', '背心 工字 打底 吊带衫 春装 吊带 新款 女士 包邮 5901', '驴肉火烧111', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i1/TB1Xx0KFVXXXXa8XXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 5.80, NULL, 17376, 0.00, 0, 5.80, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 405312179, 1, 2686, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34973, 9999, 1, 1, '16862466992', 'BRIOSO格子衬衫 女 长袖2014秋季上新款女装修身韩版大码清凉衬衣', '强烈推荐：BRIOSO格子衬衫 女 长袖2014秋季上新款女装修身韩版大码清凉衬衣，优惠活动折扣价格：29.90元，已成交：17293人收货笔。', '衬衫 修身 长袖 衬衣 格子 秋季 清凉 女装 新款 BRIOSO', 'brioso浩军专卖店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i4/T1vQVrFRXcXXXXXXXX_!!0-item_pic.jpg', NULL, 29.90, NULL, 17293, 0.00, 0, 29.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 915893872, 1, 5561, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34974, 9999, 1, 1, '37205043228', 'BRIOSO2014秋季上新款全纯棉格子衬衫女长袖清凉衬衣韩版女装大码', '强烈推荐：BRIOSO2014秋季上新款全纯棉格子衬衫女长袖清凉衬衣韩版女装大码，优惠活动折扣价格：29.90元，已成交：16948人收货笔。', '衬衫 长袖 纯棉 衬衣 格子 秋季 BRIOSO2014 清凉 女装 新款', 'brioso服饰旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i1/TB1I_VyGXXXXXX4XXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 29.90, NULL, 16948, 0.00, 0, 29.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 1919293740, 1, 1883, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34975, 9999, 1, 1, '37183561108', '2014夏装新款情侣韩版体恤女装白色短袖女T恤大码半袖打底衫t恤女', '强烈推荐：2014夏装新款情侣韩版体恤女装白色短袖女T恤大码半袖打底衫t恤女，优惠活动折扣价格：9.90元，已成交：16793人收货笔。', '打底 T恤 体恤 夏装 短袖 女装 新款 情侣 白色 韩版', '友谊运动休闲服饰', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i2/TB1G7QqFVXXXXahXXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 9.90, NULL, 16793, 0.00, 0, 9.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 368838286, 1, 9913, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34976, 9999, 1, 1, '39157861787', '2014夏季新款t桖女装大码松宽印花短袖韩版t恤闺蜜装棒球服学生装', '强烈推荐：2014夏季新款t桖女装大码松宽印花短袖韩版t恤闺蜜装棒球服学生装，优惠活动折扣价格：12.99元，已成交：16525人收货笔。', '松宽 学生装 短袖 棒球 印花 女装 夏季 新款 韩版 2014', '小佳琪yy', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i3/T1zRsAFIBaXXXXXXXX_!!0-item_pic.jpg', NULL, 12.99, NULL, 16525, 0.00, 0, 12.99, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 2078672341, 1, 7592, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34977, 9999, 1, 1, '19489174608', '秋装新款韩版简约圆领中长款 毛衣2014针织开衫外套女针织衫 女装', '强烈推荐：秋装新款韩版简约圆领中长款 毛衣2014针织开衫外套女针织衫 女装，优惠活动折扣价格：39.00元，已成交：15969人收货笔。', '秋装 开衫 针织衫 中长 毛衣 圆领 简约 外套 女装 针织', '青花羊旗舰店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/14674027366475137/T1VACyFktdXXXXXXXX_!!0-item_pic.jpg', NULL, 39.00, NULL, 15969, 0.00, 0, 39.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 1764284674, 1, 3780, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34978, 9999, 1, 1, '39586932993', '彩黛妃2014春夏装新款韩版修身大码镂空拼接短袖连衣裙', '强烈推荐：彩黛妃2014春夏装新款韩版修身大码镂空拼接短袖连衣裙，优惠活动折扣价格：25.00元，已成交：15745人收货笔。', '黛妃 连衣裙 拼接 夏装 镂空 修身 短袖 新款 韩版 2014', '彩黛妃旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i3/TB1qit3FpXXXXbmdXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 25.00, NULL, 15745, 0.00, 0, 25.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 2037787891, 1, 1519, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34979, 9999, 1, 1, '40241014799', '咪娅2014新款夏季休闲黑白格子短裤女修身显瘦热裤大码女装松紧腰', '强烈推荐：咪娅2014新款夏季休闲黑白格子短裤女修身显瘦热裤大码女装松紧腰，优惠活动折扣价格：25.90元，已成交：15591人收货笔。', '短裤 热裤 松紧 修身 格子 夏季 女装 新款 黑白 休闲', '咪娅韩装旗舰店', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i4/TB1e3mKFVXXXXaoXpXXXXXXXXXX_!!0-item_pic.jpg', NULL, 25.90, NULL, 15591, 0.00, 0, 25.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 572041431, 1, 3057, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34980, 9999, 1, 1, '20272763953', '包邮2014春夏新款妈妈装 中老年女装冰丝连衣裙 中年大码碎花裙子', '强烈推荐：包邮2014春夏新款妈妈装 中老年女装冰丝连衣裙 中年大码碎花裙子，优惠活动折扣价格：22.80元，已成交：15509人收货笔。', '冰丝 春夏 连衣裙 碎花 中老年 裙子 女装 新款 中年 妈妈', '控心丶sorrow', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i2/TB1wKdkGXXXXXaxXXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 22.80, NULL, 15509, 0.00, 0, 22.80, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 1640489286, 1, 3428, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34981, 9999, 1, 1, '39076354177', '向初 2014春秋装新款女韩版潮大码休闲长裤显瘦哈伦裤小脚女裤子', '强烈推荐：向初 2014春秋装新款女韩版潮大码休闲长裤显瘦哈伦裤小脚女裤子，优惠活动折扣价格：29.90元，已成交：15209人收货笔。', '秋装 哈伦裤 休闲长裤 小脚 裤子 新款 韩版潮 2014', '向初旗舰店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/TB1GXYDFVXXXXa4XVXXXXXXXXXX_!!0-item_pic.jpg', NULL, 29.90, NULL, 15209, 0.00, 0, 29.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 875724004, 1, 3528, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34982, 9999, 1, 1, '38792369948', '2014韩版新款夏装百搭学生蝙蝠短袖t恤卡通打底衫潮女t半袖上衣潮', '强烈推荐：2014韩版新款夏装百搭学生蝙蝠短袖t恤卡通打底衫潮女t半袖上衣潮，优惠活动折扣价格：19.80元，已成交：15180人收货笔。', '打底 夏装 短袖 蝙蝠 上衣 新款 卡通 学生 韩版 2014', '沃帝玛旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i3/T1c5OJFMXbXXXXXXXX_!!0-item_pic.jpg', NULL, 19.80, NULL, 15180, 0.00, 0, 19.80, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 2005158946, 1, 9258, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34983, 9999, 1, 1, '17383169090', '莫代尔打底裤夏季女薄款安全裤防走光蕾丝三分9.9大码短裤保险裤', '强烈推荐：莫代尔打底裤夏季女薄款安全裤防走光蕾丝三分9.9大码短裤保险裤，优惠活动折扣价格：8.80元，已成交：14852人收货笔。', '打底裤 短裤 蕾丝 三分 夏季 保险 安全 莫代尔 9.9', '依南衣旗舰店', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i1/T1SGdiXExeXXXXXXXX_!!0-item_pic.jpg', NULL, 8.80, NULL, 14852, 0.00, 0, 8.80, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 693967705, 1, 8093, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34984, 9999, 1, 1, '37284645503', '七婵2014秋装新款女装韩版镂空短款薄外套针织衫开衫防晒衣空调衫', '强烈推荐：七婵2014秋装新款女装韩版镂空短款薄外套针织衫开衫防晒衣空调衫，优惠活动折扣价格：33.00元，已成交：14644人收货笔。', '秋装 开衫 短款 针织衫 防晒 镂空 外套 女装 新款 空调', '七婵女装旗舰店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i2/T1_VV3FzJgXXXXXXXX_!!0-item_pic.jpg', NULL, 33.00, NULL, 14644, 0.00, 0, 33.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 1983771543, 1, 8450, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34985, 9999, 1, 1, '19354593282', '梦倾城欧洲站早秋新款大码女装潮流卫衣金丝天鹅绒运动休闲服套装', '强烈推荐：梦倾城欧洲站早秋新款大码女装潮流卫衣金丝天鹅绒运动休闲服套装，优惠活动折扣价格：78.00元，已成交：14480人收货笔。', '早秋 天鹅绒 卫衣 欧洲 休闲服 金丝 倾城 女装 新款 套装', '梦倾城旗舰店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i4/T1JtFwFytjXXXXXXXX_!!0-item_pic.jpg', NULL, 78.00, NULL, 14480, 0.00, 0, 78.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 1734757356, 1, 4493, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34986, 9999, 1, 1, '38814771487', '2014夏装新款 弹力外穿高腰打底裤女显瘦长裤休闲铅笔裤小脚裤秋', '强烈推荐：2014夏装新款 弹力外穿高腰打底裤女显瘦长裤休闲铅笔裤小脚裤秋，优惠活动折扣价格：23.00元，已成交：14123人收货笔。', '小脚裤 铅笔裤 长裤 打底裤 夏装 弹力 新款 休闲 高腰 2014', 'be爱ve', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i4/TB1W4k1FFXXXXXBaXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 23.00, NULL, 14123, 0.00, 0, 23.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 533499377, 1, 1275, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34987, 9999, 1, 1, '40032268637', '包邮2014夏装新款大码女装韩版百搭宽松全棉上装白色印花短袖T恤', '强烈推荐：包邮2014夏装新款大码女装韩版百搭宽松全棉上装白色印花短袖T恤，优惠活动折扣价格：19.90元，已成交：14048人收货笔。', '短袖T恤 夏装 全棉 上装 宽松 印花 女装 新款 白色 韩版百', '潮衫女人馆', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i1/TB1bjFOFVXXXXbZXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 19.90, NULL, 14048, 0.00, 0, 19.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 1762984535, 1, 2436, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34988, 9999, 1, 1, '5570591511', '2014夏季新款韩版短裤女夏显瘦女裤修身热裤休闲裤子女士大码女装', '强烈推荐：2014夏季新款韩版短裤女夏显瘦女裤修身热裤休闲裤子女士大码女装，优惠活动折扣价格：19.00元，已成交：13729人收货笔。', '短裤 热裤 修身 女裤 女装 夏季 裤子 新款 女士 休闲', '好评多多', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i4/T1vIxoFRlXXXXXXXXX_!!0-item_pic.jpg', NULL, 19.00, NULL, 13729, 0.00, 0, 19.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 127111437, 1, 6259, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34989, 9999, 1, 1, '38167277724', '2014夏季新款韩版短裤女夏显瘦女裤修身热裤休闲裤子女士大码女装', '强烈推荐：2014夏季新款韩版短裤女夏显瘦女裤修身热裤休闲裤子女士大码女装，优惠活动折扣价格：19.90元，已成交：13335人收货笔。', '短裤 热裤 修身 女裤 女装 夏季 裤子 新款 女士 休闲', '樱花鸟旗舰店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/T18RINFLhaXXXXXXXX_!!0-item_pic.jpg', NULL, 19.90, NULL, 13335, 0.00, 0, 19.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 1789089643, 1, 1417, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34990, 9999, 1, 1, '40040421394', '2014夏装新款韩版百搭印花蝙蝠短袖t恤女士大码碎花雪纺衫上衣潮', '强烈推荐：2014夏装新款韩版百搭印花蝙蝠短袖t恤女士大码碎花雪纺衫上衣潮，优惠活动折扣价格：18.80元，已成交：13218人收货笔。', '雪纺衫 碎花 夏装 短袖 蝙蝠 上衣 印花 新款 女士 韩版百', '韩潮时尚衣橱', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i4/TB1AHx3FVXXXXbKXVXXXXXXXXXX_!!0-item_pic.jpg', NULL, 18.80, NULL, 13218, 0.00, 0, 18.80, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 1746049166, 1, 8202, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34991, 9999, 1, 1, '39942772541', '多多咪亚2014秋装新款韩版糖果色铅笔裤弹力打底裤休闲裤女小脚子', '强烈推荐：多多咪亚2014秋装新款韩版糖果色铅笔裤弹力打底裤休闲裤女小脚子，优惠活动折扣价格：31.90元，已成交：13170人收货笔。', '秋装 打底裤 休闲裤 铅笔裤 小脚 弹力 糖果 新款 多多 韩版', '多多咪亚女装旗舰店', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i1/TB1rOX1FVXXXXXKXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 31.90, NULL, 13170, 0.00, 0, 31.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 849455455, 1, 8052, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34992, 9999, 1, 1, '38363829049', '燕知草白色短裤 女士糖果色大码打底裤热裤韩版纯棉运动女裤子夏', '强烈推荐：燕知草白色短裤 女士糖果色大码打底裤热裤韩版纯棉运动女裤子夏，优惠活动折扣价格：19.90元，已成交：13044人收货笔。', '子夏 热裤 打底裤 短裤 纯棉 女裤 糖果 女士 白色 运动', '燕知草旗舰店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i2/T1hgpzFNxeXXXXXXXX_!!0-item_pic.jpg', NULL, 19.90, NULL, 13044, 0.00, 0, 19.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 1984912876, 1, 5209, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34993, 9999, 1, 1, '38767580169', '2014夏潮韩版蓝黑白色A字裤子 显瘦胖mm加大码女高腰牛仔短裤热裤', '强烈推荐：2014夏潮韩版蓝黑白色A字裤子 显瘦胖mm加大码女高腰牛仔短裤热裤，优惠活动折扣价格：38.50元，已成交：12787人收货笔。', '女高 蓝黑 牛仔短裤 热裤 裤子 加大 白色 夏潮 韩版 2014', '蔡佳宏1989', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/T1ySERFJBXXXXXXXXX_!!0-item_pic.jpg', NULL, 38.50, NULL, 12787, 0.00, 0, 38.50, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 287741815, 1, 3891, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34994, 9999, 1, 1, '40231786644', '秋装新款高腰打底裤外穿小脚裤休闲裤女士大码女装显瘦韩版长裤子', '强烈推荐：秋装新款高腰打底裤外穿小脚裤休闲裤女士大码女装显瘦韩版长裤子，优惠活动折扣价格：9.90元，已成交：12249人收货笔。', '秋装 休闲裤 打底裤 小脚裤 女装 裤子 新款 女士 高腰 韩版', 'tb25217773', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i2/TB1EHvdFVXXXXaJXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 9.90, NULL, 12249, 0.00, 0, 9.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 1897897004, 1, 6214, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34995, 9999, 1, 1, '40051379967', '2014夏装新品 韩版优雅撞色拼接印花修身显瘦碎花雪纺连衣裙女', '强烈推荐：2014夏装新品 韩版优雅撞色拼接印花修身显瘦碎花雪纺连衣裙女，优惠活动折扣价格：45.00元，已成交：12039人收货笔。', '连衣裙 雪纺 拼接 碎花 夏装 修身 印花 优雅 新品 韩版', 'wanwalkerman', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i4/TB1IXWkFVXXXXbXaXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 45.00, NULL, 12039, 0.00, 0, 45.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 153559553, 1, 2356, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34996, 9999, 1, 1, '37335694590', '包邮 打底裤安全裤防走光冰丝三分 女 夏季薄款蕾丝边大码保险裤', '强烈推荐：包邮 打底裤安全裤防走光冰丝三分 女 夏季薄款蕾丝边大码保险裤，优惠活动折扣价格：5.80元，已成交：11882人收货笔。', '冰丝 打底裤 蕾丝 三分 夏季 保险 安全 包邮 边大码', 'slliy1108', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i3/T1z6ZEFsXaXXXXXXXX_!!0-item_pic.jpg', NULL, 5.80, NULL, 11882, 0.00, 0, 5.80, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 97416636, 1, 8703, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34997, 9999, 1, 1, '36748368296', '2014秋装新款女装女半身短裙子蓬蓬裙伞裙百褶大码太阳裙裤裙A字', '强烈推荐：2014秋装新款女装女半身短裙子蓬蓬裙伞裙百褶大码太阳裙裤裙A字，优惠活动折扣价格：9.90元，已成交：11833人收货笔。', '秋装 裤裙 百褶 蓬蓬裙 半身 裙子 女装 新款 太阳 2014', '客奕不凡旗舰店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/TB1H7RSFVXXXXX7aXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 9.90, NULL, 11833, 0.00, 0, 9.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 724834055, 1, 6656, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34998, 9999, 1, 1, '39837106546', '2014早秋新款韩版潮夏季大码宽松哈伦裤女休闲长裤子薄小脚裤女装', '强烈推荐：2014早秋新款韩版潮夏季大码宽松哈伦裤女休闲长裤子薄小脚裤女装，优惠活动折扣价格：19.90元，已成交：11727人收货笔。', '早秋 小脚裤 哈伦裤 宽松 夏季 女装 裤子 新款 休闲 韩版潮', '张泳杰', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i2/TB1Pl8jFVXXXXbmXXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 19.90, NULL, 11727, 0.00, 0, 19.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 731323159, 1, 6140, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(34999, 9999, 1, 1, '38378051418', '防紫外线防晒衣 长袖透明 女防晒服夏季中长薄款大码短外套防晒衫', '强烈推荐：防紫外线防晒衣 长袖透明 女防晒服夏季中长薄款大码短外套防晒衫，优惠活动折扣价格：9.90元，已成交：11493人收货笔。', '防晒 防紫外线 短外套 中长 长袖 夏季 透明', '珍依奇饰旗舰店', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i2/T1jUtXFH0bXXXXXXXX_!!0-item_pic.jpg', NULL, 9.90, NULL, 11493, 0.00, 0, 9.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 862841880, 1, 7315, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(35000, 9999, 1, 1, '18224172850', '岚薇针织衫女开衫薄外搭毛衣防晒空调衫2014新款秋装女装外套披肩', '强烈推荐：岚薇针织衫女开衫薄外搭毛衣防晒空调衫2014新款秋装女装外套披肩，优惠活动折扣价格：49.00元，已成交：11420人收货笔。', '秋装 开衫 防晒 毛衣 针织衫 披肩 外套 女装 新款 空调', '岚薇服饰旗舰店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i1/T1K.5aFrtdXXXXXXXX_!!0-item_pic.jpg', NULL, 49.00, NULL, 11420, 0.00, 0, 49.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 867014298, 1, 5293, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(35001, 9999, 1, 1, '19095191582', '衣百诺早秋装新款大码天鹅绒运动休闲服潮流套装欧洲站卫衣女春秋', '强烈推荐：衣百诺早秋装新款大码天鹅绒运动休闲服潮流套装欧洲站卫衣女春秋，优惠活动折扣价格：68.00元，已成交：11336人收货笔。', '百诺 秋装 天鹅绒 卫衣 欧洲 休闲服 春秋 新款 套装 潮流', '衣百诺旗舰店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i4/TB1Lpz0FVXXXXXFXVXXXXXXXXXX_!!0-item_pic.jpg', NULL, 68.00, NULL, 11336, 0.00, 0, 68.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'B', NULL, 1, 666263311, 1, 9400, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(35002, 9999, 1, 1, '40014213006', '2014秋装新款韩版大码女装长袖t恤女露肩打底衫女士上衣针织小衫', '强烈推荐：2014秋装新款韩版大码女装长袖t恤女露肩打底衫女士上衣针织小衫，优惠活动折扣价格：25.00元，已成交：11274人收货笔。', '秋装 打底 长袖 上衣 女装 针织 新款 女士 韩版大 2014', '可人韩衣', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i2/T1ngl2FppfXXXXXXXX_!!0-item_pic.jpg', NULL, 25.00, NULL, 11274, 0.00, 0, 25.00, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 1967834656, 1, 3958, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(35003, 9999, 1, 1, '40164687320', '包邮2014夏装新款女装韩版 时尚潮款露肩显瘦修身女t恤 短袖上衣', '强烈推荐：包邮2014夏装新款女装韩版 时尚潮款露肩显瘦修身女t恤 短袖上衣，优惠活动折扣价格：17.90元，已成交：11220人收货笔。', '夏装 修身 短袖 上衣 女装 新款 时尚 包邮 韩版 2014', '纯纯时尚衣部落', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i2/TB1BGXUFVXXXXbBXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 17.90, NULL, 11220, 0.00, 0, 17.90, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 1904325959, 1, 342, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(35004, 9999, 1, 1, '38096663728', '中年妈妈装中老年连衣裙40-45-50岁修身大码妇女装短袖花裙子夏装', '强烈推荐：中年妈妈装中老年连衣裙40-45-50岁修身大码妇女装短袖花裙子夏装，优惠活动折扣价格：25.50元，已成交：10847人收货笔。', '连衣裙 夏装 中老年 修身 短袖 裙子 女装 中年 妈妈 45', '945xujie945', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i4/TB1nQJQFVXXXXaVXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 25.50, NULL, 10847, 0.00, 0, 25.50, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 883379567, 1, 8284, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(35005, 9999, 1, 1, '39113745486', '春夏款 纯棉 Y字 工字 吊带背心 打底衫 小背心 女装', '强烈推荐：春夏款 纯棉 Y字 工字 吊带背心 打底衫 小背心 女装，优惠活动折扣价格：6.80元，已成交：10801人收货笔。', '背心 工字 春夏 打底 纯棉 吊带 女装', 'woyao唯一专属', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i3/T16md8Fv0XXXXXXXXX_!!0-item_pic.jpg', NULL, 6.80, NULL, 10801, 0.00, 0, 6.80, 10000, 1409071953, 1409331153, 1, 'underway', NULL, 'C', NULL, 1, 2098010785, 1, 6866, 0, NULL, NULL, NULL, 1409071953, 0, 0),
(35006, 9999, 1, 1, '37347511304', '2014秋装新款韩版彩色糖果色铅笔裤白色弹力牛仔女小脚裤子大码', '强烈推荐：2014秋装新款韩版彩色糖果色铅笔裤白色弹力牛仔女小脚裤子大码，优惠活动折扣价格：32.00元，已成交：10798人收货笔。', '秋装 铅笔裤 小脚 弹力 糖果 裤子 新款 牛仔 彩色 白色', '385度旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i2/TB1vJD4FVXXXXcrXXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 32.00, NULL, 10798, 0.00, 0, 32.00, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'B', NULL, 1, 1740919468, 1, 597, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35007, 9999, 1, 1, '39089955074', '打底裤薄款显瘦涂鸦 小脚可外穿打底裤 女士韩版潮花色', '强烈推荐：打底裤薄款显瘦涂鸦 小脚可外穿打底裤 女士韩版潮花色，优惠活动折扣价格：8.90元，已成交：10583人收货笔。', '打底裤 小脚 花色 涂鸦 女士 韩版潮', 'woyao唯一专属', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i2/TB1VMeKFVXXXXaUXXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 8.90, NULL, 10583, 0.00, 0, 8.90, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'C', NULL, 1, 2098010784, 1, 3406, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35008, 9999, 1, 1, '38245372152', '2014春夏装新款韩版大码短袖蝙蝠t恤女装休闲时尚短裤运动套装女', '强烈推荐：2014春夏装新款韩版大码短袖蝙蝠t恤女装休闲时尚短裤运动套装女，优惠活动折扣价格：29.90元，已成交：10539人收货笔。', '运动套装 短裤 休闲时尚 夏装 短袖 蝙蝠 女装 新款 韩版大 2014', '依佳人靓装店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i4/T1k0AlFvxeXXXXXXXX_!!2-item_pic.png', NULL, 29.90, NULL, 10539, 0.00, 0, 29.90, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'C', NULL, 1, 1955639187, 1, 6229, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35009, 9999, 1, 1, '38841221163', '2014夏装新款纯棉短袖女t恤修身半袖潮上衣韩版大码女装白色体恤', '强烈推荐：2014夏装新款纯棉短袖女t恤修身半袖潮上衣韩版大码女装白色体恤，优惠活动折扣价格：19.90元，已成交：10535人收货笔。', '体恤 夏装 修身 短袖 纯棉 上衣 女装 新款 白色 韩版大', 'qq123440499', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i3/T1fsSUFxJXXXXXXXXX_!!0-item_pic.jpg', NULL, 19.90, NULL, 10535, 0.00, 0, 19.90, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'C', NULL, 1, 334055137, 1, 8644, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35010, 9999, 1, 1, '37532561805', '糖果色高腰铅笔裤小脚裤j紧身弹力裤外穿打底裤九分裤长裤女2014', '强烈推荐：糖果色高腰铅笔裤小脚裤j紧身弹力裤外穿打底裤九分裤长裤女2014，优惠活动折扣价格：9.80元，已成交：10517人收货笔。', '九分裤 小脚裤 铅笔裤 打底裤 长裤 弹力 紧身 糖果 高腰 2014', '伊莎美肤', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i3/TB1TlPuFVXXXXXnXXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 9.80, NULL, 10517, 0.00, 0, 9.80, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'C', NULL, 1, 534616162, 1, 1935, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35011, 9999, 1, 1, '24195764456', '修身女t恤短袖夏常规白色纯棉v领体恤 纯简约女士打底衫黑色韩版', '强烈推荐：修身女t恤短袖夏常规白色纯棉v领体恤 纯简约女士打底衫黑色韩版，优惠活动折扣价格：25.30元，已成交：10432人收货笔。', '打底 体恤 修身 短袖 纯棉 简约 常规 女士 白色 黑色', '厦门喜简', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i2/TB1JIMUFFXXXXXVXpXXXXXXXXXX_!!0-item_pic.jpg', NULL, 25.30, NULL, 10432, 0.00, 0, 25.30, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'C', NULL, 1, 1055264642, 1, 3821, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35012, 9999, 1, 1, '35511814167', 'VIP购优惠格子衬衫 女 长袖2014秋装新款韩版修身女士清凉衬衣', '强烈推荐：VIP购优惠格子衬衫 女 长袖2014秋装新款韩版修身女士清凉衬衣，优惠活动折扣价格：26.00元，已成交：10069人收货笔。', '秋装 衬衫 修身 长袖 衬衣 格子 清凉 新款 女士 优惠', '义乌韩尚服饰专营店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i4/TB1gNRhGXXXXXbtXVXXXXXXXXXX_!!0-item_pic.jpg', NULL, 26.00, NULL, 10069, 0.00, 0, 26.00, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'B', NULL, 1, 1109985938, 1, 2529, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35013, 9999, 1, 1, '39354624266', '2014夏季新款品韩版潮露肩女t恤短袖短裤休闲女装两件套装小香风', '强烈推荐：2014夏季新款品韩版潮露肩女t恤短袖短裤休闲女装两件套装小香风，优惠活动折扣价格：49.00元，已成交：9902人收货笔。', '香风 休闲女装 短裤 短袖 夏季 新款 套装 韩版潮 2014', '玉玉的衣铺', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i3/T1zFaOFOFXXXXXXXXX_!!0-item_pic.jpg', NULL, 49.00, NULL, 9902, 0.00, 0, 49.00, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'C', NULL, 1, 900724318, 1, 9474, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35014, 9999, 1, 1, '38895870144', '2014秋装新款弹力牛仔裤女式修身显瘦小脚裤中腰铅笔裤韩版潮长裤', '强烈推荐：2014秋装新款弹力牛仔裤女式修身显瘦小脚裤中腰铅笔裤韩版潮长裤，优惠活动折扣价格：56.00元，已成交：9893人收货笔。', '秋装 铅笔裤 牛仔裤 长裤 小脚裤 弹力 女式 修身 新款 韩版潮', '书香谷旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i4/T1gmnsFF8aXXXXXXXX_!!0-item_pic.jpg', NULL, 56.00, NULL, 9893, 0.00, 0, 56.00, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'B', NULL, 1, 2087922400, 1, 8900, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35015, 9999, 1, 1, '39353097818', '秋装大码女装 女式牛仔裤 中腰显瘦小脚铅笔蓝色弹力修身女长裤子', '强烈推荐：秋装大码女装 女式牛仔裤 中腰显瘦小脚铅笔蓝色弹力修身女长裤子，优惠活动折扣价格：39.00元，已成交：9807人收货笔。', '秋装 牛仔裤 小脚 弹力 女式 修身 铅笔 女装 裤子 蓝色', 'hcbaihu', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i3/TB12a8MFVXXXXX7XFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 39.00, NULL, 9807, 0.00, 0, 39.00, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'C', NULL, 1, 109459123, 1, 3752, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35016, 9999, 1, 1, '36374396103', '2014秋装 新款女装女半身短裙子蓬蓬裙伞裙百褶大码太阳裙裤裙韩', '强烈推荐：2014秋装 新款女装女半身短裙子蓬蓬裙伞裙百褶大码太阳裙裤裙韩，优惠活动折扣价格：16.90元，已成交：9736人收货笔。', '秋装 裤裙 百褶 蓬蓬裙 半身 裙子 女装 新款 太阳 2014', '韩依朵旗舰店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i3/T1MqcuFGJeXXXXXXXX_!!0-item_pic.jpg', NULL, 16.90, NULL, 9736, 0.00, 0, 16.90, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'B', NULL, 1, 1745628661, 1, 5540, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35017, 9999, 1, 1, '40017995203', '包邮2014新款春秋装韩版女装简约纯色松紧腰系带哈伦裤九分裤女', '强烈推荐：包邮2014新款春秋装韩版女装简约纯色松紧腰系带哈伦裤九分裤女，优惠活动折扣价格：28.90元，已成交：9714人收货笔。', '秋装 系带 纯色 九分裤 哈伦裤 松紧 简约 女装 新款 韩版', '美雅枫', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i3/TB14R5CFVXXXXcnXpXXXXXXXXXX_!!0-item_pic.jpg', NULL, 28.90, NULL, 9714, 0.00, 0, 28.90, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'C', NULL, 1, 305484266, 1, 9047, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35018, 9999, 1, 1, '39432291059', '卡迪玫2014新款秋装 女外套空调衫 镂空女装针织衫女开衫外套', '强烈推荐：卡迪玫2014新款秋装 女外套空调衫 镂空女装针织衫女开衫外套，优惠活动折扣价格：49.00元，已成交：9707人收货笔。', '卡迪 秋装 外套 开衫 针织衫 镂空 女装 新款 空调 2014', '卡迪玫旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i1/TB1nbdUFVXXXXbAXVXXXXXXXXXX_!!0-item_pic.jpg', NULL, 49.00, NULL, 9707, 0.00, 0, 49.00, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'B', NULL, 1, 2106776939, 1, 7570, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35019, 9999, 1, 1, '39504478068', '新款春装韩版卷边小脚长裤大码女哈伦裤显瘦九分牛仔裤宽松垮裤潮', '强烈推荐：新款春装韩版卷边小脚长裤大码女哈伦裤显瘦九分牛仔裤宽松垮裤潮，优惠活动折扣价格：19.90元，已成交：9692人收货笔。', '松垮 哈伦裤 牛仔裤 长裤 小脚 春装 新款 韩版卷', '潮衫美色', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i2/TB15_U4FFXXXXb.XXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 19.90, NULL, 9692, 0.00, 0, 19.90, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'C', NULL, 1, 1707057415, 1, 415, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35020, 9999, 1, 1, '10248477505', '莫代尔弹力棉九分打底裤女外穿9分春秋款夏季大码胖mm薄款长裤潮', '强烈推荐：莫代尔弹力棉九分打底裤女外穿9分春秋款夏季大码胖mm薄款长裤潮，优惠活动折扣价格：19.00元，已成交：9682人收货笔。', '长裤 打底裤 弹力 夏季 春秋 莫代尔', '依南衣旗舰店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i2/T1JfC3FUFaXXXXXXXX_!!0-item_pic.jpg', NULL, 19.00, NULL, 9682, 0.00, 0, 19.00, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'B', NULL, 1, 693967705, 1, 8763, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35021, 9999, 1, 1, '40102343479', '针织衫女开衫薄外搭毛衣防晒空调衫2014新款秋装女装外套披肩', '强烈推荐：针织衫女开衫薄外搭毛衣防晒空调衫2014新款秋装女装外套披肩，优惠活动折扣价格：45.00元，已成交：9638人收货笔。', '秋装 开衫 防晒 毛衣 针织衫 披肩 外套 女装 新款 空调', 'tuohui旗舰店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i1/TB1mbJ3FVXXXXblXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 45.00, NULL, 9638, 0.00, 0, 45.00, 10000, 1409071955, 1409331155, 1, 'underway', NULL, 'B', NULL, 1, 2121320769, 1, 2104, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35022, 9999, 1, 1, '39880190430', '宸海外穿打底裤夏季白色显瘦弹力高腰七分裤女薄款糖果色九分大码', '强烈推荐：宸海外穿打底裤夏季白色显瘦弹力高腰七分裤女薄款糖果色九分大码，优惠活动折扣价格：19.90元，已成交：9443人收货笔。', '七分裤 打底裤 弹力 糖果 夏季 白色 海外 高腰', '宸海旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i2/T1U2CmFPXgXXXXXXXX_!!0-item_pic.jpg', NULL, 19.90, NULL, 9443, 0.00, 0, 19.90, 10000, 1409071956, 1409331155, 1, 'underway', NULL, 'B', NULL, 1, 1024230818, 1, 8772, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35023, 9999, 1, 1, '39282530245', '2014夏季新款韩版字母宽松休闲短袖T恤 韩范大码女装半袖上衣女潮', '强烈推荐：2014夏季新款韩版字母宽松休闲短袖T恤 韩范大码女装半袖上衣女潮，优惠活动折扣价格：27.00元，已成交：9381人收货笔。', '短袖T恤 宽松 上衣 夏季 女装 字母 新款 休闲 范大码 韩版', '睛格格驾到', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i1/T1K0ZDFHldXXXXXXXX_!!0-item_pic.jpg', NULL, 27.00, NULL, 9381, 0.00, 0, 27.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 1024342872, 1, 5877, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35024, 9999, 1, 1, '40215208045', '秋装新款韩版女装上衣雪纺衫长袖蕾丝打底衫大码修身网纱小衫T恤', '强烈推荐：秋装新款韩版女装上衣雪纺衫长袖蕾丝打底衫大码修身网纱小衫T恤，优惠活动折扣价格：28.90元，已成交：9379人收货笔。', '秋装 打底 T恤 雪纺衫 修身 长袖 蕾丝 上衣 女装 新款', '英韩正品', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i2/TB1Bwh4FVXXXXXCXpXXXXXXXXXX_!!0-item_pic.jpg', NULL, 28.90, NULL, 9379, 0.00, 0, 28.90, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 1877359923, 1, 751, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35025, 9999, 1, 1, '22803176386', '伊蓓思大码女装白色短裤子 运动热裤 显瘦宽松休闲短裤 女 夏865', '强烈推荐：伊蓓思大码女装白色短裤子 运动热裤 显瘦宽松休闲短裤 女 夏865，优惠活动折扣价格：35.00元，已成交：9352人收货笔。', '热裤 休闲短裤 宽松 女装 裤子 白色 运动 865', '伊蓓思旗舰店', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i3/T1IBwnFqVcXXXXXXXX_!!0-item_pic.jpg', NULL, 35.00, NULL, 9352, 0.00, 0, 35.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'B', NULL, 1, 350360568, 1, 8136, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35026, 9999, 1, 1, '39036956679', '2014夏季新款高腰短裤 女宽松大码糖果色休闲韩版热裤子020短裤女', '强烈推荐：2014夏季新款高腰短裤 女宽松大码糖果色休闲韩版热裤子020短裤女，优惠活动折扣价格：39.00元，已成交：9338人收货笔。', '短裤 宽松 糖果 夏季 裤子 新款 休闲 高腰 韩版 2014', '嫒伊闺旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i1/TB1J4YxFVXXXXXDXXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 39.00, NULL, 9338, 0.00, 0, 39.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'B', NULL, 1, 1895493076, 1, 8486, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35027, 9999, 1, 1, '39807964384', '2014夏秋新款棉麻显瘦小脚九分裤韩版潮大码宽松休闲裤哈伦裤女', '强烈推荐：2014夏秋新款棉麻显瘦小脚九分裤韩版潮大码宽松休闲裤哈伦裤女，优惠活动折扣价格：28.00元，已成交：9324人收货笔。', '夏秋 休闲裤 哈伦裤 九分裤 小脚 棉麻 宽松 新款 韩版潮 2014', 'haijiaochen', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i4/T1JdpoFexhXXXXXXXX_!!0-item_pic.jpg', NULL, 28.00, NULL, 9324, 0.00, 0, 28.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 138964001, 1, 7451, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35028, 9999, 1, 1, '38459268600', '秋装韩版女装短款超薄款长袖针织开衫空调衫防晒衣外搭小披肩外套', '强烈推荐：秋装韩版女装短款超薄款长袖针织开衫空调衫防晒衣外搭小披肩外套，优惠活动折扣价格：28.80元，已成交：9265人收货笔。', '秋装 开衫 短款 防晒 小披肩 长袖 超薄 外套 女装 针织', 'zjbg2012', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i4/T1tmdpFFlaXXXXXXXX_!!0-item_pic.jpg', NULL, 28.80, NULL, 9265, 0.00, 0, 28.80, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 1071700001, 1, 4709, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35029, 9999, 1, 1, '19469883546', '2014秋装新款韩版显瘦彩色铅笔裤女装夏大码弹力小脚休闲长裤子潮', '强烈推荐：2014秋装新款韩版显瘦彩色铅笔裤女装夏大码弹力小脚休闲长裤子潮，优惠活动折扣价格：31.50元，已成交：9261人收货笔。', '子潮 秋装 休闲长裤 铅笔裤 小脚 弹力 女装 新款 彩色 韩版显', '雨中线', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/T1l2PLFHNXXXXXXXXX_!!0-item_pic.jpg', NULL, 31.50, NULL, 9261, 0.00, 0, 31.50, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 240908465, 1, 2082, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35030, 9999, 1, 1, '40009399759', '蕾丝白色外穿三分防走光大码显瘦薄款打底裤女安全裤短裤保险裤夏', '强烈推荐：蕾丝白色外穿三分防走光大码显瘦薄款打底裤女安全裤短裤保险裤夏，优惠活动折扣价格：17.90元，已成交：9255人收货笔。', '短裤 打底裤 光大 蕾丝 三分 白色 保险 安全', 'be爱ve', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i3/TB10M4ZFVXXXXa0XXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 17.90, NULL, 9255, 0.00, 0, 17.90, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 533499377, 1, 7638, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35031, 9999, 1, 1, '38637344154', '包邮2014新款韩版牛仔短裤女夏潮宽松破洞卷边中腰大码显瘦热裤薄', '强烈推荐：包邮2014新款韩版牛仔短裤女夏潮宽松破洞卷边中腰大码显瘦热裤薄，优惠活动折扣价格：19.90元，已成交：9254人收货笔。', '热裤 牛仔短裤 宽松 新款 边中腰 夏潮 包邮 韩版 2014', '段彩虹0525', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i3/T1H4r0FE4kXXXXXXXX_!!0-item_pic.jpg', NULL, 19.90, NULL, 9254, 0.00, 0, 19.90, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 840186363, 1, 7305, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35032, 9999, 1, 1, '37732468255', '19包邮色外穿夏打底裤显瘦高弹力女士紧身裤铅笔裤9.9小脚黑色裤', '强烈推荐：19包邮色外穿夏打底裤显瘦高弹力女士紧身裤铅笔裤9.9小脚黑色裤，优惠活动折扣价格：19.00元，已成交：9177人收货笔。', '瘦高 打底裤 铅笔裤 小脚 弹力 紧身 女士 黑色 包邮色 9.9', '蔡泽龙10', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i2/T1zT8UFxlqXXXXXXXX_!!0-item_pic.jpg', NULL, 19.00, NULL, 9177, 0.00, 0, 19.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 782302208, 1, 9190, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35033, 9999, 1, 1, '38287244487', '短裤女夏 韩版雪纺灯笼裤裙 裙裤 热裤 大码女装高腰显瘦宽松裤子', '强烈推荐：短裤女夏 韩版雪纺灯笼裤裙 裙裤 热裤 大码女装高腰显瘦宽松裤子，优惠活动折扣价格：17.80元，已成交：9172人收货笔。', '裤裙 裙裤 短裤 热裤 雪纺 宽松 灯笼 女装 裤子 韩版', '江先生_02', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/TB1eHchFFXXXXcsbXXXXXXXXXXX_!!0-item_pic.jpg', NULL, 17.80, NULL, 9172, 0.00, 0, 17.80, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 1675604673, 1, 3435, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35034, 9999, 1, 1, '38344336953', '2014夏季新款韩版显瘦白色弹力休闲短裤女裤子夏大码热裤牛仔裤', '强烈推荐：2014夏季新款韩版显瘦白色弹力休闲短裤女裤子夏大码热裤牛仔裤，优惠活动折扣价格：19.00元，已成交：9166人收货笔。', '热裤 牛仔裤 休闲短裤 弹力 夏季 裤子 新款 白色 夏大码 韩版显', '静芝怡服饰专营店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i1/T1o553FLtbXXXXXXXX_!!0-item_pic.jpg', NULL, 19.00, NULL, 9166, 0.00, 0, 19.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'B', NULL, 1, 1044963312, 1, 2208, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35035, 9999, 1, 1, '38127242350', '碧丽蒂斯秋款弹力铅笔小脚 牛仔裤女 长裤子修身显瘦大码韩范版潮', '强烈推荐：碧丽蒂斯秋款弹力铅笔小脚 牛仔裤女 长裤子修身显瘦大码韩范版潮，优惠活动折扣价格：69.00元，已成交：9146人收货笔。', '蒂斯 牛仔裤 小脚 弹力 修身 铅笔 裤子 范版潮', 'bilitis旗舰店', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i2/TB1MhzeFVXXXXaxXpXXXXXXXXXX_!!0-item_pic.jpg', NULL, 69.00, NULL, 9146, 0.00, 0, 69.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'B', NULL, 1, 2000049053, 1, 2653, 0, NULL, NULL, NULL, 1409071956, 0, 0);
INSERT INTO `ftxia_items` (`id`, `ordid`, `cate_id`, `orig_id`, `num_iid`, `title`, `intro`, `tags`, `nick`, `uid`, `uname`, `pic_url`, `pic_urls`, `price`, `click_url`, `volume`, `commission`, `commission_rate`, `coupon_price`, `coupon_rate`, `coupon_start_time`, `coupon_end_time`, `pass`, `status`, `fail_reason`, `shop_type`, `item_url`, `ems`, `hits`, `isshow`, `likes`, `inventory`, `seo_title`, `seo_keys`, `seo_desc`, `add_time`, `last_rate_time`, `is_collect_comments`) VALUES
(35036, 9999, 1, 1, '38029199353', '胖mm大码女装 2014夏季新款韩版九分牛仔裤女磨破洞宽松9分垮裤潮', '强烈推荐：胖mm大码女装 2014夏季新款韩版九分牛仔裤女磨破洞宽松9分垮裤潮，优惠活动折扣价格：29.90元，已成交：9102人收货笔。', '牛仔裤 宽松 女装 夏季 新款 韩版九 2014', '水煮周杰伦', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i1/T1W_JcFUJXXXXXXXXX_!!0-item_pic.jpg', NULL, 29.90, NULL, 9102, 0.00, 0, 29.90, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 685802953, 1, 7695, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35037, 9999, 1, 1, '5906623649', '2014新款韩版显瘦糖果彩色7七分裤中热裤打底短裤女裤子女装夏季', '强烈推荐：2014新款韩版显瘦糖果彩色7七分裤中热裤打底短裤女裤子女装夏季，优惠活动折扣价格：29.00元，已成交：9094人收货笔。', '打底 短裤 热裤 七分裤 女裤 糖果 夏季 子女 新款 彩色', '好评多多', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i4/11437023631237757/T1iba3XwJaXXXXXXXX_!!0-item_pic.jpg', NULL, 29.00, NULL, 9094, 0.00, 0, 29.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 127111437, 1, 6934, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35038, 9999, 1, 1, '40555841125', '弹力高腰秋冬季加绒加厚女士外穿打底裤长裤显瘦踩脚一体裤秋冬款', '强烈推荐：弹力高腰秋冬季加绒加厚女士外穿打底裤长裤显瘦踩脚一体裤秋冬款，优惠活动折扣价格：14.20元，已成交：9083人收货笔。', '秋冬款 秋冬季 长裤 打底裤 加厚 弹力 女士 一体 高腰', '晚秋服饰专营店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i2/TB1HdbIFVXXXXcFXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 14.20, NULL, 9083, 0.00, 0, 14.20, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'B', NULL, 1, 1842930643, 1, 3024, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35039, 9999, 1, 1, '39321092098', '2014夏装新款韩版女装大码百搭显瘦纯棉宽松t恤上衣女士短袖女t恤', '强烈推荐：2014夏装新款韩版女装大码百搭显瘦纯棉宽松t恤上衣女士短袖女t恤，优惠活动折扣价格：29.00元，已成交：9071人收货笔。', '夏装 短袖 纯棉 宽松 上衣 女装 新款 女士 韩版 2014', '小靓依橱a', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i2/TB1wIlLFVXXXXb7XVXXXXXXXXXX_!!0-item_pic.jpg', NULL, 29.00, NULL, 9071, 0.00, 0, 29.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 890381237, 1, 5562, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35040, 9999, 1, 1, '39093718863', '开衫女2014秋冬新款口袋显瘦宽松 中长款针织 毛衣镂空外套针织衫', '强烈推荐：开衫女2014秋冬新款口袋显瘦宽松 中长款针织 毛衣镂空外套针织衫，优惠活动折扣价格：18.80元，已成交：8992人收货笔。', '开衫 毛衣 针织衫 中长 镂空 宽松 秋冬 外套 针织 新款', 'woyao唯一专属', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i1/T1Ft3aFuVbXXXXXXXX_!!0-item_pic.jpg', NULL, 18.80, NULL, 8992, 0.00, 0, 18.80, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 2098010784, 1, 8578, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35041, 9999, 1, 1, '38724319862', '黑色显瘦大码打底裤外穿韩版修身紧身弹力小脚铅笔裤九分高腰裤子', '强烈推荐：黑色显瘦大码打底裤外穿韩版修身紧身弹力小脚铅笔裤九分高腰裤子，优惠活动折扣价格：29.00元，已成交：8981人收货笔。', '铅笔裤 打底裤 小脚 弹力 紧身 修身 裤子 黑色 韩版 高腰', '靓衣在韩城', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/T1Cnt8FtFzXXXXXXXX_!!0-item_pic.jpg', NULL, 29.00, NULL, 8981, 0.00, 0, 29.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 791898994, 1, 2369, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35042, 9999, 1, 1, '40205775566', '秋冬季外穿加绒加厚打底裤女显瘦弹力大码九分踩脚一体裤保暖裤子', '强烈推荐：秋冬季外穿加绒加厚打底裤女显瘦弹力大码九分踩脚一体裤保暖裤子，优惠活动折扣价格：25.00元，已成交：8970人收货笔。', '力大 秋冬季 打底裤 加厚 保暖 裤子 一体', '美娜丽姿旗舰店', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i3/TB1U5WyFVXXXXbbXFXXXXXXXXXX_!!0-item_pic.jpg', NULL, 25.00, NULL, 8970, 0.00, 0, 25.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'B', NULL, 1, 2057692591, 1, 6064, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35043, 9999, 1, 1, '24442616260', '修身女士牛仔短裤 女 夏潮破洞夏季热裤子中腰宽松大码女装短裤女', '强烈推荐：修身女士牛仔短裤 女 夏潮破洞夏季热裤子中腰宽松大码女装短裤女，优惠活动折扣价格：29.00元，已成交：8901人收货笔。', '短裤 牛仔短裤 修身 宽松 女装 夏季 裤子 女士 夏潮破', '雪之狼旗舰店', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i3/TB1HWhnFVXXXXXDXpXXXXXXXXXX_!!0-item_pic.jpg', NULL, 29.00, NULL, 8901, 0.00, 0, 29.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'B', NULL, 1, 727459715, 1, 3347, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35044, 9999, 1, 1, '16898011662', '潞依韩一步裙包臀裙短裙半身裙夏弹力女裙子职业大码包裙半裙裹裙', '强烈推荐：潞依韩一步裙包臀裙短裙半身裙夏弹力女裙子职业大码包裙半裙裹裙，优惠活动折扣价格：19.90元，已成交：8879人收货笔。', '韩一 半身裙 弹力 短裙 裙子 职业 包裙半 包臀裙', '潞依韩旗舰店', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i2/T1n3X5XvBgXXXXXXXX_!!2-item_pic.png', NULL, 19.90, NULL, 8879, 0.00, 0, 19.90, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'B', NULL, 1, 872268169, 1, 5343, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35045, 9999, 1, 1, '40210900725', '2014秋夏装新款韩版亚麻裤休闲时尚女裤系带宽松长裤子高腰哈伦女', '强烈推荐：2014秋夏装新款韩版亚麻裤休闲时尚女裤系带宽松长裤子高腰哈伦女，优惠活动折扣价格：35.00元，已成交：8872人收货笔。', '系带 休闲时尚 夏装 亚麻 宽松 女裤 裤子 新款 伦女 高腰哈', 'tb2235062_2011', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i1/T1YTyLFrpdXXXXXXXX_!!0-item_pic.jpg', NULL, 35.00, NULL, 8872, 0.00, 0, 35.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 756979115, 1, 4282, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35046, 9999, 1, 1, '25654120442', '初秋新品 莫代尔开衫薄款夏季大码防晒衣长袖中长款外搭空调衫', '强烈推荐：初秋新品 莫代尔开衫薄款夏季大码防晒衣长袖中长款外搭空调衫，优惠活动折扣价格：32.00元，已成交：8835人收货笔。', '代尔 开衫 防晒 中长 初秋 长袖 夏季 新品 空调', '黎明出发2013', 1, 'admin', 'http://g.search.alicdn.com/img/bao/uploaded/i4/i4/T1byKXFu4fXXXXXXXX_!!0-item_pic.jpg', NULL, 32.00, NULL, 8835, 0.00, 0, 32.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 1578239880, 1, 2354, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35047, 9999, 1, 1, '17526230195', '短裤女夏2014新款韩版加大码胖mm休闲高腰棉布热裤宽松紧显瘦包邮', '强烈推荐：短裤女夏2014新款韩版加大码胖mm休闲高腰棉布热裤宽松紧显瘦包邮，优惠活动折扣价格：35.00元，已成交：8835人收货笔。', '短裤 热裤 松紧 棉布 新款 加大 休闲 包邮 韩版 高腰', '轩亚茗迪旗舰店', 1, 'admin', 'http://g.search1.alicdn.com/img/bao/uploaded/i4/i2/T1CpG7FDXaXXXXXXXX_!!0-item_pic.jpg', NULL, 35.00, NULL, 8835, 0.00, 0, 35.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'B', NULL, 1, 1041583704, 1, 8074, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35048, 9999, 1, 1, '39702553551', '2014早秋女装新款秋装薄外套短款针织衫女开衫春秋长袖宽松毛衣夏', '强烈推荐：2014早秋女装新款秋装薄外套短款针织衫女开衫春秋长袖宽松毛衣夏，优惠活动折扣价格：39.00元，已成交：8819人收货笔。', '秋装 早秋 开衫 短款 针织衫 毛衣 长袖 宽松 外套 女装', '飞鸿踏雪zk', 1, 'admin', 'http://g.search2.alicdn.com/img/bao/uploaded/i4/i3/TB1k5mHFVXXXXX1XpXXXXXXXXXX_!!0-item_pic.jpg', NULL, 39.00, NULL, 8819, 0.00, 0, 39.00, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 90430211, 1, 6342, 0, NULL, NULL, NULL, 1409071956, 0, 0),
(35049, 9999, 1, 1, '39035442703', '夏装新款2014大码女装印花披肩中长款防晒衣开衫中袖星星雪纺衫女', '强烈推荐：夏装新款2014大码女装印花披肩中长款防晒衣开衫中袖星星雪纺衫女，优惠活动折扣价格：19.80元，已成交：8761人收货笔。', '开衫 防晒 雪纺衫 中长 夏装 披肩 印花 女装 新款 星星', 'emmanuel52', 1, 'admin', 'http://g.search3.alicdn.com/img/bao/uploaded/i4/i2/T1dy.lFINXXXXXXXXX_!!0-item_pic.jpg', NULL, 19.80, NULL, 8761, 0.00, 0, 19.80, 10000, 1409071956, 1409331156, 1, 'underway', NULL, 'C', NULL, 1, 1024502014, 1, 2463, 0, NULL, NULL, NULL, 1409071956, 0, 0);

CREATE TABLE IF NOT EXISTS `ftxia_items_cate` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `sort` varchar(50) NOT NULL default 'id  desc',
  `wait_time` varchar(50) NOT NULL default '0',
  `end_time` varchar(50) NOT NULL default '0',
  `shop_type` varchar(11) NOT NULL COMMENT 'B:商城C:集市',
  `mix_price` decimal(11,2) default NULL,
  `max_price` decimal(11,2) default NULL,
  `mix_volume` int(11) default NULL,
  `max_volume` int(11) default NULL,
  `ems` varchar(50) NOT NULL default '0',
  `thiscid` int(11) NOT NULL default '0' COMMENT '是否当前分类',
  `add_time` int(10) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

INSERT INTO `ftxia_items_cate` (`id`, `name`, `tags`, `pid`, `spid`, `remark`, `sort`, `wait_time`, `end_time`, `shop_type`, `mix_price`, `max_price`, `mix_volume`, `max_volume`, `ems`, `thiscid`, `add_time`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc`) VALUES
(1, '女装', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 1, 1, '', '', ''),
(2, '男装', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 2, 1, '', '', ''),
(3, '内衣', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 3, 1, '', '', ''),
(4, '女鞋', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 4, 1, '', '', ''),
(5, '男鞋', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 5, 1, '', '', ''),
(6, '女包', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 6, 1, '', '', ''),
(7, '男包', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 7, 1, '', '', ''),
(8, '护肤', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 8, 1, '淘宝网九块九办公用品,户外体育用品9.9元包邮-卷皮尺', '淘宝网,九块九,办公用品,户外体育用品,9.9元包邮,卷皮尺', '卷皮尺服饰频道为大家推荐淘宝网九块九办公用品，户外体育用品9.9元包邮，超值优惠天天有。'),
(9, '十九块九', '', 0, '0', '', 'rand()', '0', '0', '', 10.00, 19.99, 0, 0, '0', 1, 0, 99, 0, '十九块九(19.9)包邮,淘宝网限时折扣,品牌折扣店', '十九块九,19.9包邮,品牌折扣店,限时折扣,淘宝网', '十九块九（19.9）包邮独家合作，每天为您提供淘宝网品牌折扣店打折商品，天天有新款，20元封顶，限时抢购。'),
(10, '品牌秒杀', '', 0, '0', '', 'rand()', '0', '0', 'B', 0.00, 0.00, 0, 0, '0', 1, 0, 99, 0, '品牌秒杀,正品特卖,品牌折扣全场9.9元起限量秒杀', '品牌秒杀,正品特卖,品牌折扣,秒杀', '品牌秒杀目前和线上多家知名品牌独家合作，每日精选优良品牌折扣，全场低至1折起，更有大牌9.9元限量秒杀，每天10点准时开抢。聚品质，秒大牌，就在卷皮尺品牌秒杀。'),
(11, '明日预告', '', 0, '0', '', 'id  desc', '1', '1', '', 0.00, 19.90, 0, 0, '0', 1, 0, 99, 0, '', '', ''),
(12, '九块九', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 9.99, 0, 0, '0', 1, 0, 99, 0, '九块九(9.9)包邮,淘宝网限时折扣,品牌折扣店', '九块九,9.9包邮,品牌折扣店,限时折扣,淘宝网', '九块九（9.9）包邮独家合作，每天为您提供淘宝网品牌折扣店打折商品，天天有新款，10元封顶，限时抢购。'),
(13, '零食', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 10, 1, '', '', ''),
(14, '电器', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 11, 1, '', '', ''),
(15, '日用', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 12, 1, '', '', ''),
(16, '汽车', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 13, 1, '', '', ''),
(17, '母婴', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 14, 1, '', '', ''),
(18, '鲜果', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 15, 1, '', '', ''),
(19, '数码', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 16, 1, '', '', ''),
(20, '家电', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 17, 1, '', '', ''),
(21, '成人', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 18, 1, '', '', ''),
(22, '童装', '', 0, '0', '', 'rand()', '0', '0', '', 0.00, 0.00, 0, 0, '0', 0, 0, 19, 1, '', '', '');

CREATE TABLE IF NOT EXISTS `ftxia_items_comment` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `item_id` int(10) unsigned NOT NULL,
  `rateid` varchar(30) default NULL COMMENT '淘宝评论唯一ID号',
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `info` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `last_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_items_like` (
  `id` int(11) NOT NULL auto_increment,
  `item_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_items_orig` (
  `id` int(11) NOT NULL auto_increment,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `ftxia_items_orig` (`id`, `img`, `name`, `type`, `url`, `ordid`) VALUES
(1, '50b2e721a6c1e_thumb.jpg', '淘宝', 'C', 'taobao.com', 0),
(2, '50b2e726d4ade_thumb.jpg', '天猫', 'B', 'tmall.com', 0);

CREATE TABLE IF NOT EXISTS `ftxia_items_site` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_link` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;


CREATE TABLE IF NOT EXISTS `ftxia_mail_queue` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `mail_to` varchar(120) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` text NOT NULL,
  `priority` tinyint(1) unsigned NOT NULL default '1',
  `err_num` tinyint(1) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL,
  `lock_expiry` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_menu` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  `action_name` varchar(20) NOT NULL,
  `data` varchar(120) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `often` tinyint(1) NOT NULL default '0',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `display` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=331 ;

INSERT INTO `ftxia_menu` (`id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display`) VALUES
(1, '系统设置', 0, 'setting', 'index', '', '', 0, 1, 1),
(2, '核心设置', 1, 'setting', 'index', '', '', 0, 1, 1),
(3, '首页参数', 2, 'setting', 'index', '&amp;type=site', '', 0, 2, 1),
(4, '邮件设置', 148, 'setting', 'index', '&type=mail', '', 0, 5, 1),
(6, '菜单管理', 2, 'menu', 'index', '', '', 0, 7, 1),
(7, '新增', 6, 'menu', 'add', '', '', 0, 0, 0),
(8, '编辑', 6, 'menu', 'edit', '', '', 0, 0, 0),
(9, '删除', 6, 'menu', 'delete', '', '', 0, 0, 0),
(10, '内容管理', 0, 'operate', 'index', '', '', 0, 6, 1),
(12, '广告管理', 11, 'ad', 'index', '', '', 0, 0, 1),
(13, '广告位管理', 11, 'adboard', 'index', '', '', 0, 0, 1),
(14, '友情链接', 288, 'link', 'index', '', '', 0, 2, 1),
(15, '友情链接', 14, 'link', 'index', '', '', 0, 0, 1),
(17, '新增', 15, 'link', 'add', '', '', 0, 0, 0),
(18, '编辑', 15, 'link', 'edit', '', '', 0, 0, 0),
(19, '删除', 15, 'link', 'delete', '', '', 0, 0, 0),
(23, '新增', 12, 'ad', 'add', '', '', 0, 0, 0),
(24, '编辑', 12, 'ad', 'edit', '', '', 0, 0, 0),
(25, '删除', 12, 'ad', 'delete', '', '', 0, 0, 0),
(26, '新增', 13, 'adboard', 'add', '', '', 0, 0, 0),
(27, '编辑', 13, 'adboard', 'edit', '', '', 0, 0, 0),
(28, '删除', 13, 'adboard', 'delete', '', '', 0, 0, 0),
(31, '数据库管理', 287, 'backup', 'index', '', '', 0, 2, 1),
(32, '数据备份', 31, 'backup', 'index', '', '', 0, 0, 1),
(33, '数据恢复', 31, 'backup', 'restore', '', '', 0, 0, 1),
(34, '清理缓存', 2, 'cache', 'index', '', '', 1, 0, 0),
(36, '禁止 IP', 117, 'ipban', 'index', '', '', 1, 3, 0),
(37, '新增', 36, 'ipban', 'add', '', '', 0, 0, 0),
(38, '编辑', 36, 'ipban', 'edit', '', '', 0, 0, 0),
(50, '数据管理', 0, 'content', 'index', '', '', 0, 2, 1),
(51, '商品管理', 50, 'article', 'index', '', '', 0, 2, 1),
(52, '商品管理', 51, 'items', 'index', '', '', 0, 2, 1),
(54, '编辑', 52, 'article', 'edit', '', '', 0, 3, 0),
(56, '商品分类', 292, 'items_cate', 'index', '', '', 0, 6, 1),
(57, '新增', 56, 'article_cate', 'add', '', '', 0, 0, 0),
(58, '编辑', 56, 'article_cate', 'edit', '', '', 0, 0, 0),
(59, '删除', 56, 'article_cate', 'delete', '', '', 0, 0, 0),
(60, '管理员管理', 1, 'admin', 'index', '', '', 0, 3, 1),
(61, '管理员管理', 60, 'admin', 'index', '', '', 0, 1, 1),
(62, '新增', 61, 'admin', 'add', '', '', 0, 0, 0),
(63, '编辑', 61, 'admin', 'edit', '', '', 0, 0, 0),
(64, '删除', 61, 'admin', 'delete', '', '', 0, 0, 0),
(65, '分组管理', 60, 'admin_role', 'index', '', '', 0, 2, 1),
(66, '新增', 65, 'admin_role', 'add', '', '', 0, 0, 0),
(70, '用户管理', 0, 'user', 'index', '', '', 0, 4, 1),
(117, '会员管理', 70, 'user', 'index', '', '', 0, 1, 1),
(118, '编辑', 149, 'user', 'edit', '', '', 0, 4, 0),
(119, '新增', 149, 'user', 'add', '', '', 0, 3, 0),
(148, '站点设置', 2, 'setting', 'index', '', '', 0, 0, 1),
(149, '会员管理', 117, 'user', 'index', '', '', 0, 1, 1),
(150, '删除', 149, 'user', 'delete', '', '', 0, 5, 0),
(151, '导航设置', 288, 'nav', 'index', '', '', 0, 1, 1),
(152, '主导航', 151, 'nav', 'index', '&type=main', '', 0, 1, 1),
(153, '顶部导航', 151, 'nav', 'index', '&type=top', '', 0, 2, 1),
(154, '文章管理', 10, 'article', 'index', '', '', 0, 1, 1),
(155, '文章管理', 154, 'article', 'index', '', '', 0, 1, 1),
(156, '文章分类', 154, 'article_cate', 'index', '', '', 0, 3, 1),
(157, '添加文章', 155, 'article', 'add', '', '', 0, 2, 1),
(158, '编辑', 155, 'article', 'edit', '', '', 0, 3, 0),
(159, '删除', 155, 'article', 'delete', '', '', 0, 4, 0),
(160, '新增', 156, 'article_cate', 'add', '', '', 0, 0, 0),
(161, '编辑', 156, 'article_cate', '编辑', '', '', 0, 0, 0),
(162, '删除', 156, 'article_cate', 'delete', '', '', 0, 0, 0),
(164, '商品采集', 290, 'item_collect', 'index', '', '', 0, 1, 1),
(181, '删除', 36, 'ipban', 'delete', '', '', 0, 0, 0),
(185, 'API接口', 245, 'items_site', 'index', '', '', 1, 1, 1),
(186, '商品评论', 294, 'items_comment', 'index', '', '', 0, 7, 1),
(187, '删除', 186, 'items_comment', 'delete', '', '', 0, 0, 0),
(190, '删除', 52, 'items', 'delete', '', '', 0, 4, 0),
(195, '登陆接口', 245, 'oauth', 'index', '', '', 0, 2, 1),
(198, '新增', 196, 'message', 'add', '', '', 0, 0, 0),
(199, '商品来源', 288, 'items_orig', 'index', '', '', 0, 6, 1),
(200, '新增', 199, 'items_orig', 'add', '', '', 0, 0, 0),
(201, '编辑', 199, 'items_orig', 'edit', '', '', 0, 0, 0),
(202, '删除', 199, 'items_orig', 'delete', '', '', 0, 0, 0),
(203, '商品审核', 293, 'items', 'check', '', '', 0, 5, 1),
(232, '站内信管理', 70, 'message', 'index', '', '', 0, 2, 1),
(233, '系统通知', 232, 'message', 'index', '&type=1', '', 0, 0, 1),
(234, '用户私信', 232, 'message', 'index', '&type=2', '', 0, 0, 1),
(235, '通知模版', 2, 'message_tpl', 'index', '&type=msg', '', 0, 5, 1),
(236, '添加模版', 235, 'message_tpl', 'add', '', '', 0, 7, 1),
(237, '编辑', 235, 'message_tpl', 'edit', '', '', 0, 255, 0),
(238, '删除', 235, 'message_tpl', 'delete', '', '', 0, 255, 0),
(242, '积分记录', 269, 'score', 'logs', '', '', 0, 2, 1),
(245, '系统接口', 1, 'apis', 'index', '', '', 0, 2, 1),
(247, '应用中心', 246, 'plugin', 'index', '', '', 0, 0, 1),
(248, '已安装应用', 246, 'plugin', 'list', '', '', 0, 0, 1),
(249, '添加商品', 51, 'items', 'add', '', '', 0, 1, 1),
(256, '积分礼品', 70, 'score_item', 'index', '', '', 0, 3, 1),
(257, '积分商品', 256, 'score_item', 'index', '', '', 0, 2, 1),
(258, '商品分类', 256, 'score_item_cate', 'index', '', '', 0, 1, 1),
(259, '新增', 258, 'score_item_cate', 'add', '', '', 0, 1, 0),
(260, '编辑', 258, 'score_item_cate', 'edit', '', '', 0, 2, 0),
(261, '删除', 258, 'score_item_cate', 'delete', '', '', 0, 3, 0),
(262, '订单管理', 256, 'score_order', 'index', '', '', 0, 3, 1),
(263, '添加商品', 257, 'score_item', 'add', '', '', 0, 2, 1),
(264, '编辑', 257, 'score_item', 'edit', '', '', 0, 3, 0),
(265, '删除', 257, 'score_item', 'edit', '', '', 0, 4, 0),
(269, '积分设置', 2, 'score', 'setting', '', '', 0, 4, 1),
(270, '邮件模板', 235, 'message_tpl', 'index', '&type=mail', '', 0, 6, 1),
(271, '短消息模板', 235, 'message_tpl', 'index', '&type=msg', '', 0, 5, 1),
(275, '站点设置', 148, 'setting', 'index', '', '', 0, 1, 1),
(276, '积分设置', 269, 'score', 'setting', '', '', 0, 1, 1),
(277, '商品管理', 52, 'items', 'index', '', '', 0, 1, 1),
(278, '文章管理', 155, 'article', 'index', '', '', 0, 1, 1),
(279, '会员管理', 149, 'user', 'index', '', '', 0, 1, 1),
(280, '积分商品', 257, 'score_item', 'index', '', '', 0, 1, 1),
(281, '评论采集', 291, 'cmt_taobao', 'index', '', '', 0, 1, 1),
(282, 'SEO设置', 2, 'seo', 'url', '', '', 0, 6, 1),
(283, 'URL静态化', 282, 'seo', 'url', '', '', 0, 255, 1),
(284, '页面SEO', 282, 'seo', 'page', '', '', 0, 255, 1),
(286, '注册登陆', 148, 'setting', 'user', '', '', 0, 3, 1),
(287, '插件管理', 0, 'plugins', 'index', '', '', 0, 5, 1),
(288, '插件管理', 287, 'plugins', 'index', '', '', 0, 1, 1),
(290, '采集数据', 0, 'collect', 'index', '', '', 0, 3, 1),
(291, '评论采集', 290, 'collcomment', 'index', '', '', 0, 2, 1),
(292, '商品分类', 50, 'fenlei', 'index', '', '', 0, 3, 1),
(293, '商品审核', 50, 'shenhe', 'index', '', '', 0, 4, 1),
(294, '商品评论', 50, 'comment', 'index', '', '', 0, 5, 1),
(295, '站内帮助', 10, 'help', 'index', '', '', 0, 2, 1),
(296, '帮助文件', 295, 'help', 'index', '', '', 0, 1, 1),
(297, '帮助文件', 296, 'help', 'index', '', '', 0, 1, 1),
(298, '添加帮助', 296, 'help', 'add', '', '', 0, 2, 1),
(299, '采集器管理', 164, 'robots', 'index', '', '', 0, 2, 1),
(300, '添加采集器', 299, 'robots', 'add', '', '', 0, 255, 1),
(301, '添加采集器', 164, 'robots', 'add_do', '', '', 0, 1, 1),
(302, '清空数据', 51, 'items', 'clear', '', '', 0, 4, 1),
(304, '单个商品采集', 281, 'cmt_taobao', 'item', '', '', 0, 255, 1),
(305, '过期商品', 51, 'items', 'outtime', '', '', 0, 3, 1),
(306, '其他设置', 148, 'setting', 'index', '&type=other', '', 0, 6, 1),
(307, '一键延时', 51, 'items', 'key_addtime', '', '', 0, 5, 1),
(308, '预告采集', 290, 'advanced', 'index', '', '', 0, 255, 1),
(309, '预告采集', 308, 'advanced', 'index', '', '', 0, 255, 1),
(310, '数据设置', 50, 'setting', 'index', '', '', 0, 1, 1),
(311, '值得买', 310, 'setting', 'index', '&type=zhi', '', 0, 3, 1),
(312, '还会喜欢', 310, 'setting', 'index', '&type=orlike', '', 0, 255, 1),
(313, '关键字屏蔽', 291, 'pjword', 'index', '', '', 0, 255, 1),
(315, '举报管理', 51, 'report', 'index', '', '', 0, 255, 1),
(319, '审核未通过', 293, 'items', 'notcheck', '', '', 0, 255, 1),
(323, '商品分类', 249, 'items_cate', 'ajax_getchilds', '', '', 0, 255, 0),
(324, '一键获取商品', 249, 'items', 'ajaxgetid', '', '', 0, 255, 1),
(325, '一键采集', 299, 'robots', 'collect', '&amp;auto=1', '', 0, 255, 0),
(326, '商品检测', 164, 'robots', 'item_check', '', '', 0, 3, 1),
(327, '采集设置', 2, 'setting', 'index', '&amp;type=robot', '', 0, 2, 1),
(328, '下架商品', 51, 'items', 'sellout', '', '', 0, 255, 1),
(329, '特价采集', 164, 'tejia', 'index', '', '', 0, 255, 1),
(330, '特价采集', 329, 'tejia', 'index', '', '', 0, 255, 1);

CREATE TABLE IF NOT EXISTS `ftxia_message` (
  `id` int(10) NOT NULL auto_increment,
  `ftid` int(10) unsigned NOT NULL,
  `from_id` int(10) NOT NULL,
  `from_name` varchar(50) NOT NULL,
  `to_id` int(10) NOT NULL,
  `to_name` varchar(50) NOT NULL,
  `add_time` int(10) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_message_tpl` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(20) NOT NULL,
  `is_sys` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL COMMENT '别名',
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

INSERT INTO `ftxia_message_tpl` (`id`, `type`, `is_sys`, `name`, `alias`, `content`) VALUES
(1, 'msg', 1, '登录', 'login', '<p>\n	欢迎\n</p>\n<p>\n	&nbsp; 华美网络欢迎您\n</p>\n<p>\n	<br />\n</p>'),
(3, 'mail', 1, '找回密码', 'findpwd', '<div style="border-bottom:#ff5500 3px solid;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;width:602px;font:12px/20px ''lucida Grande'',Verdana;white-space:normal;orphans:2;letter-spacing:normal;height:auto;color:#000000;overflow:hidden;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">\n	<br class="Apple-interchange-newline" />\n	<div style="margin-top:20px;width:185px;float:right;height:20px;">\n	</div>\n</div>\n<div style="padding-bottom:25px;widows:2;text-transform:none;background-color:#f6f6f6;text-indent:0px;padding-left:30px;width:542px;padding-right:30px;font:12px/20px ''lucida Grande'',Verdana;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;clear:both;word-spacing:0px;padding-top:25px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">\n	<p style="line-height:23px;font-size:14px;font-weight:bold;">\n		<span style="color:#ff0000;font-size:14px;font-weight:bold;margin-right:5px;">Hi！{$username}</span>请您尽快点击进行密码重置\n	</p>\n	<div style="border-bottom:#dedede 1px solid;border-left:#dedede 1px solid;padding-bottom:15px;line-height:25px;background-color:#ffffff;margin-top:12px;padding-left:25px;width:492px;padding-right:25px;font-size:14px;border-top:#dedede 1px solid;border-right:#dedede 1px solid;padding-top:25px;">\n		我们收到了您发出的密码重置请求。请您点击该链接重置您的密码：<a style="outline-style:none;outline-color:invert;outline-width:medium;color:#1e5494;cursor:pointer;text-decoration:underline;" href="{$reset_url}" target="_blank">{$reset_url}</a><span class="Apple-converted-space">&nbsp;</span><br />\n<span style="color:#999999;">(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏，本链接只能当天内有效)</span><br />\n上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录了。\n	</div>\n	<p style="border-bottom:#e3e3e3 1px solid;line-height:30px;height:30px;color:#666666;">\n		此邮件为系统邮件，系统不接受回信，请勿直接回复\n	</p>\n</div>\n<div style="text-align:center;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/30px ''lucida Grande'',Verdana;white-space:normal;orphans:2;margin-bottom:30px;letter-spacing:normal;height:30px;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">\n	Copyright (c) 华美网络 2012-2014,All Rights Reserved\n</div>');

CREATE TABLE IF NOT EXISTS `ftxia_nav` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` tinyint(1) NOT NULL default '1',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `mod` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

INSERT INTO `ftxia_nav` (`id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status`) VALUES
(1, 'top', '0元兑换', 'gift', '', 0, 255, 'sys', 1);

CREATE TABLE IF NOT EXISTS `ftxia_oauth` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `config` text NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_online` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `account` varchar(20) NOT NULL default 'Guest',
  `username` varchar(20) NOT NULL default '游客',
  `lasttime` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=121 ;

INSERT INTO `ftxia_online` (`id`, `uid`, `account`, `username`, `lasttime`, `ip`) VALUES
(120, 1, '16IU.COM', '16IU.COM', 1409073058, '127.0.0.1');

CREATE TABLE IF NOT EXISTS `ftxia_pjword` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `word` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;


CREATE TABLE IF NOT EXISTS `ftxia_report` (
  `id` int(11) NOT NULL auto_increment,
  `item_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `reason` int(2) default '7',
  `comment` varchar(200) default NULL,
  `email` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_robots` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `keyword` varchar(200) default NULL,
  `cid` int(11) NOT NULL default '16',
  `cate_id` int(11) default '0' COMMENT '所属分类',
  `shop_type` varchar(50) NOT NULL default 'all',
  `start_coupon_rate` int(11) NOT NULL default '100',
  `end_coupon_rate` int(11) NOT NULL default '10000',
  `start_commissionRate` int(11) NOT NULL default '1000',
  `end_commissionRate` int(11) NOT NULL default '9000',
  `start_credit` varchar(50) NOT NULL default '1heart',
  `end_credit` varchar(50) NOT NULL default '5goldencrown',
  `start_price` decimal(8,2) default '0.00',
  `end_price` decimal(8,2) default '999.00',
  `start_volume` int(11) NOT NULL default '0',
  `end_volume` int(11) NOT NULL default '999999',
  `ems` int(11) default '0' COMMENT '采集包邮',
  `recid` int(11) default '1' COMMENT '是否更新分类',
  `page` int(11) NOT NULL default '100' COMMENT '采集页数',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` int(11) default '1',
  `sort` varchar(50) NOT NULL default 'volume|desc',
  `last_page` int(11) default '0' COMMENT '上次采集页数',
  `last_time` int(11) default NULL,
  `http_mode` int(11) default '0' COMMENT '采集模式',
  `tb_cid` int(11) default NULL COMMENT '淘宝网分类ID',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

INSERT INTO `ftxia_robots` (`id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid`) VALUES
(1, '女装', '', 0, 1, 'all', 0, 0, 1000, 10000, '1heart', '5goldencrown', 0.00, 99.00, 0, 99999, 0, 0, 20, 1, 1, 'volume|desc', 2, 1409071955, 1, 16);

CREATE TABLE IF NOT EXISTS `ftxia_score_item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(120) NOT NULL,
  `img` varchar(255) NOT NULL,
  `score` int(10) unsigned NOT NULL default '0',
  `stock` mediumint(8) unsigned NOT NULL default '0',
  `user_num` mediumint(8) unsigned NOT NULL default '1',
  `buy_num` mediumint(8) NOT NULL default '0',
  `num_iid` varchar(11) default NULL,
  `price` decimal(11,2) default NULL,
  `coupon_price` decimal(11,2) default NULL,
  `desc` text NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `start_time` int(10) default NULL COMMENT '兑换开始时间',
  `end_time` int(10) default NULL COMMENT '兑换结束时间',
  `add_time` int(10) default NULL COMMENT '添加时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

INSERT INTO `ftxia_score_item` (`id`, `cate_id`, `title`, `img`, `score`, `stock`, `user_num`, `buy_num`, `num_iid`, `price`, `coupon_price`, `desc`, `ordid`, `start_time`, `end_time`, `add_time`) VALUES
(1, 1, '绒卫衣+短裤休闲运动套装', '1312/09/52a5cf9b61347_s.jpg', 9000, 10, 1, 0, '20025717408', 99.00, 9.90, '绒卫衣+短裤休闲运动套装 超值！', 1, 1386554400, 1417968000, 0),
(2, 4, '韩国创意零钱包', '1312/09/52a5d5c6d431d_s.jpg', 8000, 10, 1, 0, '27529404343', 12.80, 912.80, '韩国创意文具奖品 超人复古帆布笔袋男女学生大容量收纳包 零钱包', 3, 1386604800, 1418140800, 0),
(3, 6, '超细纤维快干大浴巾', '1312/09/52a5d77a57708_s.jpg', 9900, 10, 1, 0, '21927471173', 66.00, 9.90, '超细纤维快干大浴巾 超强吸水男女通用毛巾浴巾加大70*140cm 包邮', 2, 1386640800, 1418054400, 0),
(4, 2, '素派男士控油保湿洗面奶', '1312/09/52a5d8c6ed638_s.jpg', 9900, 10, 1, 0, '20150021154', 99.00, 9.90, '男士洗面奶深层清洁控油去黑头去油祛痘洁面乳护肤品美白保湿正品', 4, 1386640800, 1418140800, 0),
(5, 6, '芙蓉天使加厚雪花片拼插积木', '1312/09/52a5da961f446_s.jpg', 8900, 10, 1, 0, '27035484411', 48.00, 9.90, '芙蓉天使 10色加厚雪花片 儿童快乐益智高拼插积木 宝宝益智玩具', 5, 1386640800, 1418054400, 0);

CREATE TABLE IF NOT EXISTS `ftxia_score_item_cate` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL default '1',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

INSERT INTO `ftxia_score_item_cate` (`id`, `name`, `status`, `ordid`) VALUES
(1, '女装', 1, 1),
(2, '男装', 1, 2),
(3, '鞋子', 1, 3),
(4, '包包', 1, 4),
(5, '零食', 1, 5),
(6, '其他', 1, 6);

CREATE TABLE IF NOT EXISTS `ftxia_score_log` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `score` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `ftxia_score_log` (`id`, `uid`, `uname`, `action`, `score`, `add_time`) VALUES
(1, 1, '美折网', 'login', 1, 1404661544),
(2, 1, '美折网', 'login', 1, 1409071036);

CREATE TABLE IF NOT EXISTS `ftxia_score_order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `order_sn` varchar(100) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `item_num` mediumint(8) NOT NULL,
  `item_name` varchar(120) NOT NULL,
  `consignee` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `order_score` int(10) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `ftxia_setting` (`name`, `data`, `remark`) VALUES
('site_name', '皮卷淘宝客程序——浩天淘宝客工作室免费提供淘宝客程序', ''),
('site_keywords', '', ''),
('site_description', '', ''),
('site_status', '1', ''),
('closed_reason', '', ''),
('site_icp', '', ''),
('statistics_code', '', ''),
('statics_url', '', ''),
('mail_server', 'a:6:{s:4:"mode";s:4:"smtp";s:4:"host";s:0:"";s:4:"port";s:0:"";s:4:"from";s:0:"";s:13:"auth_username";s:0:"";s:13:"auth_password";s:0:"";}', ''),
('item_check', '1', ''),
('score_rule', 'a:12:{s:8:"register";s:2:"20";s:13:"register_nums";s:1:"1";s:5:"login";s:1:"1";s:10:"login_nums";s:1:"1";s:4:"sign";s:1:"5";s:9:"sign_nums";s:1:"1";s:8:"sign_add";s:1:"5";s:8:"sign_day";s:1:"8";s:11:"union_visit";s:2:"20";s:16:"union_visit_nums";s:2:"10";s:9:"union_reg";s:3:"100";s:14:"union_reg_nums";s:2:"10";}', ''),
('integrate_code', 'default', ''),
('integrate_config', '', ''),
('avatar_size', '24,32,48,64,100,200', ''),
('attr_allow_exts', 'jpg,gif,png,jpeg,swf', ''),
('attr_allow_size', '2048', ''),
('itemcate_img', 'a:2:{s:5:"width";s:3:"150";s:6:"height";s:3:"170";}', ''),
('reg_protocol', '加入和使用美折网平台表明您已经阅读并同意本使用条款，您的会员活动会遵从本使用条款。本协议由您与美折网共同缔结，本协议具有合同效力。\r\n　　\r\n　　本协议中协议双方合称协议方，美折网在协议中亦称为“美折网”。　\r\n　\r\n　　一、协议内容及签署　　\r\n\r\n　　1、本协议内容包括协议正文及所有美折网已经发布的或将来可能发布的各类规则，包括但不仅限于网站公告及帮助在内的官方声明。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何美折网及其关联公司提供的服务均受本协议约束。\r\n\r\n　　2、您应当在使用美折网服务之前认真阅读全部协议内容，如您对协议有任何疑问的，应向美折网咨询。但无论您事实上是否在使用美折网服务之前认真阅读了本协议内容，只要您使用九块邮服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得美折网对您问询的解答等理由，主张本协议无效，或要求撤销本协议。\r\n\r\n　　3、美折网有权根据需要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。修改后的使用协议一旦在网页上公布即有效代替原来的使用协议。此外，当您使用美折网特殊服务时，您和我们应遵守美折网随时公布的与该服务相关的指引、公告以及规则。前述所有的指引、公告以及规则，均构成本使用协议的一部分。如您不同意相关变更，应当立即停止使用美折网服务。您继续使用美折网服务的，即表示您接受经修订的协议和规则。\r\n\r\n　　4、您应当是具备完全民事权利能力和完全民事行为能力的自然人、法人或其他组织。若您不具备前述主体资格，则您及您的监护人应承担因此而导致的一切后果，且美折网有权注销（永久冻结）您的美折网账户，并向您及您的监护人索偿。\r\n\r\n　　5、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用美折网服务。您一旦使用美折网服务，即视为您已了解并完全同意本使用协议各项内容，包括美折网对使用协议随时所做的任何修改，并成为美折网用户（以下简称“用户”）。\r\n\r\n　　二、美折网服务使用规范\r\n\r\n　　1、遵守法律\r\n\r\n　　您同意遵守中华人民共和国相关法律法规的所有规定，并对以任何方式使用您的密码和您的帐号使用本服务的任何行为及其结果承担全部责任。如您的行为违反国家法律和法规的任何规定，有可能构成犯罪的，将被追究刑事责任，并由您承担全部法律责任。\r\n　　同时如果美折网有理由认为您的任何行为，包括但不限于您的任何言论和其它行为违反或可能违反国家法律和法规的任何规定，美折网可在任何时候不经任何事先通知终止向您提供服务。\r\n\r\n　　2、您的注册义务为了能使用本服务，您同意以下事项：依本服务注册提示请您填写正确的注册邮箱、密码和名号，并确保今后更新的登录邮箱、名号、头像等资料的有效性和合法性。若您提供任何违法、不道德或美折网认为不适合在美折网上展示的资料；或者美折网有理由怀疑您的资料属于程序或恶意操作，美折网有权暂停或终止您的帐号，并拒绝您于现在和未来使用本服务之全部或任何部分。　　美折网无须对任何用户的任何登记资料承担任何责任，包括但不限于鉴别、核实任何登记资料的真实性、正确性、完整性、适用性及/或是否为最新资料的责任。\r\n\r\n　　3、用户帐号、密码及安全\r\n\r\n　　完成本服务的注册程序并成功注册之后，您可使用您的账号和密码，登录到您在美折网的帐户（下称“帐号”）。保护您的帐号安全，是您的责任。\r\n　　您应对所有使用您的密码及帐号的活动负完全的责任。您同意：\r\n\r\n　　1）您的美折网帐号遭到未获授权的使用，或者发生其它任何安全问题时，您将立即通知美折网；\r\n\r\n　　2）如果您未保管好自己的帐号和密码，因此而产生的任何损失或损害，美折网无法也不会承担任何责任；\r\n\r\n　　3）每个用户都要对其帐号中的所有行为和事件负全责。如果您未保管好自己的帐号和密码而对您、美折网或第三方造成了损害，您将负全部责任。\r\n\r\n　　4、美折网隐私权政策　　您提供的登记资料及美折网保留的有关您的若干其它资料将受到中国有关隐私的法律和本公司《隐私声明》之规范。\r\n\r\n　　5、提供者之责任\r\n\r\n　　根据有关法律法规，美折网在此郑重提醒您注意，任何经由本服务而发布、上传的文字、资讯、资料、照片、图形、视讯、信息或其它资料（以下简称“内容 ”），无论是公开还是私下传送，均由内容提供者承担责任。美折网仅为用户提供内容存储空间，无法控制经由本服务传送之内容，因此不保证内容的正确性、完整性或品质。您已预知使用本服务时，可能会接触到令人不快、不适当或令人厌恶之内容。在任何情况下，华美网络均不为任何内容负责，但美折网有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停用户使用本服务的全部或部分，保存有关记录，并向有关机关报告。\r\n\r\n　　6、用户行为\r\n\r\n　　用户同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶\r\n　　1）用户不得发布或以其它方式传送含有下列内容之一的信息：\r\n　　* 反对宪法所确定的基本原则的；\r\n　　* 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\r\n　　* 损害国家荣誉和利益的；\r\n　　* 煽动民族仇恨、民族歧视、破坏民族团结的；\r\n　　* 破坏国家宗教政策，宣扬邪教和封建迷信的；\r\n　　* 散布谣言，扰乱社会秩序，破坏社会稳定的；\r\n　　* 散布淫秽、色情、赌博、暴力、凶杀、恐怖、吸毒或者教唆犯罪的；\r\n　　* 侮辱或者诽谤他人，侵害他人合法权利的；\r\n　　* 含有虚假、诈骗、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容；\r\n　　* 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；\r\n　　* 含有美折网认为不适合在美折网展示的内容；\r\n\r\n　　2）用户不得出现恶意注册恶意点击等行为。严禁通过购买产品恶意取消订单等非法手段来提高个人收入，一经发现，美折网有权取消会员的资格，并追回已经支付的全部佣金，同时该用户必须承担由此给美折网带来的所有损失。美折网严禁各种针对美折网活动的作弊行为。对于查实的作弊行为，我们将收回该账号全部的邀请奖励、取消邀请资格，给予一定处罚，并列入九块邮黑名单账户。作弊行为包括但不限于：使用相同的电脑、相同的IP地址在同一天内注册多个账号，以骗取奖励邀请的行为、以注册送钱或注册送奖励等利益诱导来骗取注册的行为。\r\n\r\n　　3）用户不得以任何方式危害他人的合法权益；冒充其他任何人或机构，或以虚假不实的方式陈述或谎称与任何人或机构有关发布或以其它方式传送相关内容；\r\n\r\n　　4）将依据任何法律或合约或法定关系（例如由于雇佣关系和依据保密合约所得知或揭露之内部资料、专属及机密资料）知悉但无权传送之任何内容加以发布、发送电子邮件或以其它方式传送；\r\n　　5）将侵害他人著作权、专利权、商标权、商业秘密、或其它专属权利（以下简称“专属权利”）之内容加以发布或以其它方式传送；\r\n\r\n　　6）将任何广告信函、促销资料、“垃圾邮件”、““滥发信件”、“连锁信件”、“直销”或其它任何形式的劝诱资料加以发布、发送或以其它方式传送；\r\n\r\n　　7）将设计目的在于干扰、破坏或限制任何计算机软件、硬件或通讯设备功能之计算机病毒（包括但不限于木马程序（trojan horses）、蠕虫（worms）、定时炸弹、删除蝇（cancelbots）（以下简称“病毒”）或其它计算机代码、档案和程序之任何资料，加以发布、发送或以其它方式传送；\r\n\r\n　　8）干扰或破坏本服务或与本服务相连线之服务器和网络，或违反任何关于本服务连线网络之规定、程序、政策或规范；\r\n\r\n　　9）跟踪、人肉搜索或以其它方式骚扰他人；\r\n\r\n　　10）故意或非故意地违反任何适用的当地、国家法律，以及任何具有法律效力的规则；\r\n\r\n　　11）未经合法授权而截获、篡改、收集、储存或删除他人个人信息、站内邮件或其它数据资料，或将获知的此类资料用于任何非法或不正当目的。\r\n\r\n　　您已认可美折网未对用户的使用行为进行全面控制，您使用任何内容时，包括依赖前述内容之正确性、完整性或实用性时，您同意将自行加以判断并承担所有风险，而不依赖于美折网。您同意美折网依其自行之考虑，删除可经由本服务提供之违反本条款的或其它引起美折网反感的任何内容。\r\n　　您了解并同意，美折网依据法律法规的要求，或基于诚信为了以下目的或在合理必要范围内，认定必须将内容加以保存或揭露时，得加以保存或揭露：\r\n　　a）遵守法律程序；\r\n　　b）执行本使用协议；\r\n　　c）回应任何第三人提出的权利主张；\r\n　　d）保护美折网、其用户及公众之权利、财产或个人安全；\r\n　　e）其它美折网认为有必要的情况。\r\n\r\n　　7、国际使用之特别警告\r\n\r\n　　您已了解国际互联网的无国界性，同意遵守当地所有关于网上行为及内容之法律法规。您特别同意遵守有关从中国或您所在国家或地区输出信息之传输的所有适用法律法规。\r\n\r\n　　8、在美折网发布的公开信息\r\n\r\n　　1）在本使用协议中，“本服务公开使用区域”系指一般公众可以使用的区域；\r\n　　2）用户在美折网上传或发布的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益，用户同意授予美折网所有上述内容在全球范围内的免费、不可撤销的、永久的、可再许或可转让的独家使用权许可，据该许可美折网将有权以展示、推广及其他不为法律所禁止的方式使用前述内容。\r\n\r\n　　9、赔偿\r\n\r\n　　由于您通过本服务提供、发布或传送之内容、您与本服务连线、您违反本使用协议、或您侵害他人任何权利因而衍生或导致任何第三人提出任何索赔或请求，包括合理的律师费，您同意赔偿美折网及其关联企业、职员、代理人、品牌共有人或其它合作伙伴及员工，并使其免受损害，并承担由此引发的全部法律责任。\r\n\r\n　　10、关于使用及储存之一般措施\r\n\r\n　　您承认关于本服务的使用美折网有权制订基本措施及限制，包含但不限于本服务将保留所发布内容或其它发布内容之最长期间，以及一定期间内您使用本服务之次数上限（及每次使用时间之上限）。通过本服务发布或传送之任何信息、通讯资料和其它内容，如被删除或未予储存，您同意美折网毋须承担任何责任。您也同意，美折网有权依其自行之考虑，不论通知与否，随时变更这些一般措施及限制。\r\n\r\n　　三、责任范围和责任限制。\r\n\r\n　　1、美折网负责按"现状"和"可得到"的状态向您提供服务。但对服务不作任何明示或暗示的保证，包括但不限于美折网服务的适用性、没有错误或疏漏、持续性、准确性、可靠性、适用于某一特定用途。同时，美折网也不对服务所涉及的技术及信息的有效性、准确性、正确性、可靠性、质量、稳定、完整和及时性作出任何承诺和保证。\r\n\r\n　　2、与广告商及其他第三方进行交易\r\n\r\n　　您通过本网站与合作者或间接合作者及其他第三方进行任何形式的通讯或商业往来，或参与促销活动，包含相关商品或服务之付款及交付，以及达成的其它任何相关条款、条件、保证或声明，完全为您与合作者或间接合作者及其他第三方之间之行为。您因前述任何交易或前述合作者或间接合作者及其他第三方而遭受的任何性质的损失或损害，美折网对此不负任何法律责任。\r\n　　您了解并同意美折网上的信息是用户自行发布，且可能存在风险和瑕疵。美折网仅作为交易地点。美折网仅作为您获取物品或服务信息、物色交易对象、就物品和/或服务的交易进行协商及开展交易的场所，但美折网无法控制交易所涉及的物品的质量、安全或合法性，商贸信息的真实性或准确性，以及交易各方履行其在贸易协议中各项义务的能力。您应自行谨慎判断确定相关物品及/或信息的真实性、合法性和有效性，并自行承担因此产生的责任与损失。\r\n\r\n　　3、除非法律法规明确要求，或出现以下情况，否则，美折网没有义务对所有用户的注册数据、商品（服务）信息、交易行为以及与交易有关的其它事项进行事先审查：\r\n　　a) 美折网有合理的理由认为特定会员及具体交易事项可能存在重大违法或违约情形。\r\n　　b) 美折网有合理的理由认为用户在返利网的行为涉嫌违法或不当。\r\n\r\n　　4、美折网及其关联公司有权受理您与其他会员因交易产生的争议，并有权单方判断与该争议相关的事实及应适用的规则，进而作出处理决定。该处理决定对您有约束力。如您未在限期内执行处理决定的，则美折网及其关联公司有权利（但无义务）直接使用您美折网账户内的款项。应及时弥补美折网及其关联公司的损失，否则美折网及其关联公司有权直接抵减您在其它合同项下的权益，并有权继续追偿。\r\n　　您理解并同意，美折网及其关联公司并非司法机构，仅能以普通人的身份对证据进行鉴别，美折网及其关联公司对争议的调处完全是基于您的委托，美折网及其关联公司无法保证争议处理结果符合您的期望，也不对争议调处结论承担任何责任。如您因此遭受损失，您同意自行向受益人索偿。\r\n\r\n　　5、您了解并同意，美折网不对因下述任一情况而导致您的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其它无形损失的损害赔偿 (无论美折网是否已被告知该损害赔偿的可能性) ：\r\n　　a) 使用或未能使用美折网服务。\r\n　　b) 第三方未经批准的使用您的账户或更改您的数据；您的传输或数据遭到未获授权的存取或变更。　　c) 通过美折网服务购买或获取任何商品、样品、数据、信息或进行交易等行为或替代行为产生的费用及损失。\r\n　　d) 您对美折网服务的误解，与本服务相关的其它事宜，但本使用协议有明确规定的除外。\r\n　　e) 任何第三方在本服务中所作之声明或行为； 任何非因美折网的原因而引起的与美折网服务有关的其它损失。\r\n\r\n　　6、不论在何种情况下，美折网均不对由于信息网络正常的设备维护，信息网络连接故障，电脑、通讯或其他系统的故障，电力故障，罢工，劳动争议，暴乱，起义，骚乱，生产力或生产资料不足，火灾，洪水，风暴，爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。\r\n\r\n　　7、美折网之专属权利\r\n\r\n　　您了解并同意，本服务及本服务所使用之相关软件（以下简称“软件”）含有受到相关知识产权及其它法律保护之专有保密资料。您也了解并同意，经由本服务合作者或间接合作者及其他第三方或向您呈现之赞助广告或信息所包含之内容，亦受到著作权、商标权、服务商标、专利权或其它专属权利之法律保护。未经美折网或合作者或间接合作者及其他第三方明示授权，您不得修改、出租、出借、出售、散布本服务或软件之任何部份或全部，或据以制作衍生著作，使用擅自修改后的软件，包括但不限于为了未经授权而使用本服务之目的。美折网仅授予您个人、不可移转及非专属之使用权，使您得于单机计算机使用其软件之目的码，但您不得（并不得允许任何第三人）复制、修改、创作衍生著作、进行还原工程、反向组译，或以其它方式发现原始码，或出售、转让、再授权或提供软件设定担保，或以其它方式移转软件之任何权利。您同意将通过由美折网所提供的界面而非任何其它途径使用本服务。\r\n\r\n　　8、用户专属权利\r\n\r\n　　美折网尊重他人知识产权，呼吁用户也要同样尊重知识产权。如果您对他人的知识产权或其他人身权利造成了侵害，美折网将依国家法律法规的规定，或在适当的情形下，将依其服务条款或其相关规范性规定，删除特定内容或以至终止您对账户的使用。\r\n\r\n　　四、协议终止\r\n\r\n　　1、您了解并同意美折网有权自行全权决定以任何理由不经事先通知的中止、终止向您提供部分或全部美折网平台服务，暂时冻结或永久冻结（注销）您的账户，且无须为此向您或任何第三方承担任何责任。您同意美折网基于其自行之考虑，因任何理由，包含但不限于缺乏使用，或美折网认为您已经违反本使用协议的文字及精神，终止您的帐号或本服务之使用（或服务之任何部分），并将您在本服务内任何内容加以移除并删除。您同意依本使用协议任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并同意，美折网可立即关闭或删除您的帐号及您帐号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若本服务之使用被中断或终止或您的帐号及相关信息和文件被关闭或删除，美折网对您或任何第三人均不承担任何责任。\r\n\r\n　　2、出现以下情况时，美折网有权直接以注销账户的方式终止本协议:\r\n　　a) 美折网终止向您提供服务后，您涉嫌再一次直接或间接或以他人名义注册为美折网用户的；\r\n　　b) 您提供的电子邮箱不存在或无法接收电子邮件，且没有其他方式可以与您进行联系，或美折网以其它联系方式通知您更改电子邮件信息,而您在美折网通知后三个工作日内仍未更改为有效的电子邮箱的。\r\n　　c) 您注册信息中的主要内容不真实或不准确或不及时或不完整。\r\n　　d) 本协议（含规则及上述其他）变更时，您明示并通知美折网不愿接受新的服务协议的；\r\n　　e) 其它美折网认为应当终止服务的情况。\r\n\r\n　　3、您有权向美折网要求注销您的账户，经美折网审核同意的，美折网注销（永久冻结）您的账户，届时，您与美折网基于本协议的合同关系即终止。您的账户被注销（永久冻结）后，九块邮没有义务为您保留或向您披露您账户中的任何信息，也没有义务向您或第三方转发任何您未曾阅读或发送过的信息。\r\n\r\n　　4、您了解并同意您与美折网的合同关系终止后，美折网仍享有下列权利\r\n　　a) 继续保存您的注册信息及您使用美折网服务期间的所有交易信息。\r\n　　b) 您在使用美折网服务期间存在违法行为或违反本协议和/或规则的行为的，美折网仍可依据本协议向您主张权利。\r\n\r\n　　5、美折网中止或终止向您提供服务后，对于您在服务中止或终止之前的交易行为依下列原则处理，您应独力处理并完全承担进行以下处理所产生的任何争议、损失或增加的任何费用，并应确保美折网免于因此产生任何损失或承担任何费用：\r\n　　a) 您在服务中止或终止之前已经上传至美折网的物品尚未交易的，美折网有权在中止或终止服务的同时删除此项物品的相关信息；\r\n　　b) 您在服务中止或终止之前已经与其他会员达成买卖合同，但合同尚未实际履行的，美折网有权删除该买卖合同及其交易物品的相关信息；\r\n　　c) 您在服务中止或终止之前已经与其他会员达成买卖合同且已部分履行的，美折网可以不删除该项交易，但美折网有权在中止或终止服务的同时将相关情形通知您的交易对方。\r\n\r\n　　五、一般条款\r\n\r\n　　1）本使用协议、网站公告、帮助中心和免责声明构成您与美折网之全部协议，并规范您对于本服务之使用行为。在您使用相关服务、使用第三方提供的内容或软件时，亦应遵从所适用之附加条款及条件；\r\n　　2）本使用协议及您与美折网之关系，均受到中华人民共和国法律管辖。本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，如无相关法律规定的，则应参照通用国际商业惯例和（或）行业惯例。您与美折网就本服务、本使用协议或其它有关事项发生的争议，应首先友好协商解决，协商不成时应提请中国国际经济贸易仲裁委员会仲裁，仲裁裁决是终局性的，对双方均有约束力；\r\n\r\n　　3）美折网未行使或执行本使用协议任何权利或规定，不构成对前述权利或权利之放弃；\r\n\r\n　　4）倘本使用协议之任何规定因与中华人民共和国法律抵触而无效，您依然同意应依照法律，努力使该规定所反映之当事人意向具备效力，且本使用协议其它规定仍应具有完整的效力及效果；\r\n\r\n　　5) 只要您登录了美折网，就代表您任何以上所有协议。\r\n\r\n　　6）美折网对本使用协议享有最终解释权。', ''),
('user_intro_default', '这个家伙太懒，什么都木留下~', ''),
('ipban_switch', '0', ''),
('score_item_img', 'a:4:{s:6:"swidth";s:3:"210";s:7:"sheight";s:3:"210";s:6:"bwidth";s:3:"350";s:7:"bheight";s:3:"350";}', ''),
('seo_config', 'a:7:{s:5:"index";a:3:{s:5:"title";s:77:"{site_name},免费使用,免费升级,将淘宝客程序免费进行到底！";s:8:"keywords";s:15:"{site_keywords}";s:11:"description";s:18:"{site_description}";}s:4:"cate";a:3:{s:5:"title";s:40:"{cate_name} -  {seo_title} - {site_name}";s:8:"keywords";s:14:"{seo_keywords}";s:11:"description";s:17:"{seo_description}";}s:4:"item";a:3:{s:5:"title";s:61:"{title} 折扣价{coupon_price}元包邮 - 九块九包邮网";s:8:"keywords";s:18:"{tags},{site_name}";s:11:"description";s:19:"{intro},{site_name}";}s:4:"gift";a:3:{s:5:"title";s:57:"金币兑换,金币0元免费兑换精美礼品-卷皮尺";s:8:"keywords";s:29:"金币,免费兑换,卷皮尺";s:11:"description";s:144:"{site_name}会员专享福利，用金币免费兑换精美礼品，包括服饰、鞋包、美妆、配饰、家居等超值商品0元兑换！";}s:9:"gift_item";a:3:{s:5:"title";s:30:"金币兑换,{title}-卷皮尺";s:8:"keywords";s:29:"金币,免费兑换,卷皮尺";s:11:"description";s:103:"{site_name}会员专享福利，用金币免费兑换{title}，更多超值0元兑换商品等你拿！";}s:12:"article_cate";a:3:{s:5:"title";s:25:"{cate_name} - {site_name}";s:8:"keywords";s:11:"{cate_name}";s:11:"description";s:11:"{cate_name}";}s:7:"article";a:3:{s:5:"title";s:28:"{title} - 九块九包邮网";s:8:"keywords";s:21:"{title}{seo_keywords}";s:11:"description";s:24:"{title}{seo_description}";}}', ''),
('item_img', 'a:2:{s:5:"width";s:3:"210";s:6:"height";s:4:"1000";}', ''),
('item_simg', 'a:2:{s:5:"width";s:3:"100";s:6:"height";s:3:"100";}', ''),
('item_bimg', 'a:2:{s:5:"width";s:3:"468";s:6:"height";s:4:"1000";}', ''),
('attach_path', 'data/upload/', ''),
('reg_status', '1', ''),
('reg_closed_reason', '<h1>暂时关闭注册</h1>', ''),
('index_page_size', '80', ''),
('kefu_html', 'http://wpa.qq.com/msgrd?v=3&uin=89677070&site=qq&menu=yes', ''),
('site_url', 'http://www.16iu.com', ''),
('index_sort', 'rand()', ''),
('wait_time', '0', ''),
('end_time', '0', ''),
('index_ems', '0', ''),
('index_mix_price', '', ''),
('index_max_price', '', ''),
('index_shop_type', '', ''),
('index_mix_volume', '0', ''),
('index_max_volume', '', ''),
('item_add_time', '72', ''),
('qq', '89677070', ''),
('header_html', 'http://www.16iu.com', ''),
('zhi_page_size', '6', ''),
('zhi_sort', 'id  desc', ''),
('zhi_shop_type', 'B', ''),
('zhi_mix_price', '', ''),
('zhi_max_price', '', ''),
('zhi_mix_volume', '', ''),
('zhi_max_volume', '', ''),
('zhi_ems', '0', ''),
('orlike_page_size', '16', ''),
('orlike_sort', 'id  desc', ''),
('orlike_shop_type', '', ''),
('orlike_mix_price', '', ''),
('orlike_max_price', '', ''),
('orlike_mix_volume', '', ''),
('orlike_max_volume', '', ''),
('orlike_ems', '0', ''),
('orlike_end_time', '0', ''),
('orlike_time', '0', ''),
('qq_code', '', ''),
('taojindian_html', 'mm_12535557_6730947_23194599', ''),
('tencent_code', 'http://t.qq.com/', ''),
('weibo_code', 'http://www.weibo.com/', ''),
('zhi_end_time', '0', ''),
('zhi_time', '0', ''),
('coupon_add_time', '72', ''),
('index_not_text', '做爱,性交,口交', ''),
('index_cids', 'a:18:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"5";i:5;s:1:"6";i:6;s:1:"7";i:7;s:1:"8";i:8;s:2:"13";i:9;s:2:"14";i:10;s:2:"15";i:11;s:2:"16";i:12;s:2:"17";i:13;s:2:"18";i:14;s:2:"19";i:15;s:2:"20";i:16;s:2:"21";i:17;s:2:"22";}', ''),
('index_admin', '16iu.com', '');

CREATE TABLE IF NOT EXISTS `ftxia_sign` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL default '0',
  `username` varchar(20) NOT NULL,
  `last_date` int(10) NOT NULL default '0',
  `sign_count` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_sign_log` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL default '0',
  `username` varchar(20) NOT NULL,
  `sign_date` int(10) NOT NULL default '0',
  `score` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_tejia_cate` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `cid` int(11) unsigned NOT NULL,
  `pid` int(11) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `add_time` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

INSERT INTO `ftxia_tejia_cate` (`id`, `name`, `cid`, `pid`, `spid`, `add_time`) VALUES
(1, '时尚女装', 1, 0, '0', 0),
(2, '品质男装', 2, 0, '0', 0),
(3, '男鞋女鞋', 3, 0, '0', 0),
(4, '包包配饰', 4, 0, '0', 0),
(5, '美容护肤', 5, 0, '0', 0),
(6, '数码家电', 6, 0, '0', 0),
(7, '日用百货', 7, 0, '0', 0),
(8, '美食特产', 8, 0, '0', 0),
(9, '母婴儿童', 9, 0, '0', 0),
(10, '车品户外', 10, 0, '0', 0),
(11, '舒适内衣', 11, 0, '0', 0),
(12, '连衣裙', 50010850, 1, '', 0),
(13, 'T恤', 50000671, 1, '', 0),
(14, '衬衫', 162104, 1, '', 0),
(15, '休闲裤', 162201, 1, '', 0),
(16, '打底裤', 50007068, 1, '', 0),
(17, '牛仔裤', 162205, 1, '', 0),
(18, '半身裤', 1623, 1, '', 0),
(19, '蕾丝衫/雪纺衫', 162116, 1, '', 0),
(20, '针织衫', 50000697, 1, '', 0),
(21, '短外套', 50011277, 1, '', 0),
(22, '卫衣/绒衫', 50008898, 1, '', 0),
(23, '风衣', 50008901, 1, '', 0),
(24, '气质妈妈装', 50000852, 1, '', 0),
(25, '大码女装', 1629, 1, '', 0),
(26, 'T恤', 50000436, 2, '', 0),
(27, '衬衫', 50011123, 2, '', 0),
(28, '针织衫', 50000557, 2, '', 0),
(29, '牛仔裤', 50010167, 2, '', 0),
(30, '休闲裤', 3035, 2, '', 0),
(31, '夹克', 50010158, 2, '', 0),
(32, '卫衣', 50010159, 2, '', 0),
(33, '浅口女单鞋', 50012027, 3, '', 0),
(34, '高帮女鞋', 50012825, 3, '', 0),
(35, '帆布鞋', 50012042, 3, '', 0),
(36, '流行男鞋', 50011740, 3, '', 0),
(37, '热销包袋', 50012010, 4, '', 0),
(38, '皮带/腰带/配件', 50010404, 4, '', 0),
(39, '钱包卡套', 50012018, 4, '', 0),
(40, '乳液/面霜', 50011980, 5, '', 0),
(41, '面膜', 50011981, 5, '', 0),
(42, '精油芳疗', 50011992, 5, '', 0),
(43, '彩妆达人', 50010788, 5, '', 0),
(44, '精美鼠标', 11, 6, '', 0),
(45, '苹果保护套/保护壳', 50018599, 6, '', 0),
(46, '手机配件', 50024094, 6, '', 0),
(47, '厨房电器', 50012082, 6, '', 0),
(48, '生活电器', 50012100, 6, '', 0),
(49, '居家日用', 21, 7, '', 0),
(50, '家装', 27, 7, '', 0),
(51, '床上用品/布艺软饰', 50008163, 7, '', 0),
(52, '枕头/枕芯/保健枕', 50002777, 7, '', 0),
(53, '整理/收纳用具', 50016348, 7, '', 0),
(54, '厨房用具', 50016349, 7, '', 0),
(55, '家居饰品', 50020808, 7, '', 0),
(56, '洗护清洁', 50025705, 7, '', 0),
(57, '枣类/果干', 50013061, 8, '', 0),
(58, '坚果/炒货', 50012981, 8, '', 0),
(59, '饼干/膨化', 50010550, 8, '', 0),
(60, '糕点/点心', 50552001, 8, '', 0),
(61, '糖果零食', 50016091, 8, '', 0),
(62, '粮油米面/调味品', 50016422, 8, '', 0),
(63, '滋补营养品', 50020275, 8, '', 0),
(64, '咖啡/冲饮', 50026316, 8, '', 0),
(65, '茶叶', 50026397, 8, '', 0),
(66, '玩具', 25, 9, '', 0),
(67, '连衣裙', 50013693, 9, '', 0),
(68, '童裤', 50013618, 9, '', 0),
(69, '睡衣', 50012433, 9, '', 0),
(70, 'T恤', 50013189, 9, '', 0),
(71, '外套', 50012308, 9, '', 0),
(72, '套装', 50010540, 9, '', 0),
(73, '童鞋', 50012340, 9, '', 0),
(74, '幼婴儿用品', 50014812, 9, '', 0),
(75, '孕妇用品', 50022517, 9, '', 0),
(76, '汽车配件', 26, 10, '', 0),
(77, '运动用品', 50010728, 10, '', 0),
(78, '运动服/休闲服装', 50011699, 10, '', 0),
(79, '户外用品', 50013886, 10, '', 0),
(80, '文胸', 50008881, 11, '', 0),
(81, '内裤', 50008882, 11, '', 0),
(82, '睡衣/家居服套装', 50012772, 11, '', 0),
(83, '保暖套装', 50012778, 11, '', 0),
(84, '短袜/打底袜/丝袜/美腿袜', 50006846, 11, '', 0);

CREATE TABLE IF NOT EXISTS `ftxia_union` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `score` int(10) NOT NULL default '0',
  `ouid` int(10) default NULL,
  `ousername` varchar(20) default NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ftxia_user` (
  `id` int(10) NOT NULL auto_increment,
  `uc_uid` int(10) unsigned NOT NULL default '0',
  `username` varchar(20) NOT NULL default '0',
  `password` varchar(32) NOT NULL default '0',
  `email` varchar(50) default NULL,
  `gender` tinyint(1) default '0' COMMENT '1男，0女',
  `intro` varchar(500) NOT NULL,
  `byear` smallint(4) unsigned NOT NULL,
  `bmonth` tinyint(2) unsigned NOT NULL,
  `bday` tinyint(2) unsigned NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `score` int(10) unsigned NOT NULL default '0',
  `score_level` int(10) unsigned NOT NULL default '0',
  `reg_ip` varchar(15) NOT NULL,
  `reg_time` int(10) unsigned NOT NULL default '0',
  `last_time` int(10) unsigned NOT NULL default '0',
  `sign_time` int(10) default '0',
  `last_ip` varchar(15) default '0',
  `login_count` int(10) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `ftxia_user` (`id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`) VALUES
(1, 0, '16IU.COM', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', 0, '', 0, 0, 0, '北京', '东城', 2, 18, '127.0.0.1', 1362559957, 1409073058, 1386604800, '127.0.0.1', 4, 1);

CREATE TABLE IF NOT EXISTS `ftxia_user_bind` (
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `type` varchar(60) NOT NULL,
  `keyid` varchar(100) NOT NULL,
  `info` text NOT NULL,
  KEY `uid` (`uid`),
  KEY `uid_type` (`uid`,`type`),
  KEY `type_keyid` (`type`,`keyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `ftxia_user_msgtip` (
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL default '0' COMMENT '1:关注，2:提到，3:私信，4:通知',
  `num` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `ftxia_user_stat` (
  `uid` int(10) unsigned NOT NULL,
  `action` varchar(20) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `last_time` int(10) unsigned NOT NULL,
  UNIQUE KEY `uid_type` (`uid`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `ftxia_user_stat` (`uid`, `action`, `num`, `last_time`) VALUES
(1, 'login', 2, 1409073058);
