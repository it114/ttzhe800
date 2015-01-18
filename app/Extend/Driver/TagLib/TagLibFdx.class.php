<?php
/*
  自定义标签库
*/
Class TagLibFdx extends TagLib{

protected $tags     = array(
   'hottag'=>array(
   	'close'=>0
   	),
   'hotseller'=>array('close'=>1),
);
/*
*热门词
*<hottag />
*/
  public function _hottag($attr,$content){
      $limit = M('setting')->where(array('name'=>'hotword_limit'))->getField('data');
      if (!$limit) {
        $limit = 0;
      }
      $hotword = M('setting')->where(array('name'=>'hot_tag'))->getField('data');
      $wordlists  = explode('|', $hotword);
      $limit_word  = array_slice($wordlists, 0,$limit);
      $str = '';
      foreach ($limit_word as $k => $v) {
        $str  .= '<a href="'.__ROOT__.'/index.php?m=search&a=index&k='.$v.'"><em>'.$v.'</em></a>';
      }
      return $str;
  }


  /*
*热门商家
*<hottag />
*/


    public function  _hotseller($attr,$content){
      
        
    $str = <<<Eof
    <?php
        \$list = M('seller')->where(array('ishot'=>'Y','isshow'=>'Y'))->select();
    ?>
Eof;
    $str .= $content;
    return $str;
    }
}
?>