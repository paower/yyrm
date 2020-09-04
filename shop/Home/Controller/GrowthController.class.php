<?php
namespace Home\Controller;
use Think\Controller;
class GrowthController extends CommonController {

	public function autook()
	{
		$info = D('upgrade')->select();
		$now = time();
		$a = M('config')->where("name='dj_time'")->getField('value');
		$oktime = $a*60*60;
		foreach ($info as $k => $v) {
			$paytime=$v['paytime']+$oktime;
			if($paytime!=$oktime){
				if($paytime<$now){
					$data['state'] = 2;
					$id = $v['id'];
					M('upgrade')->where("id=$id")->save($data);
				}
			}
		}
	}
	public function drawee()
	{
		$id = I('id');
		$a['id'] = $id;
		$time = M('upgrade')->where($a)->getField('paytime');

		$auto = M('config')->where("name='dj_time'")->getField('value');
		$autotime = $auto*60*60;
		$time = $time+$autotime-time();
		// $time = $time-time();

		$info = M('upgrade')->where($a)->join('ysk_user on ysk_upgrade.uid=ysk_user.userid')->find();
		$money = M('upgrade')->where($a)->getField('money');
		$src = M('upgrade')->where($a)->getField('src');
		$this->assign('id',$id);
		$this->assign('src',$src);
		$this->assign('money',$money);
		$this->assign('time',$time);
		$this->assign('info',$info);
		$this->display();
	}
	public function quxiao()
	{
		$id = I('id');

		$a['id'] = $id;
		$data['state'] = 0;
		$data['src'] ="";
		
		M('upgrade')->where($a)->save($data);
		$this->redirect('Nofinsh');
	}
public function ok()
	{
		$id = I('id');
		$data['state'] = 2;

		$a['id'] = $id;
		M('upgrade')->where($a)->save($data);
		$u = M('upgrade')->where($a)->find();

		$up = $u['up'];
		$userid = $u['uid'];
		$userlevel = M('user')->where("userid = $userid")->getField("userlevel");
		if($up==$userlevel+1){
			$count = D('upgrade')->where("uid=$userid and up=$up and state!=2")->count();
			// dump($conut);die;
			if($count==0){
				$level = M('user')->where("userid=$userid")->field('userlevel')->find();
				$n = $level['userlevel'];
				$level = $n+1;
				$data['userlevel']=$level;
				M('user')->where("userid=$userid")->save($data);

				$jihuo['is_jihuo']=1;
				if($level==1){
					M('user')->where("userid=$userid")->save($jihuo);
				}
			}
		}

		if($up == 0){
			$count = D('upgrade')->where("uid=$userid and up=$up and state!=2")->count();
			// dump($conut);die;
			if($count==0){
				//修改首单状态
				M('user')->where("userid = $userid")->setField('is_first_order',2);
				//增加转盘次数
				M('user')->where("userid = $userid")->setInc('turntable_num',1);
				//赠送优惠券
				$coupons = M('coupons_info')->where("status = 1")->select();
				foreach ($coupons as $k => $v) {
					$data['uid'] = $userid;
					$data['name'] = $v['name'];
					$data['type'] = $v['type'];
					$data['need'] = $v['need'];
					$data['jian'] = $v['jian'];
					$data['pid'] = $v['id'];
					$data['have_time'] = time();
					M('coupons')->add($data);
				}

				$jihuo['is_jihuo']=1;
				if($level==1){
					M('user')->where("userid=$userid")->save($jihuo);
				}
			}
		}
			
		$this->redirect('Nofinsh');
		
	}
	public function yes2(){
		$upload = new \Think\Upload();// 实例化上传类
	    $upload->maxSize   =     3145728 ;// 设置附件上传大小
	    $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
	    $upload->rootPath  =     './Uploads/'; // 设置附件上传根目录
	    $upload->savePath  =     ''; // 设置附件上传（子）目录
	    // 上传文件 
	    $info   =   $upload->upload();
	    if($info){
	    	$src = "/Uploads/".$info['image']['savepath'].$info['image']['savename'];
	    	// dump($src);die;
            // return $getSaveName=str_replace("\\","/",$info->saveName());
        }else{
            echo $file->getError();
        }
        $id = I('id');
        $data['src'] = $src;
        $data['state'] = 1;
        $data['paytime'] = time();
        // dump($data);die;
        $a['id'] = $id;
        M('upgrade')->where($a)->save($data);
        $this->redirect('upgrade');
	}
	//确认付款 上传截图
	public function yes()
	{
	if (M("User")->autoCheckToken($_POST)){
		if(IS_POST){
			$upload = new \Think\Upload();// 实例化上传类
		    $upload->maxSize   =     3145728 ;// 设置附件上传大小
		    $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
		    $upload->rootPath  =     './Uploads/'; // 设置附件上传根目录
		    $upload->savePath  =     ''; // 设置附件上传（子）目录
		    // 上传文件 
		    $info   =   $upload->upload();
		    if($info){
		    	$src = "/Uploads/".$info['file']['savepath'].$info['file']['savename'];
		    	// dump($src);die;
	            // return $getSaveName=str_replace("\\","/",$info->saveName());
	        }else{
	            $this->error('上传失败');
	        }
	        $id = I('id');
	        $data['src'] = $src;
	        $data['state'] = 1;
	        $data['paytime'] = time();
	        $a['id'] = $id;
	        $shouid = M('upgrade')->where($a)->getField('shouid');
	        $phone = M('user')->where("userid=$shouid")->getField('mobile');
	        //$msg = "你有新的订单待审核，请登录操作确认。";
	        $this->NewSms($phone,$msg);
	        $c = M('upgrade')->where($a)->save($data);
	        if($c){
	        	$this->success('上传成功');
	        }else{
	        	$this->error('上传失败');
	        }
		}else{
			$id = I('get.id');
			$a['id'] = I('get.id');
			$money = D('upgrade')->where($a)->getField('money');
			$this->assign('money',$money);

			$shouid = D('upgrade')->where($a)->getField('shouid');
			$user = M('user')->where("userid=$shouid")->find();
			$this->assign('user',$user);

			$now = time();
			$this->assign('time',$now);
			$this->assign('id',$id);
			// dump($user);die;
			$this->display('Paidimg');
		}
	}
	}

