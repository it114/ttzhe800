<?php
if (!is_file('./data/install.lock')) {
    header('Location: ./install.php');
    exis;
}
function isMobileUrl()
{
	$pathinfo = isset($_SERVER['PATH_INFO'])?trim($_SERVER['PATH_INFO']):'';
	$g = isset($_GET['g'])?trim($_GET['g']):'';
	if(strpos($pathinfo,'/m/') === false && $g != 'm')
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

$host = strtolower($_SERVER['HTTP_HOST']);

if(substr($host, 0,4) != 'www.' && strpos('localhost',$host) === false &&  strpos( '127.0.0.1',$host) === false)
{
	$host = 'www.'.$host;
	header('HTTP/1.1 301 Moved Permanently');
    header('Location: http://'.$host);
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
