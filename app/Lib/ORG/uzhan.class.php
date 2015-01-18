<?php
spl_autoload_register('uz_autoload');
function uz_autoload($classname){
  require_once(APP_PATH.'Lib/ORG/uzhan/'.$classname.'.class.php');
}
Class uzhan{
   protected $support = array('zhe800','juanpichi','jiukuaiyou');
   protected $status  = array(0,1,2,3,4,5,6,7,8);
	public function get($www,$category){
	  if(!in_array($www, $this->support)) return $this->status[4];
	  $uz = new $www();
	  $method = $www.'_allitems';
	  return $uz->$method($category);

	}
}
?>