	//新人订单
	public function first_order($id){
		$order1['id'] = upgrade_id();
		$order1['uid'] = $id;
		$order1['up'] = 0;
		$order1['shouid'] = getonetop($id,1,true,false);
		$order1['money'] = 396;
		$order1['type'] = 1;
		$orderList[] = $order1;

		$order2['id'] = upgrade_id();
		$order2['uid'] = $id;
		$order2['up'] = 0;
		$order2['shouid'] = get_level_top($id,5,true);
		$order2['money'] = 10;
		$order2['type'] = 2;
		$orderList[] = $order2;
		$uid = get_level_top($id,5,true);
		M('user')->where("userid = $uid")->setInc('top5_new',1);

		$order3['id'] = upgrade_id();
		$order3['uid'] = $id;
		$order3['up'] = 0;
		$order3['shouid'] = get_level_top($id,6,true);
		$order3['money'] = 10;
		$order3['type'] = 3;
		$orderList[] = $order3;
		$uid = get_level_top($id,6,true);
		M('user')->where("userid = $uid")->setInc('top6_new',1);

		$order4['id'] = upgrade_id();
		$order4['uid'] = $id;
		$order4['up'] = 0;
		$order4['shouid'] = get_level_top($id,7,true);
		$order4['money'] = 20;
		$order4['type'] = 4;
		$orderList[] = $order4;
		$uid = get_level_top($id,7,true);
		M('user')->where("userid = $uid")->setInc('top7_new',1);

		$order5['id'] = upgrade_id();
		$order5['uid'] = $id;
		$order5['up'] = 0;
		$order5['shouid'] = get_level_top($id,8,true);
		$order5['money'] = 20;
		$order5['type'] = 5;
		$orderList[] = $order5;
		$uid = get_level_top($id,8,true);
		M('user')->where("userid = $uid")->setInc('top8_new',1);

		$order6['id'] = upgrade_id();
		$order6['uid'] = $id;
		$order6['up'] = 0;
		$order6['shouid'] = get_level_top($id,9,true);
		$order6['money'] = 40;
		$order6['type'] = 6;
		$orderList[] = $order6;
		$uid = get_level_top($id,9,true);
		M('user')->where("userid = $uid")->setInc('top9_new',1);

		$order7['id'] = upgrade_id();
		$order7['uid'] = $id;
		$order7['up'] = 0;
		$order7['shouid'] = 778904;
		$order7['money'] = 164;
		$order7['type'] = 8;
		$orderList[] = $order7;

		return M('upgrade')->addAll($orderList);
	}

	//升级订单
	public function up_order($id,$level){
		$order1['id'] = upgrade_id();
		$order1['uid'] = $id;
		$order1['up'] = $level;
		$order1['shouid'] = getonetop($id);
		switch ($level) {
			case '1':
				$order1['money'] = 880*60/100;
				break;
			case '2':
				$order1['money'] = 1280*60/100;
				break;
			case '3':
				$order1['money'] = 1880*60/100;
				break;
			case '4':
				$order1['money'] = 2880*60/100;
				break;
			case '5':
				$order1['money'] = 4080*60/100;
				break;
			case '6':
				$order1['money'] = 5680*60/100;
				break;
			case '7':
				$order1['money'] = 8880*60/100;
				break;
			case '8':
				$order1['money'] = 12880*60/100;
				break;
			case '9':
				$order1['money'] = 18880*60/100;
				break;
			case '10':
				$order1['money'] = 26880*60/100;
				break;
		}
		$order1['type'] = 1;
		$orderList[] = $order1;

		$order2['id'] = upgrade_id();
		$order2['uid'] = $id;
		$order2['up'] = $level;
		$order2['shouid'] = get_level_top($id,5);
		$order2['money'] = 20;
		$order2['type'] = 2;
		$orderList[] = $order2;

		$order3['id'] = upgrade_id();
		$order3['uid'] = $id;
		$order3['up'] = $level;
		$order3['shouid'] = get_level_top($id,6);
		$order3['money'] = 20;
		$order3['type'] = 3;
		$orderList[] = $order3;

		$order4['id'] = upgrade_id();
		$order4['uid'] = $id;
		$order4['up'] = $level;
		$order4['shouid'] = get_level_top($id,7);
		$order4['money'] = 20;
		$order4['type'] = 4;
		$orderList[] = $order4;

		$order5['id'] = upgrade_id();
		$order5['uid'] = $id;
		$order5['up'] = $level;
		$order5['shouid'] = get_level_top($id,8);
		$order5['money'] = 40;
		$order5['type'] = 5;
		$orderList[] = $order5;

		$order6['id'] = upgrade_id();
		$order6['uid'] = $id;
		$order6['up'] = $level;
		$order6['shouid'] = get_level_top($id,9);
		$order6['money'] = 40;
		$order6['type'] = 6;
		$orderList[] = $order6;

		$order7['id'] = upgrade_id();
		$order7['uid'] = $id;
		$order7['up'] = $level;
		$order7['shouid'] = get_level_top($id,10);
		$order7['money'] = 80;
		$order7['type'] = 7;
		$orderList[] = $order7;

		$order8['id'] = upgrade_id();
		$order8['uid'] = $id;
		$order8['up'] = $level;
		$order8['shouid'] = 778904;
		switch ($level) {
			case '1':
				$order8['money'] = 880-880*60/100-220;
				break;
			case '2':
				$order8['money'] = 1280-1280*60/100-220;
				break;
			case '3':
				$order8['money'] = 1880-1880*60/100-220;
				break;
			case '4':
				$order8['money'] = 2880-2880*60/100-220;
				break;
			case '5':
				$order8['money'] = 4080-4080*60/100-220;
				break;
			case '6':
				$order8['money'] = 5680-5680*60/100-220;
				break;
			case '7':
				$order8['money'] = 8880-8880*60/100-220;
				break;
			case '8':
				$order8['money'] = 12880-12880*60/100-220;
				break;
			case '9':
				$order8['money'] = 18880-18880*60/100-220;
				break;
			case '10':
				$order8['money'] = 26880-26880*60/100-220;
				break;
		}
		$order8['type'] = 8;
		$orderList[] = $order8;

		return M('upgrade')->addAll($orderList);
	}
	//升级条件查询
	public function upgrade_conditions($id,$level){
		switch ($level) {
			case '1':
				$num = M('user')->where("pid = $id")->count();
				if($num>=3){
					return true;
				}else{
					return false;
				}
				break;
			case '2':
				$list = M('user')->where("pid = $id")->select();
				$num = 0;
				foreach ($list as $k => $v) {
					$slevel = $v['userlevel'];
					if($slevel >= $level-1){
						$num+=1;
					}
				}
				if($num>=3){
					return true;
				}else{
					return false;
				}
				break;
			case '3':
				$list = M('user')->where("pid = $id")->select();
				$num = 0;
				foreach ($list as $k => $v) {
					$slevel = $v['userlevel'];
					if($slevel >= $level-1){
						$num+=1;
					}
				}
				if($num>=3){
					return true;
				}else{
					return false;
				}
				break;
			case '4':
				$list = M('user')->where("pid = $id")->select();
				$num = 0;
				foreach ($list as $k => $v) {
					$slevel = $v['userlevel'];
					if($slevel >= $level-1){
						$num+=1;
					}
				}
				if($num>=3){
					return true;
				}else{
					return false;
				}
				break;
			case '5':
				$list = M('user')->where("pid = $id")->select();
				$num = 0;
				foreach ($list as $k => $v) {
					$slevel = $v['userlevel'];
					if($slevel >= $level-1){
						$num+=1;
					}
				}
				if($num>=3){
					return true;
				}else{
					return false;
				}
				break;
			default:
				$list = M('user')->where("pid = $id")->select();
				$num = 0;
				foreach ($list as $k => $v) {
					$slevel = $v['userlevel'];
					if($slevel >= $level-1){
						$num+=1;
					}
				}
				if($num>=1){
					return true;
				}else{
					return false;
				}
				break;
		}
	}
	//升级 查询订单
	public function upgrade()
	{
		$id = session('userid');
		//验证是否实名认证
		// $renzhen = M('user')->where("userid=$id")->getField('renzhen');
		// if($renzhen==0){
			// $this->redirect('User/authentication');
		// }
		//验证是否绑定收款账户
		$zfb = M('user')->where("userid=$id")->getField('zfb');
		$wx = M('user')->where("userid=$id")->getField('wx');
		if($wx==""){
			$this->redirect('Growth/weixinbinding');
		}
		//用户准备升的级别
		$uplevel = M('user')->where("userid = $id")->getField('userlevel')+1;
		//判断是否660首单
		$is_first_order = M('user')->where("userid = $id")->getField('is_first_order');
		if($uplevel == 1 && $is_first_order == 1){
			//判断是否存在订单
			$map_new['up'] = 0; 
			$map_new['uid'] = $id; 
			$is_have = M('upgrade')->where($map_new)->count();
			if($is_have == 0){
				$this->first_order($id);
			}
		}else{
			//判断是否满足升级条件
			$res = $this->upgrade_conditions($id,$uplevel);
			if($res){
				//判断是否存在订单
				$map_up['up'] = $uplevel; 
				$map_up['uid'] = $id; 
				$is_have = M('upgrade')->where($map_up)->count();
				if($is_have == 0){
					//创建升级订单
					$this->up_order($id,$uplevel);
				}
			}else{
				echo "<meta http-equiv='Content-Type'' content='text/html; charset=utf-8'>";
				echo "<script>alert('没达到升级条件');location.href='".U('index/index')."';</script>";
			}
		}

		if($is_first_order == 1){
			//查询订单
			$where['uid'] = session('userid');
			$where['up'] = 0;
			$where['state'] = 0;
			$indent_info1 = M('upgrade')->where($where)->order('type')->select();
			$this->assign('indent_info1',$indent_info1);
		}else{
			//查询订单
			$where1['uid'] = session('userid');
			$where1['up'] = $uplevel;
			$where1['state'] = 0;
			$indent_info1 = M('upgrade')->where($where1)->order('type')->select();
			$this->assign('indent_info1',$indent_info1);
		}

		$this->display();
	}






