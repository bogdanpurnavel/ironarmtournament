<?php
if(!defined('AREA')) { die('Access denied'); }

/**
 * Outputs a form input field (text/password)
 *
 * @param string $name The name and ID of the input field
 * @param string $value The default value for the input field
 * @param string $parameters Additional parameters for the input field
 * @param boolean $override Override the default value with the value found in the GET or POST scope
 * @param string $type The type of input field to use (text/password/file)
 * @access public
 */

function create_input_text($name, $value = null, $class = null, $opt = null, $override = true, $type = 'text') {
  if (!is_bool($override)) {
		$override = true;
  }

  if ($override === true) {
		if ( strpos($name, '[') !== false ) {
			$name_string = substr($name, 0, strpos($name, '['));
			$name_key = substr($name, strpos($name, '[') + 1, strlen($name) - (strpos($name, '[') + 2));
	
			if ( isset($_GET[$name_string][$name_key]) ) {
			$value = $_GET[$name_string][$name_key];
			} elseif ( isset($_POST[$name_string][$name_key]) ) {
			$value = $_POST[$name_string][$name_key];
			}
		} else {
			if ( isset($_GET[$name]) ) {
			$value = $_GET[$name];
			} elseif ( isset($_POST[$name]) ) {
			$value = $_POST[$name];
			}
		}
  }

  if (!in_array($type, array('text', 'password', 'file', 'date','time'))) {
		$type = 'text';
  }

  $field = '<input type="' . secREAD($type) . '" name="' . secREAD($name) . '" class="input ' . secREAD($class) . '"';

  if (strpos($opt, 'id=') === false) {
		$field .= ' id="' . secREAD($name) . '"';
  }

  if (trim($value) != '') {
		$field .= ' value="' . secREAD($value) . '"';
  }

  if (!empty($opt)) {
		$field .= ' ' . $opt;
  }

  $field .= ' />';

  return $field;
}

/**
 * Outputs a form password field
 *
 * @param string $name The name and ID of the password field
 * @param string $parameters Additional parameters for the password field
 * @access public
 */

function create_input_password($name, $class = null, $parameters = null) {
  return create_input_text($name, null, $class, $parameters, false, 'password');
}

/**
 * Outputs a form file upload field
 *
 * @param string $name The name and ID of the file upload field
 * @param boolean $show_max_size Show the maximum file upload size beside the field
 * @access public
 */

function create_input_file($name, $class = null, $opt = null, $show_max_size = false) {
  static $upload_max_filesize;

  if (!is_bool($show_max_size)) {
		$show_max_size = false;
  }

  $field = create_input_text($name, null, $class, $opt, false, 'file');

  if ($show_max_size === true) {
		if (!isset($upload_max_filesize)) {
			$upload_max_filesize = @ini_get('upload_max_filesize');
		}
	
		if (!empty($upload_max_filesize)) {
			$field .= '&nbsp;' . sprintf('Max: %s', secREAD($upload_max_filesize));
		}
  }

  return $field;
}


/**
 * Outputs a form textarea field
 *
 * @param string $name The name and ID of the textarea field
 * @param string $value The default value for the textarea field
 * @param int $width The width of the textarea field
 * @param int $height The height of the textarea field
 * @param string $parameters Additional parameters for the textarea field
 * @param boolean $override Override the default value with the value found in the GET or POST scope
 * @access public
 */
 
function create_input_textarea($name, $value = null, $class = null, $opt = null, $override = true) {
	$width = 60;
	$height = 5;
	
  if (!is_bool($override)) {
		$override = true;
  }

  if ($override === true) {
		if (isset($_GET[$name])) {
			$value = $_GET[$name];
		} elseif (isset($_POST[$name])) {
			$value = $_POST[$name];
		}
  }

  $field = '<textarea name="' . secREAD($name) . '" class="input textarea ' . secREAD($class) . '" cols="' . (int)$width . '" rows="' . (int)$height . '"';

  if (strpos($opt, 'id=') === false) {
		$field .= ' id="' . secREAD($name) . '"';
  }

  if (!empty($opt)) {
		$field .= ' ' . $opt;
  }

  $field .= '>' . secREAD($value) . '</textarea>';

  return $field;
}

/**
 * Outputs a form selection field (checkbox/radio)
 *
 * @param string $name The name and indexed ID of the selection field
 * @param string $type The type of the selection field (checkbox/radio)
 * @param mixed $values The value of, or an array of values for, the selection field
 * @param string $default The default value for the selection field
 * @param string $parameters Additional parameters for the selection field
 * @param string $separator The separator to use between multiple options for the selection field
 * @access public
 */

