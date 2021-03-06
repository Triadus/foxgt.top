<?php
/**
 * JavaScript and CSS loader for bootlance theme
 *
 * @package Cotonti
 * @version 0.9.0
 * @author CMSWorks Team
 * @copyright Copyright (c) Logo-Z, littledev.ru
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');


cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/bootstrap/css/bootstrap.min.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/bootstrap/js/bootstrap.min.js');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/style.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/font-awesome.min.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/js.js');

require_once cot_rc($cfg['themes_dir'].'/'.$usr['theme'].'/'.$usr['theme'].'.resources.php');

?>