	 //===========采蜜记录===============
	public function StealDeatail(){
		if(!IS_AJAX){
			return false;
		}
		$userid=session('userid');
		$m=M('steal_detail');
		$where['uid']=$userid;

		$p = I('p','0','intval');
		$page=$p*10;
		$arr=$m->field("num s_num,username uname,type_name,FROM_UNIXTIME(create_time,'%Y-%m-%d %H:%i') as tt ")->where($where)->order('id desc')->limit(
			$page,10)->select();
	   if(empty($arr)){
			   $arr=null; 
		}
		$this->ajaxReturn($arr);
	}

	/**
     * 短信验证码
     */
    public function sms(){
    		$uid = session('userid');
    		$phone = M('user')->where(array('userid'=>$uid))->getField('mobile');
            $randStr = str_shuffle('1234567890');  
            $code = substr($randStr,0,6);
           // $msg="你的验证码为：".$code."【人脉】";
            $this->NewSms($phone,$msg);
            session('code',$code);
			ajaxReturn('yes');
        
    }
	
	
	

//    转入
	public function Intro(){
		/*$time = time();
		$userid = session('userid');
		$u_ID = $userid;
		$drpath = './Uploads/Rcode';
		$imgma = 'codes' . $userid . '.png';
		$urel = '/Uploads/Rcode/' . $imgma;
		if (!file_exists($drpath . '/' . $imgma)) {
			sp_dir_create($drpath);
			vendor("phpqrcode.phpqrcode");
			$phpqrcode = new \QRcode();
			// $hurl = "http://{$_SERVER['HTTP_HOST']}" . U('Index/Changeout/sid/' . $u_ID);
		   // $hurl = "http://www.huiyunx.com" . U('Index/Changeout/sid/' . $u_ID);
			$size = "7";
			//$size = "10.10";
			$errorLevel = "L";
			$phpqrcode->png($hurl, $drpath . '/' . $imgma, $errorLevel, $size);
		}
		$this->urel = $urel;
		$this->display();*/
	}
	public function test(){
		//获取要下载的文件名
		$filename = $_GET['filename'];
		//设置头信息
		ob_end_clean();
//        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
//        header('Content-Description: File Transfer');
//        header('Content-Type: application/octet-stream');

//        header('Content-Disposition:attachment;filename=' . basename($filename));
//        header('Content-Length:' . filesize($filename));

		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
		header('Content-Description: File Transfer');
		header('Content-Type: application/octet-stream');
		header('Content-Length: ' . filesize($filename));
		header('Content-Disposition: attachment; filename=' . basename($filename));

		//读取文件并写入到输出缓冲
		readfile($filename);
		echo "<script>alert('下载成功')</script>";
	}

//    public function test(){
//        $filename = $_GET['filename'];
//        $url = 'http://www.huiyunx.com/Uploads/Rcode/codes6000197.png';
//        downloadImage($url);
//    }

	//转入明细
	public function Introrecords(){
		$uid = session('userid');
		$where['get_id'] = $uid;
		$where['get_type'] = 0;
		$Chan_info = M('tranmoney')->where($where)->order('id desc')->select();
		$this->assign('Chan_info',$Chan_info);
		$this->assign('uid',$uid);
		$this->display();
	}


	//取消订单
 public function quxiao_order(){

	$id = (int)I('id','intval',0);
	$uid = session('userid');
	$mydeal = M('trans')->where(array("id"=>$id,"payin_id|payout_id"=>$uid,"pay_state"=>array("lt",2)))->find();

	 if(!$mydeal)ajaxReturn('订单不存在~',0);

	$type=$mydeal["trans_type"];
	M('trans_quxiao')->add($mydeal);//把记录复制到另一个表


	if($type==0){//卖出单，自己是购买方，只清空payin_id和改变pay_state为0

			$payout['payin_id'] =0;
			$payout['pay_state'] =0;
			$res1 = M('trans')->where(array('id'=>$id))->save($payout); 


	}elseif($type==1){//为购买单，删除订单

		$res1 = M('trans')->delete($id); 


	}

		if($res1){       
		ajaxReturn('取消成功',1);
		}else{
		ajaxReturn('操作失败',1);
		}
}


