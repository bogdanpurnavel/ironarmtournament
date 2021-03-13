<?php
define('AREA', 'C');

session_start();
ob_start("ob_gzhandler");

require_once('include/config.php');

/*
	header("Cache-Control: max-age");
	header("Expires: " . gmdate ("D, d M Y H:i:s", $timeExp) . " GMT");
	header('ETag: '.md5(floor(time()/30)*30));
*/

if(file_exists('pages/'.$identif.'.php') || file_exists('config/'.$identif.'.php')) {
	if(file_exists('config/'.$identif.'.php')) { include('config/'.$identif.'.php'); }
	include('design/nms_header.php');
	if(file_exists('pages/'.$identif.'.php')) { include('pages/'.$identif.'.php'); }
	include('design/nms_footer.php');  
} else {
	include('nopage.php');
	exit();
}

ob_end_flush();
?>