<?php
//获取符合等级的上级
function get_level_top($uid,$level,$new=false,$suo=true){
    $id = $uid;
    for ($i=0; $i < 1; $i++) { 
        $pid = M('user')->where("userid = $id")->getField('pid');
        //判断是否顶层账号
        if($pid == 0){
            return 778904;
        }
        //判断账号是否锁定
        if($suo){
            $status = M('user')->where("userid = $pid")->getField('status');
            if($status!=1){
                return 778904;
            }
        }
        $ulevel = M('user')->where("userid = $pid")->getField('userlevel');
        if($ulevel>$level){
            return 778904;
        }
        if($ulevel==$level){
            //判断是否新人订单
            if($new){
                switch ($level) {
                    case '5':
                        $num = M('user')->where("userid = $pid")->getField('top5_new');
                        if($num>=729){
                            return 778904;
                        }else{
                            return $pid;
                        }
                        break;
                    case '6':
                        $num = M('user')->where("userid = $pid")->getField('top6_new');
                        if($num>=2187){
                            return 778904;
                        }else{
                            return $pid;
                        }
                        break;
                    case '7':
                        $num = M('user')->where("userid = $pid")->getField('top7_new');
                        if($num>=6561){
                            return 778904;
                        }else{
                            return $pid;
                        }
                        break;
                    case '8':
                        $num = M('user')->where("userid = $pid")->getField('top8_new');
                        if($num>=19683){
                            return 778904;
                        }else{
                            return $pid;
                        }
                        break;
                    case '9':
                        $num = M('user')->where("userid = $pid")->getField('top9_new');
                        if($num>=59049){
                            return 778904;
                        }else{
                            return $pid;
                        }
                        break;
                }
            }else{
                return $pid;
            }
        }
        if($ulevel<$level){
            $i = -1;
            $id = $pid;
            continue;
        }
    }
}
//upgrade表订单id生成
function upgrade_id(){
  for ($i=0; $i < 1; $i++) { 
    $id = chr(rand(65,90)).chr(rand(65,90)).rand(100000,999999);
    $where['id'] = $id;
    $a = M('upgrade')->where($where)->count();
    if($a!=0){
      $i = -1;
    }else{
      return $id;  
    }
  }
}

//获取用户上级
function gettop($uid,$ceng=1){
  $pid = $uid;
  for ($i=0; $i < $ceng; $i++) { 
    $uid = $pid;
    $pid = M('user')->where("userid = $uid")->getField('pid');
    if($pid == 0){
      return $uid;
    }
  }
  return $pid;
}

