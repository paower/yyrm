<?php
namespace Admin\Controller;
use Think\Controller;
use Think\Page;
/**
 * 优惠券控制器
 */
class CouponsController extends AdminController
{
	public function index(){
		$list = M('coupons_info')->select();
		$this->assign('list',$list);
		$this->display();
	}
	public function add(){
		if($_POST){
			$data = I();
			$product_cate = I('product_cate');
			$data['product_cate'] = implode(',',$product_cate);
			M('coupons_info')->add($data);
			$this->success('新增成功',U('index'));
		}else{
			//商品分类
			$product_cate = M('product_cate')->select();
			$this->assign('product_cate',$product_cate);
			$this->display('edit');
		}
	}

	public function edit($id){
		if($_POST){
			$data = I();
			$product_cate = I('product_cate');
			$data['product_cate'] = implode(',',$product_cate);
			M('coupons_info')->where("id = $id")->save($data);
			$this->success('修改成功',U('index'));
		}else{
			$info = M('coupons_info')->where("id = $id")->find();
			$product_cate = M('product_cate')->select();
			$this->assign('product_cate',$product_cate);
			// dump($info);die;
			$this->assign('info',$info);
			$this->display();
		}
	}

	public function setStatus($id){
		$status = M('coupons_info')->where("id = $id")->getField('status');
		if($status==1){
			M('coupons_info')->where("id = $id")->setField('status',2);
			$this->success('禁用成功');
		}else{
			M('coupons_info')->where("id = $id")->setField('status',1);
			$this->success('启用成功');
		}
	}

	public function del($id){
		M('coupons_info')->where("id = $id")->delete($id);
		$this->success('删除成功');
	}
}
?>