	//买入
	public function Purchase(){

		$uid = session('userid');
		$cid = trim(I('cid'));
		if(empty($cid)){
			$mapcas['user_id&is_default'] =array($uid,1,'_multi'=>true);
			$carinfo = M('ubanks')->where($mapcas)->count(1);
			if($carinfo < 1){
				$morecars = M('ubanks as u')->join('RIGHT JOIN ysk_bank_name as banks ON u.card_id = banks.pid' )->where(array('u.user_id'=>$uid))->limit(1)->field('u.hold_name,u.id,u.card_number,u.user_id,banks.banq_genre')->find();
			}else{
				$morecars = M('ubanks as u')->join('RIGHT JOIN ysk_bank_name as banks ON u.card_id = banks.pid' )->where(array('u.user_id'=>$uid,'is_default'=>1))->limit(1)->field('u.hold_name,u.id,u.card_number,u.user_id,banks.banq_genre')->find();
			}
		}else{
			$morecars = M('ubanks as u')->join('RIGHT JOIN ysk_bank_name as banks ON u.card_id = banks.pid' )->where(array('u.id'=>$cid))->limit(1)->field('u.hold_name,u.id,u.card_number,u.user_id,banks.banq_genre')->find();
		}

		// 计算直推人数
		$childcount = M('user')->where(array('pid'=>$uid,'activate'=>1))->count(1);

		//查询用户等级
		$grade = M('user')->where(array('userid'=>$uid))->getField('vip_grade');
		$this->assign('grade',$grade);
		$is_yugou = M('user')->where(array('userid'=>$uid))->getField('yugou');
		$this->assign('is_yugou',$is_yugou);
		//生成买入订单
		if(IS_AJAX){
			$pwd = trim(I('pwd'));
			$sellnums = trim(I('sellnums'));//出售数量
			$cardid = trim(I('cardid'));//银行卡id
			$messge = trim(I('messge'));//留言
			$pay_no = trim(I('pay_no'));//订单号

			$last_trans = M('trans')->where(array('payin_id'=>$uid,'pay_state'=>3,'is_lin'=>0))->order('pay_time desc')->find();
			if($last_trans){
				ajaxReturn('必须订单解冻后才能进行下一单',0);
			}
			// 查询是否每天预约额度达到最大值
			$max_purchase = M('config')->where(array('name'=>'max_purchase'))->getField('value');
			$statr = strtotime(date('Y-m-d'));
			$end = strtotime(date('Y-m-d 23:59:59'));
			$map['pay_time'] = array(
				array('egt',$statr),
				array('elt',$end),
			);
			$map['trans_type'] = 0;
			$purchase_price = M('trans')->where($map)->sum('pay_nums');
			if($purchase_price >= $max_purchase){
				ajaxReturn('今天额度已满 请明天在预购',0);
			}

			$is_jihuo = M('user')->where(array('userid'=>$uid))->getField('is_jihuo');
			if($is_jihuo == 0){
				ajaxReturn('你未激活,请先前往激活',1,U('User/activation'));
			}


			$sellAll =array(500,1000,3000,5000,10000,15000,20000);
			 if (!in_array($sellnums, $sellAll)) {
			 	ajaxReturn('您选择预约的金额不正确',0);
			}

			$is_yugou = M('user')->where(array('userid'=>$uid))->getField('yugou');
			if($is_yugou==1){
				$chadengji = M('user')->where(array('userid'=>$uid))->getField('vip_grade');
				$chadengji2 = M('grade')->where(array('number'=>$sellnums))->getField('id');
				if($chadengji!=$chadengji2){
					ajaxReturn('您选择预约的金额不正确',0);
				}
			}
			
			
           //自己是否有足够余额
           $is_enough = M('store')->where(array('uid'=>$uid))->getField('sv');
		   //扣除sv
		   $kouc = $sellnums*0.01;
           if($is_enough<$kouc){
               ajaxReturn('sv余额不足~',0);
           }
			//查询默认银行卡和支付宝账号等
			$id_Uid = M('user')->where(array('userid'=>$uid,'renzhen'=>1))->find();
			if(empty($id_Uid)){
				ajaxReturn('请先认证~',0);
			}
			//查询订单是否存在未冻结
			$is_dong = M('trans')->where(array('payin_id'=>$uid))->order('id desc')->getField('pay_state');
			if($is_dong!=3&&$is_dong!=null){
				ajaxReturn('请等下一轮~',0);
			}
			//验证交易密码
			$minepwd = M('user')->where(array('userid'=>$uid))->Field('account,mobile,safety_pwd,safety_salt,pid')->find();
			$user_object = D('Home/User');
			$user_info = $user_object->Trans($minepwd['account'], $pwd);
			
			//查询当前订单等级
			$tran_grade = M('user')->where(array('userid'=>$uid))->getField('q_grade');
			// 为推荐人增加动态积分

			//$pchildnum = M('user')->where(array('pid'=>$minepwd['pid']))->count();//查询上级推荐人数

			
			//查询之前等级与当前等级是否一致
			$dengji = M('user')->where(array('userid'=>$uid))->field('vip_grade,q_grade,yugou,is_kou')->find();
			if($dengji['yugou']==0){
				$is_kou = 0;
				$yugou = 0;
			}elseif($dengji['is_kou']==1){
				$is_kou = 1;
				$yugou = 1;
			}else{
				$is_kou = 0;
			}

			$last_trans = M('trans')->where(array('payin_id'=>$uid))->order('id desc')->getField('pid');
			$diff_num = $sellnums - $last_trans;
			//生成订单
			$data['pay_no'] = build_order_no();
			$data['payin_id'] = $uid;
			//$data['out_card'] = $$id_Uid[''];
			$data['pay_nums'] = $sellnums;
			//$data['trade_notes'] = $messge;
			$data['pay_time'] = time();
			$data['trans_type'] = 0;
			$data['pid'] = $sellnums;
			$data['tran_grade'] = $tran_grade;
			$data['is_kou'] = $is_kou;
			$data['yugou'] = $yugou;
			$data['wid'] = build_order_no();
			$data['diff_num'] = $diff_num;
			$res_Add = M('trans')->add($data);

			M('trans')->where(array('id'=>$res_Add))->setField('com_id',$res_Add);
			//扣除排单币
			$res = M('store')->where('uid = '.$uid)->setDec('sv',$kouc);

			$arr2 = array(
				'pay_id' => $uid,
				'get_id' => 1,
				'get_nums' => '-'.$kouc,
				'get_time' => time(),
				'get_type'  => 27,
				'now_nums' => $paidan,
			 	'now_nums_get' => $paidan-$outpaidan,
				'status'=>2
			 );
			 $res_tranmoney  = M('tranmoney')->add($arr2);
			//给自己减少这么多余额
			if($res_Add){
//                $doDec = M('store')->where(array('uid'=>$uid))->setDec('cangku_num',$sellnums);
				
				ajaxReturn('买入订单创建成功',1,U('Growth/Nofinsh'));
			}
		}
		$this->assign('day',$day);
		$this->assign('notpur',$notpur);
		$this->assign('buzidong',$buzidong);
		$this->assign('childcount',$childcount);
		$this->assign('morecars',$morecars);
		$this->display();

	}


