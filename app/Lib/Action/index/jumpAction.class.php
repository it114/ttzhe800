<?php

class jumpAction extends FirstendAction {

    public function _initialize() {
        parent::_initialize();
//        if (!$this->visitor->is_login && !in_array(ACTION_NAME, array('login', 'register', 'binding', 'ajax_check')))
//        {
//
//            $id = I('id','', 'intval');
//			$iid = I('iid','','trim');
//			$url = U('jump/index',array('id'=>$id,'iid'=>$iid));
//            $this->redirect('user/login',array('ret_url'=>$url));
//        }
    }

    /**
     * 淘宝跳转
     */
    public function index() {

		$id = I('id','', 'intval');
		$iid = I('iid','','trim');
		if($id){
			$item_mod = M('items');
			$item = $item_mod->where(array('id' => $id))->find();
			!$item && $this->_404();
			if($item['click_url']){
				redirect($item['click_url']);
			}
		}
		if($iid){
			$item['num_iid']= $iid;
			$item['click_url']='http://item.taobao.com/item.htm?id='.$iid;
		}
		$this->assign('item', $item);
        $this->display();
    }
}