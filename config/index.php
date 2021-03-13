<?php
if(!defined('AREA')) { die('Access denied'); }

//page info
$header['title'] 								= 'Bracket';
$header['pagename'] 						= '';

require fullpath.'/include/classes/Bracket.php';

$players = array();
$players_temp = $db->fetch_all("SELECT * FROM `".db_players."`");
foreach($players_temp as $key => $value){
	$players[$key]['id'] = $value['player_id'];
	$players[$key]['name'] = $value['player_name'];
}	
unset($players_temp, $key, $value);

$testb = new Bracket($players);

//$testb = Bracket::bracketFromId(2);