	//添加银行卡
	public function test1(){
		$sellnums = array(500,1000,3000,5000,10000,30000);
		$sellnums = 5000;//出售数量
		$sellAll = array(500,1000,3000,'5000',10000,30000);
		if (!in_array(500, $sellAll)) {
			echo "Got Irix";
		}
	}
	/**
	 *
	 */
	public function Addbank(){
		$uid = session('userid');
		$bankinfo = M('user')->where(array('userid'=>$uid))->field('bank_uname,open_card,bank_id,card_number,mobile')->find();
		//var_dump($bankinfo);die();
		//$bankinfo['banq_genre'] = M('bank_name')->where(array('q_id'=>$bankinfo['bank_id']))->getField('banq_genre');
		$this->assign('bankinfo',$bankinfo);
		$bakinfo = M('bank_name')->order('q_id asc')->select();
		$this->assign('bakinfo',$bakinfo);
		if(IS_AJAX){
			$uid = session('userid');
			$code = session('code');

			$crkxm = I('crkxm');
			$khy = I('khy');
			$yhk = I('yhk');
			$khzy = I('khzy');
			$codes = I('code');
			if(empty($crkxm)){
				ajaxReturn('请输入真实姓名',0);
			}
			if(empty($khy)){
			   ajaxReturn('请选择开户行',0);
			}
			if(empty($yhk)){
				ajaxReturn('请输入银行卡号',0);
			}
			if(empty($khzy)){
				ajaxReturn('请输入开户支行',0);
			}
			if(empty($code)||$code!=$codes){
				ajaxReturn('验证码有误');
			}
			$data['bank_uname'] = $crkxm;
			$data['bank_id'] = $khy;
			$data['card_number'] = $yhk;
			$data['open_card'] = $khzy;

			$res_addcard = M('user')->where(array('userid'=>$uid))->save($data);
			if($res_addcard){
				//设置用户银行卡姓名
				ajaxReturn('银行卡添加成功',1,'/Growth/Purchase');
			}
		}
		$this->display();
	}
	//订单中心
	public function Nofinsh(){
		if(IS_POST){
			$id = I('id');
			$uid = session('userid');
			$a['shouid']=$uid;
			$a['state']=1;
			$a['uid']=$id;
			$info = M("upgrade")->where($a)->select();
			$this->assign('info',$info);
			$this->display();
		}else{
			$uid = session('userid');
			$info = M("upgrade")->where("shouid=$uid and state=1")->select();

			foreach ($info as $k => $v) {
				$now = time();
				$auto = M('config')->where("name='dj_time'")->getField('value');
				$autotime = $auto*60*60;
				$daojishi = $v['paytime']+$autotime;
				$info[$k]['daojishi'] = $daojishi;
			}

			foreach ($info as $k => $v) {
				$xia=0;
				$id = $v['uid'];
				$pid = $v['shouid'];
				for ($i=0; $i <1; $i++) { 
					$a = M('user')->where("userid=$id")->getField('pid');
					if($a==$pid){
						$xia+=1;
					}else{
						$xia+=1;
						$id = $a;
						$i=-1;
					}
				}
				$info[$k]['xia'] = $xia;
			}

			$this->assign('info',$info);
			$traInfo = M('trans');
			
			$where['payin_id'] = $uid;
			//$where['trans_type'] = 0;
			//分页
			$p=getpage($traInfo,$where,20);
			$page=$p->show();
			$orders = $traInfo->where($where)->order('pay_state asc,id desc')->select();
			foreach($orders as $k =>$v){
					$v['time'] = $v['dakuan_time']-time();
					$vv['time'] = time()-$v['dj_set_time'];
					
					if($v['time']>0){
					//计算小时
					$remain = $v['time']%86400;
					$v['house'] = intval($remain/3600);

					//计算分钟
					$remain = $v['time']%3600;
					$v['min'] = intval($remain/60);

					//计算秒
					$remain = $v['time']%60;
					$v['seconds'] = intval($remain);
					}else{
						$v['house'] = 0;
						$v['min'] = 0;
						$v['seconds'] = 0;
					}
					if($vv['time']>0){
					$vv['day'] = intval($vv['time']/86400);
					//计算小时
					$remain = $vv['time']%86400;
					$vv['house'] = intval($remain/3600);

					//计算分钟
					$remain = $vv['time']%3600;
					$vv['min'] = intval($remain/60);

					//计算秒
					$remain = $vv['time']%60;
					$vv['seconds'] = intval($remain);
					}else{
						$vv['house'] = 0;
						$vv['min'] = 0;
						$vv['seconds'] = 0;
					}
				// $starttime = date('Y:m:d H:i:s',$v['dj_time']);
				// $endtime = date('Y:m:d H:i:s');
				// $dongj=floor((strtotime($endtime)-strtotime($starttime))%86400/3600);
				// if($dongj<0){
				// 	$dongjie = 1;//七天冻结
				// }else{
				// 	$dongjjie = 2;
				// }
				// $orders[$k]['dongjie'] = $dongjie;
				$orders[$k]['house'] = $v['house'];
				$orders[$k]['min'] = $v['min'];
				$orders[$k]['seconds'] = $v['seconds'];
				$orders[$k]['vday'] = $vv['day'];
				$orders[$k]['vhouse'] = $vv['house'];
				$orders[$k]['vmin'] = $vv['min'];
				$orders[$k]['vseconds'] = $vv['seconds'];
				
			}
			// var_dump($orders);
			$token_code = getCode();
			session('token_code',$token_code);
			$this->assign('token_code',$token_code);
			$asc_trans = M('trans')->where(array('payin_id'=>$uid,'pay_state'=>3))->order('dj_time asc')->getField('id');
			$this->assign('asc_trans',$asc_trans);
			$this->assign('state',$state);
			$this->assign('orders',$orders);
			$this->assign('page',$page);
			$this->display();
		}

	}


	// 投诉
	public function tousu(){
		$id = I('post.id');
		$check = M('trans')->where('id='.$id.' and payout_id='.session('userid'))->getField('pay_state');
		if ($check!=4) {
			$res = M('trans')->where('id='.$id)->save(array('pay_state'=>5));
			if ($res) {
				ajaxReturn('投诉成功,已提交后台处理',1,'/Growth/Conpay');
			}else{
				ajaxReturn('投诉失败,您已经被投诉',0);
			}
		}else{
			ajaxReturn('参数错误',0);
		}
	}

