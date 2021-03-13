<?php
if(!defined('AREA')) { die('Access denied'); }

error_reporting(-1);
ini_set('display_errors', 1);

set_time_limit(0);
define('PAGE_PARSE_START_TIME', microtime(true));
date_default_timezone_set('Europe/Bucharest');

//domain
define('fullpath', 'C:/xampp/htdocs/bracket/');
define('domain_path', 'bracket.nms');
define('site_url', 'http://'.domain_path);
define('email_to', 'bogdan@nemesis.ro'); //checkhere

//connect to db
require_once("classes/mysqli.php");
$mysql['host'] = "localhost";
$mysql['user'] = "root";
$mysql['pass'] = "";
$mysql['base'] = "bracket";

$db = new mysql;
unset($mysql);

$db->query("SET NAMES utf8");

//general define
define('TIMP', date('Y-m-d H:i:s'));
if(isset($_SERVER['REMOTE_ADDR'])) { define('myip', $db->show_one($_SERVER['REMOTE_ADDR'], 'encode')); } else { define('myip', '127.0.0.1'); }
if(isset($_SERVER['HTTP_USER_AGENT'])) { define('user_agent', $_SERVER['HTTP_USER_AGENT']); } else { define('user_agent', ''); }
if(isset($_SERVER['HTTP_REFERER'])) { define('user_referer', $_SERVER['HTTP_REFERER']); } else { define('user_referer', ''); }
if(isset($_SERVER['REQUEST_URI'])) { define('user_actual_link', $_SERVER['REQUEST_URI']); } else { define('user_actual_link', ''); }
if(isset($_SERVER['HTTP_X_REQUESTED_WITH'])) { define('user_ajax', 1); } else { define('user_ajax', 0); }

$getid = 0;
$identif = 'nopage';
$action = '';
$slug = '';

$pg = 1;
$perpage 		= 60;
$sqlLimit 	= ' LIMIT '.(($pg * $perpage) - $perpage).', '.$perpage;
$sqlOrder		= "";
$sqlWhere 	= "";
$errmsg 		= "";
$warningmsg = "";
$nr 				= (($pg * $perpage) - $perpage);

$errmsg = "";
$warningmsg = "";

require_once __DIR__ . '\routes.php';

// DEFAULT VALUES //
$header['title'] 								= 'UBM Agri Trade';
$header['description'] 					= '';
$header['keywords'] 						= '';

$header['pagename'] 						= '';

$header['breadcrumb'] 					= 1;
$header['breadarray'] 					= array();
$header['breadtitle'] 					= '';

$header['menu'] 								= '';
$header['section'] 							= '';

$header['is_spider'] 						= 0;
$header['nofollow'] 						= 0;
$header['cookie_consent'] 			= '1';

$header['slider']								= 0;

//notification
if(isset($_SESSION['notification']) && $_SESSION['notification'] != '') { $warningmsg = $_SESSION['notification']; unset($_SESSION['notification']); }

//database defines
define('db_bracket', 'nms_bracket');
define('db_bracket_seed', 'nms_bracket_seed');

define('db_players', 'nms_players');

//files
require_once("functions.php");
require_once("functions_input.php");


//verify cookie consent
if(isset($_COOKIE['consentcookie']) && $_COOKIE['consentcookie'] == 'y') {
	$header['cookie_consent'] = 0;
}