function create_input_chk($name, $type, $values, $default = null, $opt = null, $separator = '&nbsp;&nbsp;') {
  if (!is_array($values)) {
		$values = array($values);
  }

  if ( strpos($name, '[') !== false ) {
		$name_string = substr($name, 0, strpos($name, '['));
	
		if ( isset($_GET[$name_string]) ) {
			$default = $_GET[$name_string];
		} elseif ( isset($_POST[$name_string]) ) {
			$default = $_POST[$name_string];
		}
  } else {
		if ( isset($_GET[$name]) ) {
			$default = $_GET[$name];
		} elseif ( isset($_POST[$name]) ) {
			$default = $_POST[$name];
		}
  }

  $field = '';

  $counter = 0;

  foreach ($values as $key => $value) {
		$counter++;
	
		if (is_array($value)) {
			$selection_value = $value['id'];
			$selection_text = '&nbsp;' . $value['text'];
		} else {
			$selection_value = $value;
			$selection_text = '';
		}
	
		
		$field .= '<input class="css-checkbox" type="' . secREAD($type) . '" name="' . secREAD($name) . '"';
	
		if (strpos($opt, 'id=') === false) {
			$field .= ' id="' . secREAD($name) . (sizeof($values) > 1 ? '_' . $counter : '') . '"';
		} elseif (sizeof($values) > 1) {
			$offset = strpos($opt, 'id="');
			$field .= ' id="' . secREAD(substr($opt, $offset+4, strpos($opt, '"', $offset+4)-($offset+4))) . '_' . $counter . '"';
		}
	
		if (trim($selection_value) != '') {
			$field .= ' value="' . secREAD($selection_value) . '"';
		}
	
		if ((is_bool($default) && $default === true) || ((is_string($default) && (trim($default) == trim($selection_value))) || (is_array($default) && in_array(trim($selection_value), $default)))) {
			$field .= ' checked="checked"';
		}
	
		if (!empty($opt)) {
			$field .= ' ' . $opt;
		}
	
		$field .= ' />';
		
		if (!empty($selection_text)) {
			$field .= '<label class="css-label" for="' . secREAD($name) . (sizeof($values) > 1 ? '_' . $counter : '') . '">'.$selection_text .'</label>';
		}
	
		
		//if (!empty($selection_text)) {
		//  $field .= $selection_text .'</label>';
		//}
	
		$field .= $separator;
  }

  if (!empty($field)) {
		$field = substr($field, 0, strlen($field)-strlen($separator));
  }

  return $field;
}

/**
 * Outputs a form checkbox field
 *
 * @param string $name The name and indexed ID of the checkbox field
 * @param mixed $values The value of, or an array of values for, the checkbox field
 * @param string $default The default value for the checkbox field
 * @param string $parameters Additional parameters for the checkbox field
 * @param string $separator The separator to use between multiple options for the checkbox field
 * @access public
 */

function create_input_checkbox($name, $values = null, $default = null, $class = null, $opt = null, $separator = '&nbsp;&nbsp;') {
  return create_input_chk($name, 'checkbox', $values, $default, $opt, $separator);
}

/**
 * Outputs a form radio field
 *
 * @param string $name The name and indexed ID of the radio field
 * @param mixed $values The value of, or an array of values for, the radio field
 * @param string $default The default value for the radio field
 * @param string $parameters Additional parameters for the radio field
 * @param string $separator The separator to use between multiple options for the radio field
 * @access public
 */

function create_input_radio($name, $values, $default = null, $class = null, $opt = null, $separator = '&nbsp;&nbsp;') {
  return create_input_chk($name, 'radio', $values, $default, $opt, $separator);
}

/**
 * Outputs a form hidden field
 *
 * @param string $name The name of the hidden field
 * @param string $value The value for the hidden field
 * @param string $parameters Additional parameters for the hidden field
 * @access public
 */

function create_input_hidden($name, $value = null, $opt = null) {
  $field = '<input type="hidden" name="' . secREAD($name) . '"';

  if (strpos($opt, 'id=') === false) {
		$field .= ' id="' . secREAD($name) . '"';
  }

  if (trim($value) != '') {
		$field .= ' value="' . secREAD($value) . '"';
  }

  if (!empty($opt)) {
		$field .= ' ' . $opt;
  }

  $field .= ' />';

  return $field;
}

/**
 * Outputs a form pull down menu field
 *
 * @param string $name The name of the pull down menu field
 * @param array $values Defined values for the pull down menu field
 * @param string $default The default value for the pull down menu field
 * @param string $parameters Additional parameters for the pull down menu field
 * @access public
 */

function create_input_selectbox($name, $values, $default = null, $class = null, $opt = null) {
  $group = false;

  if (isset($_GET[$name])) {
		$default = $_GET[$name];
  } elseif (isset($_POST[$name])) {
		$default = $_POST[$name];
  }

  $field = '<select class="input select ' . $class . '" name="' . secREAD($name) . '"';

  if (strpos($opt, 'id=') === false) {
		$field .= ' id="' . secREAD($name) . '"';
  }

  if (!empty($opt)) {
		$field .= ' ' . $opt;
  }

  $field .= '>';

  for ($i=0, $n=sizeof($values); $i<$n; $i++) {
		if (isset($values[$i]['group'])) {
			if ($group != $values[$i]['group']) {
				$group = $values[$i]['group'];
		
				$field .= '<optgroup label="' . secREAD($values[$i]['group']) . '">';
			}
		}
	
		$field .= '<option value="' . secREAD($values[$i]['id']) . '"';
	
		if ( (!is_null($default) && !is_array($default) && ((string)$default == (string)$values[$i]['id'])) || (is_array($default) && in_array($values[$i]['id'], $default)) ) {
			$field .= ' selected="selected"';
		}
	
		$field .= '>' . secREAD($values[$i]['text'], array('"' => '&quot;', '\'' => '&#039;', '<' => '&lt;', '>' => '&gt;')) . '</option>'."\n";
	
		if ( ($group !== false) && (($group != $values[$i]['group']) || !isset($values[$i+1])) ) {
			$group = false;
	
			$field .= '</optgroup>';
		}
  }

  $field .= '</select>';

  return $field;
}