	//确认打款
	public function Conpay($id){
		$a['id'] = $id;
		$money = D('upgrade')->where($a)->getField('money');
		$this->assign('money',$money);
		//查询我买入的
		$id = I('get.id');
		$a['id'] = $id;
		$info = M('upgrade')->join("ysk_user on ysk_upgrade.shouid=ysk_user.userid")->where($a)->select();
		// dump($info);die;
		$uid = session('userid');
		$traInfo = M('trans');
		$banks = M('ubanks');
		$where['payin_id'] = $uid;
		$where['pay_state'] = array('in','1,2');
		//$where['pay_state'] = 1;
		$where['id'] = $id;
		//分页
		$p=getpage($traInfo,$where,20);
		$page=$p->show();
		$orders = $traInfo->where($where)->find();
		//var_dump($orders);die();
		//收款人
		//倒计时
		$endtime = strtotime("+5hours",$orders['pipeitime']); 
		$v['time'] = $endtime-time();
		$this->assign('time2',$v['time']);
		if($v['time']>0){
				
				//计算小时
				$remain = $v['time']%86400;
				$v['house'] = intval($remain/3600);

				//计算分钟
				$remain = $v['time']%3600;
				$v['min'] = intval($remain/60);

				//计算秒
				$remain = $v['time']%60;
				$v['seconds'] = intval($remain);
		}
		//银行卡号.开户支行.开户银行

		$uinfomsg = M('user')->where(array('userid'=>$orders['payout_id']))->Field('username,mobile,card_number,zfb,wx,open_card,usdt,bank_uname,bank_id,zfb_img,wx_img')->find();
		$orders['cardnum'] = $uinfomsg['card_number'];
		$orders['yinh'] = M('bank_name')->where(array('q_id'=>$uinfomsg['bank_id']))->getField('banq_genre');
		$orders['bname'] = $uinfomsg['bank_uname'];
		$orders['openrds'] = $uinfomsg['open_card'];
		$orders['card_number'] = $uinfomsg['card_number'];
		$orders['uname'] = $uinfomsg['username'];
		$orders['umobile'] = $uinfomsg['mobile'];
		$orders['zfb'] = $uinfomsg['zfb'];
		$orders['wx'] = $uinfomsg['wx'];
		$orders['usdt'] = $uinfomsg['usdt'];
		$orders['house'] = $v['house'];
		$orders['min'] = $v['min'];
		$orders['seconds'] = $v['seconds'];
		$orders['zfb_img'] = $uinfomsg['zfb_img'];
		$orders['wx_img'] = $uinfomsg['wx_img'];
	// var_dump($orders);die();
		// dump($info[0]['zfb_img']);die;
		$this->assign('info',$info);
		$this->assign('page',$page);
		$this->assign('orders',$orders);
		$this->display();
	}

	public function Paidimg(){
		$id = I('id');
		$trid = M('trans')->where(array('id'=>$id))->getField('id');
		$this->assign('trid',$trid);
		//倒计时
		$orders = M('trans')->where(array('id'=>$id,'pay_state'=>1))->field('pipeitime,pay_nums')->find();
		// if(!$orders){
		// 	$this->redirect('Index/index');
		// }
		//倒计时
		$endtime = strtotime("+5hours",$orders['pipeitime']); 
		$v['time'] = $endtime-time();
		$this->assign('time2',$v['time']);
		if($v['time']>0){
				
				//计算小时
				$remain = $v['time']%86400;
				$v['house'] = intval($remain/3600);

				//计算分钟
				$remain = $v['time']%3600;
				$v['min'] = intval($remain/60);

				//计算秒
				$remain = $v['time']%60;
				$v['seconds'] = intval($remain);
		}
		
		$imginfo['trans_img'] = M('trans')->where(array('id'=>$id))->getField('trans_img');
		$imginfo['house'] = $v['house'];
		$imginfo['min'] = $v['min'];
		$imginfo['seconds'] = $v['seconds'];
		$this->assign('imginfo',$imginfo);
		$this->assign('orders',$orders);
		if(IS_POST){
			$uid = session('userid');
			$picname = $_FILES['uploadfile']['name'];
			$picsize = $_FILES['uploadfile']['size'];
			$trid = trim(I('trid'));
			
			//计算2小时打款奖励百分之二
			// $trans_pipei = M('trans')->field('pipeitime,pay_nums')->where(array('id'=>$trid))->find();
			// $pipeimaxtime = $trans_pipei['pipeitime'] + 2*60*60;

			// $trans_pay_nums = $trans_pipei['pay_nums'] * 0.03;
			// if(time() < $pipeimaxtime){
			// 	M('trans')->where(array('id'=>$trid))->setField('jiangli',$trans_pay_nums);
			// }
			//查出五个小时未打款
			$aa = M('trans')->where(array('payin_id'=>$uid,'id'=>$trid))->find();
			$starttime = date('Y:m:d H:i:s',$aa['pipeitime']);
			$endtime = date('Y:m:d H:i:s');
			
			$minute=floor((strtotime($endtime)-strtotime($starttime))%86400/3600);
			if($minute>5){
				$start['status'] = 0;
				M('user')->where(array('userid'=>$uid))->save($start);
				M('store')->where(array('uid'=>$uid))->setDec('sv',100);
				
				M('trans')->where(array('id'=>$trid))->save(array('is_fen'=>1));
				ajaxReturn('超过五小时未打款，账号已封锁',0);
			}
			if($trid <= 0){
				ajaxReturn('提交失败,请重新提交',0);
			}
			if ($picname != "") {
				if ($picsize > 10485760) { //限制上传大小
					ajaxReturn('图片大小不能超过10M',0);
				}
				// $type = strstr($picname, '.'); //限制上传格式
				// if ($type != ".gif" && $type != ".jpg" && $type != ".png"  && $type != ".jpeg") {
				// 	ajaxReturn('图片格式不对',0);
				// }

				if(!strstr($picname,'.png') && !strstr($picname,'.jpg') && !strstr($picname,'.jpeg') && !strstr($picname,'.gif')){
					ajaxReturn('图片格式不对',0);
				}

				$rand = rand(100, 999);
				$pics = uniqid() . $type; //命名图片名称
				//上传路径
				$pic_path = "./Uploads/Payvos/". $pics;
				move_uploaded_file($_FILES['uploadfile']['tmp_name'], $pic_path);
			}
			$size = round($picsize/1024,2); //转换成kb
			$pic_path = trim($pic_path,'.');
			if($size){
				$config = M('config')->where(array('name'=>'djkg'))->Field('name,value')->find();
				$time = M('config')->where('name="dj_time"')->getField('value');
				$time = $time.' day';
				$times = strtotime($time);
				
				if ($config['value']==1) {
					$data = array('trans_img'=>$pic_path,'pay_state'=>2,'is_dj'=>1,'dj_set_time'=>time(),'dj_time'=>$times);
				}else{
					$data = array('trans_img'=>$pic_path,'pay_state'=>2);
				}
				$data['dakuan_time'] = strtotime("+3hours",time());
				$res = M('trans')->where(array('id'=>$trid))->save($data);
				if($res){
					$phone = M('user')->where(array('userid'=>$aa['payout_id']))->getField('mobile');
					$msg="购买已发货 及时登录确认。【77科技】";
					$this->NewSms($phone,$msg);
					ajaxReturn('打款提交成功',1,U('Growth/Nofinsh'));
				}else{
					ajaxReturn('打款提交失败',0);
				}
			}		
		}
		$this->display();
	}

