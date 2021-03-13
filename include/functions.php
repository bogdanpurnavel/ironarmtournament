<? 
//functions
function secREAD($string) {
	if(!is_array($string)) { $qu = trim($string); }
	return $string;
}

function MyEmailCrypt($email) {
	$character_set = '+-.0123456789@ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz'; 
	$key = str_shuffle($character_set); 
	$cipher_text = ''; 
	$id = 'e'.rand(1,999999999);
	for ($i=0;$i<strlen($email);$i+=1) { $cipher_text.= $key[strpos($character_set,$email[$i])]; }
  
	$script = 'var a="'.$key.'";var b=a.split("").sort().join("");var c="'.$cipher_text.'";var d="";'; 
	$script.= 'for(var e=0;e<c.length;e++)d+=b.charAt(a.indexOf(c.charAt(e)));'; 
	$script.= 'document.getElementById("'.$id.'").innerHTML="<a href=\\"mailto:"+d+"\\">"+d+"<\/a>"'; 
	$script = "eval(\"".str_replace(array("\\",'"'),array("\\\\",'\"'), $script)."\")"; 
	$script = '<script type="text/javascript">/*<![CDATA[*/'.$script.'/*]]>*/</script>'; 
	return '<span id="'.$id.'"></span>'.$script; 
  }
  
function clean($vars) {
	foreach($vars as $key => $item) {
		$vars[$key] = strip_tags(trim($item));
	}
	return $vars;		
}

function show($value){
	$value = is_array($value) ? array_map('show', $value) : show_one($value);
	return $value;
}

function show_one($string){
	return htmlspecialchars($string, ENT_QUOTES, 'UTF-8');
}

function checkEmail($email) {
	$email = trim($email);
  
	if ( strlen($email) > 255 ) {
		  $valid_address = false;
	} else {
		  if ( substr_count( $email, '@' ) > 1 ) {
			  $valid_address = false;
		  }
	  
		  if ( preg_match("/[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/i", $email) ) {
			  $valid_address = true;
		  } else {
			  $valid_address = false;
		  }
		  }
	  
		  if ($valid_address) {
		  $domain = explode('@', $email);
	  
		  if ( !checkdnsrr($domain[1], "MX") && !checkdnsrr($domain[1], "A") ) {
			  $valid_address = false;
		  }
	}
  
	return $valid_address;
}

function set_notification($message) {
  $_SESSION['notification'] = $message;
}