//获取满足条件的上一级
function getonetop($uid,$ceng=1,$dong=true,$level=true){
    $id = $uid;
  $ulevel = M('user')->where("userid = $id")->getField('userlevel');
  $pid = gettop($uid,$ceng-1);
  for ($i=0; $i < 1; $i++) { 
    $uid = $pid;
    $pid = M('user')->where("userid = $uid")->getField('pid');
    //判断是否顶层账号
    if($pid == 0){
      return $uid;
    }
    if($dong){
      //判断是否锁定
      $status = M('user')->where("userid = $pid")->getField('status');
      if($status!=1){
        $i--;
        continue;
      }
    }
    if($level){
      //判断等级是否满足条件
      $plevel = M('user')->where("userid = $pid")->getField('userlevel');
      if($ulevel>=$plevel){
        $i--;
        continue;
      }
    }
    
  }
  return $pid;
}
//获取用户符合条件的上级
function getoktop($uid,$ceng=1,$top5=false,$top6=false,$top7=false,$top8=false,$top9=false,$level10=false,$dong=true,$level=true,$leng=false){
  $id = $uid;
  $ulevel = M('user')->where("userid = $id")->getField('userlevel');
  $pid = gettop($uid,$ceng-1);
  for ($i=0; $i < 1; $i++) { 
    $uid = $pid;
    $pid = M('user')->where("userid = $uid")->getField('pid');
    //判断是否顶层账号
    if($pid == 0){
      return $uid;
    }
    if($dong){
      //判断是否锁定
      $status = M('user')->where("userid = $pid")->getField('status');
      if($status!=1){
        $i--;
        return 778904;
      }
    }
    if($leng){
      //判断是否冻结
      $status2 = M('user')->where("userid = $pid")->getField('is_cooling');
      if($status2!=0){
        $i--;
        return 778904;
      }
    }
    if($level){
      //判断等级是否满足条件
      $plevel = M('user')->where("userid = $pid")->getField('userlevel');
      if($ulevel>=$plevel){
        $i--;
        return 778904;
      }
    }
    if($level10){
      //判断上级等级是否为10级
      $plevel = M('user')->where("userid = $pid")->getField("userlevel");
      if($plevel!=10){
        $i--;
        continue;
      }
    }
    if($top5){
        //判断5级代理新人订单数
        $num = M('user')->where("userid = $pid")->getField("top5_new");
        if($num>=729){
            $i--;
            return 778904;
        }
    }
    if($top6){
        //判断6级代理新人订单数
        $num = M('user')->where("userid = $pid")->getField("top6_new");
        if($num>=2187){
            $i--;
            return 778904;
        }
    }
    if($top7){
        //判断7级代理新人订单数
        $num = M('user')->where("userid = $pid")->getField("top7_new");
        if($num>=6561){
            $i--;
            return 778904;
        }
    }
    if($top8){
        //判断8级代理新人订单数
        $num = M('user')->where("userid = $pid")->getField("top8_new");
        if($num>=19683){
            $i--;
            return 778904;
        }
    }
    if($top9){
        //判断9级代理新人订单数
        $num = M('user')->where("userid = $pid")->getField("top9_new");
        if($num>=59049){
            $i--;
            return 778904;
        }
    }
  }
  return $pid;
}

function p($data){
    echo "<pre>";
    print_r($data);
    echo "</pre>";
}


//检查网站是否关闭
function is_close_site(){
    
    $where['name']='TOGGLE_WEB_SITE';
    $info=M('Config','ysk_')->where($where)->field('value,tip')->find();
    return $info;    
}
//检查商城是否关闭
function is_close_mall(){
    
    $where['name']='TOGGLE_MALL_SITE';
    $info=M('Config','ysk_')->where($where)->field('value,tip')->find();
    return $info;    
}


function sp_dir_create($path, $mode = 0777)
{
    if (is_dir($path)) return true;
    $ftp_enable = 0;
    $path = sp_dir_path($path);
    $temp = explode('/', $path);
    $cur_dir = '';
    $max = count($temp) - 1;
    for ($i = 0; $i < $max; $i++) {
        $cur_dir .= $temp[$i] . '/';
        if (@is_dir($cur_dir))
            continue;
        @mkdir($cur_dir, 0777, true);
        @chmod($cur_dir, 0777);
    }
    return is_dir($path);
}

function sp_dir_path($path)
{
    $path = str_replace('\\', '/', $path);
    if (substr($path, -1) != '/')
        $path = $path . '/';
    return $path;
}

/**
 * [get_car_no 生成矿车编号]
 * @return [type] [description]
 */
function get_car_no(){
    $no=M('nzusfarm')->max('no');
    $no=intval($no);
    $no=$no+1;
    $len=strlen($no);
    if($len<6){
        $arr[1]='00000';
        $arr[2]='0000';
        $arr[3]='000';
        $arr[4]='00';
        $arr[5]='0';
        $no=$arr[$len].$no;
    }
    return $no;
}
/** 
*添加公共上传方法
*获取上传路径
*$picture
*/
function get_cover_url($picture){
    if($picture){
        $url = __ROOT__.'/Uploads/'.$picture;
    }else{
        $url = __ROOT__.'/Uploads/photo.jpg';
    }
    return $url;
}

/**
 * 用于生成插入datetime类型字段用的字符串
 * @param string $str 支持偏移字符串
 */
