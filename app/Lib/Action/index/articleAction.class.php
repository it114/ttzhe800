<?php

class articleAction extends FirstendAction {


	public function index(){
		$cid = I('cid','', 'trim');
		$title = '文章列表';
		$p = I('p',1, 'intval');
		$map['status']="1";
		if($cid){
            $map['cate_id'] = $cid;
			$article_cate = M('article_cate')->field('id,name')->find($cid);
			$title = $article_cate['name'];
        }
		$page_size = 20;
		$start = $page_size * ($p - 1) ;
		$order = 'ordid DESC ';
		$order.= ', id DESC';
		$article_mod = M('article');
        $article_list = $article_mod->where($map)->order($order)->limit($start . ',' . $page_size)->select();

		$help_mod = M('help');
		$help_list = $help_mod->select();

		$article_cate_mod = M('article_cate');
		$article_cate_list = $article_cate_mod->select();

		$this->assign('cid',$cid);
		$this->assign('title',$title);
		$this->assign('article_list',$article_list);
		$this->assign('help_list',$help_list);
		$this->assign('article_cate_list',$article_cate_list);
		$count = $article_mod->where($map)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->kshow());
		$page_seo=array(
			'title' => $title.' - '.C('ftx_site_name'),
        );
		$this->cate_list = D('items_cate')->field('id,name,pid')->select();
		$this->assign('page_seo', $page_seo);
        $this->display();
	}

	public function cate(){
		$cid = I('id','', 'trim');
		$title = '文章列表';
		$p = I('p',1, 'intval');
		$map['status']="1";
		if($cid){
            $map['cate_id'] = $cid;
			$article_cate = M('article_cate')->field('id,name')->find($cid);
			$title = $article_cate['name'];
        }
		$page_size = 20;
		$start = $page_size * ($p - 1) ;
		$order = 'ordid DESC ';
		$order.= ', id DESC';
		$article_mod = M('article');
        $article_list = $article_mod->where($map)->order($order)->limit($start . ',' . $page_size)->select();

		$help_mod = M('help');
		$help_list = $help_mod->select();

		$article_cate_mod = M('article_cate');
		$article_cate_list = $article_cate_mod->select();
        
		$this->assign('cid',$cid);
		$this->assign('nav_curr','article');
		$this->assign('title',$title);
		$this->assign('article_list',$article_list);
		$this->assign('help_list',$help_list);
		$this->assign('article_cate_list',$article_cate_list);
		$count = $article_mod->where($map)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->kshow());
		$page_seo=array(
			'title' => $title.' - '.C('ftx_site_name'),
        );
		$this->cate_list = D('items_cate')->field('id,name,pid')->select();
		$this->assign('page_seo', $page_seo);
		$this->display();
	}

	public function read(){
	    $cid = I('cid','', 'trim');
		$id = I('id','', 'intval');
        !$id && $this->_404();
        $nid = $id+1;//下一篇
        $preid=$id-1;//上一篇
		if($cid){
            $map['cate_id'] = $cid;
			$article_cate = M('article_cate')->field('id,name')->find($cid);
			$title = $article_cate['name'];
        }
		$article_cate_mod = M('article_cate');
		$article_cate_list = $article_cate_mod->select();
        $article_mod = M('article');
		$this->cate_list = D('items_cate')->field('id,name,pid')->select();
        $article = $article_mod->field('id,cate_id,title,info,hits,author,seo_title,seo_keys,seo_desc,add_time')->find($id);
		$articlep = $article_mod->field('id,cate_id,title,info,hits,author,seo_title,seo_keys,seo_desc')->find($preid);
		$articlen = $article_mod->field('id,cate_id,title,info,hits,author,seo_title,seo_keys,seo_desc')->find($nid);
        if(isset($article['cate_id'])){
            $this->cate_name = M('article_cate')->where(array('id'=>$article['cate_id']))->getField('name');	
        }
		$this->_config_seo(C('ftx_seo_config.article'), array(
            'title' => $article['title'],
			'seo_title' => $article['seo_title'],
            'seo_keywords' => $article['seo_keys'],
            'seo_description' => $article['seo_desc'],
        ));
		$this->assign('cid',$cid);		
		$this->assign('article_cate_list',$article_cate_list);
		$this->assign('nid',$nid); 
		$this->assign('nav_curr','article');
		$this->assign('preid',$preid); 
		$this->assign('hit_num',$hit_num); 
		$this->assign('articlep',$articlep);
		$this->assign('articlen',$articlen);		
        $this->assign('article',$article); //分类选中		
        $this->display();
	}

}