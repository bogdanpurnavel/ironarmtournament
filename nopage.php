<?php
if(!defined('AREA')) {
  define('AREA', 'NP');
  require_once('include/config.php');
}

  header("refresh: 10; url=".site_url);

  $identif = 'nopage';
  $header['section'] = 'nopage';
  $header['title'] = 'Page not Found';
  $header['pagename'] = 'Page not Found';
  $header['breadcrumb'] = 0; 
	$header['nofollow'] = 1;

  include('design/nms_header.php');
  include('design/nms_nopage.php');
  include('design/nms_footer.php');
?>