function datetime($str = 'now')
{
    return @date("Y-m-d H:i:s", strtotime($str));
}

/**
 * 时间戳格式化
 * @param int $time
 * @return string 完整的时间显示
 * @author jry <598821125@qq.com>
 */
function time_format($time = null, $format = 'Y-m-d H:i')
{
    $time = $time === null ? time() : intval($time);
    return date($format, $time);
}

/**
 * 系统非常规MD5加密方法
 * @param  string $str 要加密的字符串
 * @return string
 * @author jry <598821125@qq.com>
 */
function user_md5($str, $auth_key=null)
{
    if (!$auth_key) {
        $auth_key = C('AUTH_KEY') ?: '0755web';
    }
    return '' === $str ? '' : md5(sha1($str) . $auth_key);
}

/**
 * [user_salt 用户密码加密链接串]
 * @return [type] [description]
 */
function user_salt($time=null){
    if(isset($time) || empty($time)){
        $time=time();
    }
   return substr(md5($time),0,3);
}

/**
 * 获取上传文件路径
 * @param  int $id 文件ID
 * @return string
 * @author jry <598821125@qq.com>
 */
function get_cover($id = null, $type = null)
{
    return D('Admin/Upload')->getCover($id, $type);
}



/**
 * 检测是否使用手机访问
 * @access public
 * @return bool
 */
function is_wap()
{
    if (isset($_SERVER['HTTP_VIA']) && stristr($_SERVER['HTTP_VIA'], "wap")) {
        return true;
    } elseif (isset($_SERVER['HTTP_ACCEPT']) && strpos(strtoupper($_SERVER['HTTP_ACCEPT']), "VND.WAP.WML")) {
        return true;
    } elseif (isset($_SERVER['HTTP_X_WAP_PROFILE']) || isset($_SERVER['HTTP_PROFILE'])) {
        return true;
    } elseif (isset($_SERVER['HTTP_USER_AGENT']) && preg_match('/(blackberry|configuration\/cldc|hp |hp-|htc |htc_|htc-|iemobile|kindle|midp|mmp|motorola|mobile|nokia|opera mini|opera |Googlebot-Mobile|YahooSeeker\/M1A1-R2D2|android|iphone|ipod|mobi|palm|palmos|pocket|portalmmm|ppc;|smartphone|sonyericsson|sqh|spv|symbian|treo|up.browser|up.link|vodafone|windows ce|xda |xda_)/i', $_SERVER['HTTP_USER_AGENT'])) {
        return true;
    } else {
        return false;
    }
}

/**
 * 是否微信访问
 * @return bool
 * @author jry <598821125@qq.com>
 */
function is_weixin()
{
    if (strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') !== false) {
        return true;
    } else {
        return false;
    }
}

/**
 * [get_verify 生成验证码]
 * @return [type] [description]
 */
function get_verify(){
    ob_clean();
    $config =    array(
    'codeSet' =>  '0123456789',   
    'fontSize'    =>    50,    // 验证码字体大小   
    'length'      =>    4,     // 验证码位数    
    'fontttf'     =>   '5.ttf',
    'useCurve'    => false,
    'bg'          => array(229, 237, 240),
    );
    $Verify =     new \Think\Verify($config);
    $Verify->entry();
}


/**
 * [ajaxReturn ajax提示款]
 * @param  [type]  $message [提示文字]
 * @param  integer $status  [1=成功 0=失败]
 * @param  string  $url     [跳转地址]
 * @param  string  $extra   [回传数据]
 * @return [type]           [json数据]
 */
function ajaxReturn($message,$status=0, $url ='',$extra='') {
    // 返回JSON数据格式到客户端 包含状态信息
    header('Content-Type:application/json; charset=utf-8');
    $result = array(
        'message' => $message,
        'status'  =>  $status,
        'url' => $url,
        'result'  =>  $extra
    );
    
    exit(json_encode($result));
}

