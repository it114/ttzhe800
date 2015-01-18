<?php
Class mModel extends Model
{
    public function getcid()
    {
    	$cinfo = M('items_cate')->field('id')->select();
    	$str = '';
    	foreach ($cinfo as $k => $v) {
    		$str .= $v['id'].',';
    	}
    	$str = substr($str,0,-1);
    	return $str;
    } 
}

















?>