<?php
if (!is_file('./data/install.lock')) {
    header('Location: ./install.php');
    exis;
}
function isMobileUrl()
{
	$pathinfo = $_SERVER['PATH_INFO'];
	if(strpos($pathinfo,'/m/') === false || strpos($pathinfo,'g=m') === false)
	{
		return false;
	}	
	return true;
}
function isMobileDevice()
{
	$agent = strtolower($_SERVER['HTTP_USER_AGENT']);
	$type = '';
	$keyword = array('iphone','ipad','ipod','android');
	foreach ($keyword as $k) 
	{
		if(strpos($agent, $k) !== false)
		{
			return true;
		}
	}
	return false;
	
}

if(isMobileDevice() && !isMobileUrl())
{
	header('Location: index.php/m/index/index');
	exit();
}
define('FTX_VERSION', '5.0');
define('FTX_RELEASE', '20131210');
define('APP_NAME', 'app');
define('APP_PATH', './app/');
define('FTX_DATA_PATH', './data/');
define('EXTEND_PATH',	APP_PATH . 'Extend/');
define('CONF_PATH',		FTX_DATA_PATH . 'config/');
define('RUNTIME_PATH',	FTX_DATA_PATH . 'runtime/');
define('HTML_PATH',		FTX_DATA_PATH . 'html/');

//define('APP_DEBUG', true);
require("./ThinkPHP/setup.php");