// =陶==js消息提示框===
function error_alert($mes){
    echo "<meta charset=\"utf-8\"/><script>alert('".$mes."');javascript:history.back(-1);</script>";
    exit;
}
function success_alert($mes,$url=''){
    if($url!=''){
        echo "<meta charset=\"utf-8\"/><script>alert('".$mes."');location.href='" .$url. "';</script>";
    }else{
       echo "<meta charset=\"utf-8\"/><script>alert('".$mes."');location.href='" .$jumpUrl. "';</script>"; 
    }
    exit;
}
// =陶==js消息提示框===



//防注入，字符串处理，禁止构造数组提交
//字符过滤
//陶
function safe_replace($string) {
    if(is_array($string)){ 
       $string=implode('，',$string);
       $string=htmlspecialchars(str_shuffle($string));
    } else{
        $string=htmlspecialchars($string);
    }
    $string = str_replace('%20','',$string);
    $string = str_replace('%27','',$string);
    $string = str_replace('%2527','',$string);
    $string = str_replace('*','',$string);
    $string=str_replace("select","",$string);
    $string=str_replace("join","",$string);
    $string=str_replace("union","",$string);
    $string=str_replace("where","",$string);
    $string=str_replace("insert","",$string);
    $string=str_replace("delete","",$string);
    $string=str_replace("update","",$string);
    $string=str_replace("like","",$string);
    $string=str_replace("drop","",$string);
    $string=str_replace("create","",$string);
    $string=str_replace("modify","",$string);
    $string=str_replace("rename","",$string);
    $string=str_replace("alter","",$string);
    $string=str_replace("cas","",$string);
    $string=str_replace("or","",$string);
    $string=str_replace("=","",$string);
    $string = str_replace('"','&quot;',$string);
    $string = str_replace("'",'',$string);
    $string = str_replace('"','',$string);
    $string = str_replace(';','',$string);
    $string = str_replace('<','&lt;',$string);
    $string = str_replace('>','&gt;',$string);
    $string = str_replace("{",'',$string);
    $string = str_replace('}','',$string);
    $string = str_replace('--','',$string);
    $string = str_replace('(','',$string);
    $string = str_replace(')','',$string);

    return $string;
}

function payway($value){
    $arr=array('支付宝','微信');
    return $arr[$value];
}

/**
 * 获取父级账号
 */
function get_parent_account($pid){
    $account=D('User')->where('userid ='.$pid)->getField('account');
    if($account)
        return $account;
    else
        return '无';
}

function get_user_name($uid){
    $where['userid']=$uid;
    $info=M('user')->where($where)->field('account,username')->find();
    return $info['username']."(".$info['account'].")";
}


//验证码
 function set_verify(){
        ob_clean();
        $config =    array(
        'codeSet' =>  '0123456789',   
        'fontSize'    =>    30,    // 验证码字体大小   
        'length'      =>    4,     // 验证码位数    
        'fontttf'     =>   '5.ttf',
        'useCurve'    => false,
        'expire'    =>  1800,//过期时间
        );
        $Verify =     new \Think\Verify($config);
        $Verify->entry();
    }

//验证验证码
function check_verify($code)
{
    $verify = new \Think\Verify();
    return $verify->check($code);
}

//获取以及好友人数
function get_children_count($uid){
    $where['pid']=$uid;
    return M('user')->where($where)->count(1);
}


/**
 * [trading 添加用户交易记录明细]
 * @param  [type] $data [添加的数据]
 * @return [type]         [description]
 */
function add_trading($data){
    if(empty($data))
        return false;

    $trading=M('fruitdetail');
    
    if(empty($data['uid'])){
      $userid=session('userid');
      $data['uid']=$userid;
    }
    $data['add_time']=time();
    $res=$trading->add($data);
    return $res;
}


// 根据所给时间戳获取当天开始时间和结束时间
function getTodayTimes($timestmp){
    $start = $statr = strtotime(date('Y-m-d',$timestmp));
    $end = strtotime(date('Y-m-d 23:59:59',$timestmp));
    $data['start'] = $start;
    $data['end'] = $end;
    return $data;
}