	//领取
	public function Dofinsh(){
		//查询我买入的
		$uid = session('userid');
		if (IS_POST) {
			$yingc = I('yingc');
			// 冻结期之后的利息
			$transdata = M('trans')->where('id='.$yingc)->find();
			if($transdata['is_lin'] == 1&&'dongjie' == 1){
				ajaxReturn('该本息已领取成功',0);
			}
			
			$token_code = I('token_code');
			if($token_code != session('token_code')){
				ajaxReturn('请勿重复请求',0);
			}
			session('token_code',getCode());
			//获取冻结利息
        	$interest = M('coindets')->where('id=6')->getField('coin_price');
			$tian = floor((time()-$transdata['dj_set_time'])/86400);
			$diff_b = $transdata['pay_nums']/$transdata['pid'];
			$diff_num = $transdata['diff_num'] * $diff_b;
			if($tian >= 7 && $tian < 14){
				$lixi = ($transdata['pay_nums']+$diff_num)*0.1;
			}elseif($tian>=14){
				$lixi = ($transdata['pay_nums']+$diff_num)*0.25;
			}
			$num = $transdata['pay_nums']*0.5+$lixi;
			//var_dump($lixi);die();
			//$transdata = M('trans')->where('id='.$yingc)->setInc('cunchu_num',$lixi+$transdata['jiangli']+$transdata['pay_nums']);
			$addsc = M('store')->where(array('uid'=>$uid))->setInc('sc',$num);

			$paidan = M('store')->where(array('uid'=>$uid))->getField('sc');
			$arr2 = array(
					'pay_id' => $uid,
					'get_id' => $uid,
					'get_nums' => $num,
					'get_time' => time(),
					'get_type'  => 35,
					'now_nums' => $paidan,
				 	'now_nums_get' => $paidan+$num,
					'status'=>1,
					'my'=>2
		 	);
			$res_tranmoney  = M('tranmoney')->add($arr2);

			$data = array('payin_id'=>$uid,'is_lin'=>1,'dongjie'=>1);
			$gaibian = M('trans')->where('id='.$yingc)->save($data);
			$is_lin = M('trans')->where('id='.$yingc)->find();
			if ($is_lin['is_lin']==1) {
				$jianqian['cunchu_num'] = 0;
				M('trans')->where(array('id'=>$yingc))->save($jianqian);
				//$this->success('领取成功',U('Growth/Dofinsh'));
				
				ajaxReturn('领取成功',1,U('Growth/Nofinsh'));
			}else{
                ajaxReturn('领取失败');
            }
		}
		
	}

	//买入记录
	public function Buyrecords(){
		$traInfo = M('trans');
		$uid = session('userid');
		$where['payin_id'] = $uid;
		//分页
		$p=getpage($traInfo,$where,20);
		$page=$p->show();
		$Chan_info = $traInfo->where($where)->order('id desc')->select();
		foreach ($Chan_info as $k =>$v){
			$Chan_info[$k]['username'] = M('user')->where(array('userid'=>$v['payout_id']))->getField('username');
			$Chan_info[$k]['get_timeymd'] = date('Y-m-d',$v['pay_time']);
			$Chan_info[$k]['get_timedate'] = date('H:i:s',$v['pay_time']);
		}
		if(IS_AJAX){
			if(count($Chan_info) >= 1) {
				ajaxReturn($Chan_info,1);
			}else{
				ajaxReturn('暂无记录',0);
			}
		}
		$this->assign('page',$page);
		$this->assign('Chan_info',$Chan_info);
		$this->assign('uid',$uid);
		$this->display();
	}


//卖入中心
	public function Buycenter(){
		if(IS_AJAX){
			$pricenum = I('mvalue');
			if($pricenum == ''){
				ajaxReturn('请选择正确的订单价格',0);
			}
			$order_info = M('trans as tr')->join('LEFT JOIN  ysk_user as us on tr.payout_id = us.userid')->where(array('tr.pay_state'=>0,'tr.trans_type'=>1,'tr.pay_nums'=>$pricenum))->order('id desc')->select();

			foreach($order_info as $k => $v){
				$order_info[$k]['cardinfo'] = M('bank_name')->where(array('q_id'=>$v['card_id']))->getfield('banq_genre');
				// $order_info[$k]['spay'] = $v['pay_nums'] * 0.9;
			}
			if(count($order_info) <= 0){
				ajaxReturn('没找到相关记录',0);
			}else{
				ajaxReturn($order_info,1);
			}
		}
		$this->display();
	}

	public function Dopurs(){
		if(IS_AJAX){
			$uid = session('userid');
			$trid = I('trid',1,'intval');
			$pwd = trim(I('pwd'));
			$sellnums = M('trans')->where(array('id'=>$trid))->field('pay_nums,payout_id,pay_state')->find();

			$sellAll = array(500,1000,3000,5000,10000,30000);
			if (!in_array($sellnums['pay_nums'], $sellAll)) {
				ajaxReturn('您选择购买的金额不正确',0);
			}
			if($sellnums['payout_id'] == $uid){
				ajaxReturn('您不能买入自己上架的哦~',0);
			}
			if($sellnums['pay_state'] != 0){
				ajaxReturn('该订单存在异常,暂时无法购买哦~',0);
			}
			//验证交易密码
			$minepwd = M('user')->where(array('userid'=>$uid))->Field('account,mobile,safety_pwd,safety_salt')->find();
			$user_object = D('Home/User');
			$user_info = $user_object->Trans($minepwd['account'], $pwd);
			//记录买入会员
			$res_Buy = M('trans')->where(array('id'=>$trid))->setField(array('payin_id'=>$uid,'pay_state'=>1));
			if($res_Buy){

				ajaxReturn('买入成功',1);
			}
		}
		$this->display();
	}
	//银行卡信息
	public function Cardinfos(){
		$uid = session('userid');
		$morecars = M('ubanks as u')->join('RIGHT JOIN ysk_bank_name as banks ON u.card_id = banks.pid' )->where(array('u.user_id'=>$uid))->order('u.id desc')->field('u.hold_name,u.id,u.card_number,u.user_id,banks.banq_genre,banks.banq_img')->select();
		if(IS_AJAX){
			$cardid = I('bangid');
			//是否是自己绑定的银行卡
			$isuid = M('ubanks')->where(array('id'=>$cardid))->getField('user_id');
			if($isuid != $uid){
				ajaxReturn('该张银行卡暂不属于您~',0);
			}
			$res = M('ubanks')->where(array('id'=>$cardid))->delete();
			if($res){
				ajaxReturn('该银行卡删除成功',1,'/User/Personal');
			}
		}
		$this->assign('morecars',$morecars);
		$this->display();
	}

