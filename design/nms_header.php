<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ro" lang="ro">
<head>
<title><?=$header['title']; ?> | Bracket</title>
<meta name="description" content="<?=$header['description']; ?>" />
<meta name="keywords" content="<?=$header['keywords']; ?>" />
<meta name="generator" content="www.nemesis.ro" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="copyright" content="Copyright <? echo date('Y'); ?>" />
<meta name="msapplication-config" content="none" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="/favicon.ico" type="image/x-icon" rel="icon" />
<link href="/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<link href="/apple-touch-icon.png" rel="apple-touch-icon" /> 
<link rel="stylesheet" title="css" href="/static/css/style.css" type="text/css" />
<script type="text/javascript" src="/static/js/javascript.js"></script>
<? if($header['nofollow'] == 1) { ?><meta name="robots" content="noindex, follow" /><? echo "\n"; } ?>
</head>
<body>
<div class="header-container">
</div>
<div class="wrapper-container">
  <noscript><div class="notification-wrapper main"><div class="notification notification-error"><button type="button" class="close">&times;</button> <strong>Javascript appears to be disabled in your browser.</strong> You must have JavaScript enabled in your browser to utilize the functionality of this website.</div></div></noscript>
  <? if($errmsg != '') { ?><div class="notification-wrapper main"><div class="notification notification-error"><button type="button" class="close">&times;</button><?=$errmsg?></div></div><? } ?>
  <? if($warningmsg != '') { ?><div class="notification-wrapper main"><div class="notification notification-warning"><button type="button" class="close">&times;</button><?=$warningmsg?></div></div><? } ?>
