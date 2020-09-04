<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends AdminController {

	public function index(){
		//会员统计
		$this->getUserCount();
		//交易量
		$this->TraingCount();
		$this->Tranje7();
		$this->Tranje();
		// $purchase_price = $this->getToday();
		$getSevenday = $this->getSevenday();
		$time = time();
		for($i=7;$i>0;$i--){
			$res = getTodayTimes($time);
			$list[date('Y-m-d',$res['start'])] = $this->getToday($res['start'],$res['end']);
			$time = $time - 86400;
		}
		$this->assign('list',$list);
		$this->assign('getSevenday',$getSevenday);
		$this->assign('meta_title', "首页");
		$this->display();
	}
	
	public function getUserCount(){
		$user=D('User');
		$user_total=$user->count(1);
		$start=strtotime(date('Y-m-d'));
		$end=$start+86400;
		$where="reg_date BETWEEN {$start} AND {$end}";
		$user_count=$user->where($where)->count(1);
		$this->assign('user_total', $user_total);
		$this->assign('user_count', $user_count);
	}
	/**
	 * 今日投单数
	 */
	public function Tranje(){
		$traing = M('trans');
		$start = strtotime(date('Y-m-d'));
		$end=$start+86400;
		$where="pay_time BETWEEN {$start} AND {$end}";

		$traing = $traing->where($where)->count();
		$this->assign('traing',$traing);
	}
	/**
	 * 7 day
	 */
	public function Tranje7(){
		$traing = M('trans');
		$start = strtotime(date('Y-m-d'));
		$end=$start+86400*7;
		$where="pay_time BETWEEN {$start} AND {$end}";

		$traing7 = $traing->where($where)->count();
		$this->assign('traing7',$traing7);
	}
	public function TraingCount(){
		$traing=M('trading');
		$trading_free=M('trading_free');

		$start=strtotime(date('Y-m-d'));
		$end=$start+86400;
		$where="create_time BETWEEN {$start} AND {$end}";

		$traing_count=$traing->where($where)->count(1);
		$traing_total=$traing->count(1);

		$traing_count+=$trading_free->where($where)->count(1);
		$traing_total+=$trading_free->count(1);

		$this->assign('traing_count', $traing_count);
		$this->assign('traing_total', $traing_total);
	}

	private function getToday($statr,$end){
		$map['pay_time'] = array(
			array('egt',$statr),
			array('elt',$end),
		);
		$map['trans_type'] = 0;
		$purchase_price = M('trans')->where($map)->sum('pay_nums');
		return $purchase_price;
	}

	private function getSevenday(){
		$statr = strtotime(date('Y-m-d'));
		$end = strtotime(date('Y-m-d 23:59:59'));
		$statr = $statr - 6*86400;
		$map['pay_time'] = array(
			array('egt',$statr),
			array('elt',$end),
		);
		$map['trans_type'] = 0;
		$purchase_price = M('trans')->where($map)->sum('pay_nums');
		return $purchase_price;
	}

	/**
	 * 删除缓存
	 * @author jry <598821125@qq.com>
	 */
	public function removeRuntime()
	{
		$file   = new \Util\File();
		$result = $file->del_dir(RUNTIME_PATH);
		if ($result) {
			$this->success("缓存清理成功1");
		} else {
			$this->error("缓存清理失败1");
		}
	}
	
}