	/**
	 * 微信绑定
	 */
	public function weixinbinding(){
		$uid = session('userid');
		$wxinfo = M('user')->where(array('userid'=>$uid))->field('wx,sktype,skimg,zfb')->find();
		$this->assign('wxinfo',$wxinfo);
		if(IS_POST){
			$uid = session('userid');
			$code = session('code');

			$codes = I('code');
			$data['sktype'] = I('sktype');
			$data['wx'] = I('wx');
			$data['zfb'] = I('zfb');
			$picname = $_FILES['uploadfile']['name'];
			$picsize = $_FILES['uploadfile']['size'];
			
			if($data['zfb']==null){
				ajaxReturn('请填写收款账号',0);
			}
			if($data['wx']==null){
				ajaxReturn('请填写微信联系方式',0);
			}
			// if(empty($code)||$code!=$codes){
				// ajaxReturn('验证码有误');
			// }
			if ($picname != "") {
				if ($picsize > 10485760) { //限制上传大小
					ajaxReturn('图片大小不能超过10M',0);
				}
			//	if(!strstr($picname,'.png') && !strstr($picname,'.jpg') && !strstr($picname,'.jpeg') && !strstr($picname,'.gif')){
			//		ajaxReturn('图片格式不对',0);
		//		}

				$rand = rand(100, 999);
				$pics = uniqid() . $type; //命名图片名称
				//上传路径
				$pic_path = "./Uploads/Payvos/". $pics;
				move_uploaded_file($_FILES['uploadfile']['tmp_name'], $pic_path);
			}
			$size = round($picsize/1024,2); //转换成kb
			$pic_path = trim($pic_path,'.');
			if($size){
				$data['skimg'] = $pic_path;
				$upwx = M('user')->where(array('userid'=>$uid))->save($data);
				if($upwx){
					ajaxReturn('提交成功',1,'/Growth/Conpay');
				}else{
					ajaxReturn('提交失败',0);
				}
			}		
		}
		$this->display();
	}

	/**
	 * 支付宝绑定
	 */
	public function alipaybinding(){
		$uid = session('userid');
		$wxinfo = M('user')->where(array('userid'=>$uid))->field('zfb,zfb_img,mobile')->find();
		$this->assign('wxinfo',$wxinfo);
		if(IS_POST){
			$uid = session('userid');
			$code = session('code');

			$codes = I('code');
			$data['zfb'] = I('wx');
			$picname = $_FILES['uploadfile']['name'];
			$picsize = $_FILES['uploadfile']['size'];
			
			if($data['zfb']==null){
				ajaxReturn('请填写支付宝账号',0);
			}
			// if(empty($code)||$code!=$codes){
				// ajaxReturn('验证码有误');
			// }
			if ($picname != "") {
				if ($picsize > 10485760) { //限制上传大小
					ajaxReturn('图片大小不能超过2M',0);
				}
				$type = strstr($picname, '.'); //限制上传格式
				if ($type != ".gif" && $type != ".jpg" && $type != ".png"  && $type != ".jpeg") {
					ajaxReturn('图片格式不对',0);
				}
				$rand = rand(100, 999);
				$pics = uniqid() . $type; //命名图片名称
				//上传路径
				$pic_path = "./Uploads/Payvos/". $pics;
				move_uploaded_file($_FILES['uploadfile']['tmp_name'], $pic_path);
			}
			$size = round($picsize/1024,2); //转换成kb
			$pic_path = trim($pic_path,'.');
			if($size){
				$data['zfb_img'] = $pic_path;
				$upwx = M('user')->where(array('userid'=>$uid))->save($data);
				if($upwx){
					ajaxReturn('提交成功',1,'/Growth/Cardinfos');
				}else{
					ajaxReturn('提交失败',0);
				}
			}		
		}
		$this->display();
	}

	/**
	 * usdt地址
	 */
	public function usdt(){
		$uid = session('userid');
		$wxinfo = M('user')->where(array('userid'=>$uid))->field('usdt,mobile')->find();
		$this->assign('wxinfo',$wxinfo);
		if(IS_AJAX){
			$khzy = trim(I('khzy'));
			if($khzy == ''){
				ajaxReturn('验证码不能为空',0);
			}
			$mobile = $wxinfo['mobile'];
            if(!check_sms($khzy,$mobile)){
                ajaxReturn('验证码错误或已过期',0);
            }
			$usdt['usdt'] = I('yhk');
			
			$res = M('user')->where(array('userid'=>$uid))->save($usdt);
			if($res){
				ajaxReturn('修改usdt成功',1,U('index/index'));
			}else{
				ajaxReturn('修改usdt失败',0);
			}
		}
		$this->display();
	}
	/**
	 * 复投
	 */
	public function futou(){
		if(IS_POST){
			$uid = session('userid');
			$trid = I('futouid');
			$datadj['dj_time'] = strtotime("7 day");
			$datadj['dj_set_time'] = time();
			$datadj['is_lin'] = 0;

			$trans = M('trans')->where(array('id'=>$trid))->find();
			// $zong = $trans['pay_nums']/2*3;
			$datadj['cunchu_num'] = $trans['pay_nums']/2;
			$datadj['diff_num'] = 0;
			$datadj['dongjie'] = 1;
			// M('store')->where(array('uid'=>$uid))->setInc('cangku_num',$zong);
			
			$ress = M('trans')->where(array('id'=>$trid))->save($datadj);
			//记录
			// $jifen_dochange['pay_id'] = 0;
			// $jifen_dochange['get_id'] = $uid;
			// $jifen_dochange['get_nums'] = +$zong;
			// $jifen_dochange['get_time'] = time();
			// $jifen_dochange['get_type'] = 8;
			// $jifen_dochange['my'] = 3;
			// $jifen_dochange['status'] = 1;
			// $res_addres = M('tranmoney')->add($jifen_dochange);

			if($ress){
				ajaxReturn('复投成功',1);
			}else{
				ajaxReturn('复投失败');
			}
		}
	}
		
	public function sendCode(){
        $userid = session('userid');
		$mobile= M('user')->where(array('userid'=>$userid))->getField('mobile');
        if(empty($mobile)){
            $mes['status']=0;
            $mes['message']='手机号码不能为空';
            $this->ajaxReturn($mes);
        } 
        if(!empty($_SERVER["HTTP_CLIENT_IP"]))
        {
            $cip = $_SERVER["HTTP_CLIENT_IP"];
        }
        else if(!empty($_SERVER["HTTP_X_FORWARDED_FOR"]))
        {
            $cip = $_SERVER["HTTP_X_FORWARDED_FOR"];
        }
        else if(!empty($_SERVER["REMOTE_ADDR"]))
        {
            $cip = $_SERVER["REMOTE_ADDR"];
        }
        $result=sendMsg($mobile);
		$this->ajaxReturn($result);
       
        
    }
	
	
	/**
	 * 短信接口
	 */
	public function NewSms($phone,$msg)
    {
			//$url="http://service.winic.org:8009/sys_port/gateway/index.asp?";
			//$data = "id=%s&pwd=%s&to=%s&content=%s&time=";
			//$id = 'renmai';
			//$pwd = 'renmai2019';
			$to = $phone; 
			$content = iconv("UTF-8","GB2312",$msg);
			$rdata = sprintf($data, $id, $pwd, $to, $content);
			
			
			
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_POST,1);
			curl_setopt($ch, CURLOPT_POSTFIELDS,$rdata);
			curl_setopt($ch, CURLOPT_URL,$url);
			curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
			$result = curl_exec($ch);
			curl_close($ch);
			$result = substr($result,0,3);
			return $result;
	}
}