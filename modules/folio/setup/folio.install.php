<?php 

/**
 * folio module
 *
 * @package folio
 * @version 2.5.2
 * @author CMSWorks Team
 * @copyright Copyright (c) Logo-Z, littledev.ru
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');


require_once cot_incfile('folio', 'module');

global $db_structure, $db_foliostore, $db_folio, $db_auth, $db_mavatars;

if(cot_module_active('foliostore'))
{
	require_once cot_incfile('foliostore', 'module');
	// Копируем структуру модуля Foliostore в Folio
	$sql = $db->query("SELECT * FROM $db_structure WHERE structure_area='foliostore'");
	while($row = $sql->fetch())
	{
		unset($row['structure_id']);
		$row['structure_area'] = 'folio';

		$db->insert($db_structure, $row);
	}

	// Копируем права структуры Foliostore
	$sql = $db->query("SELECT * FROM $db_auth WHERE auth_code='foliostore'");
	while($row = $sql->fetch())
	{
		unset($row['auth_id']);
		$row['auth_code'] = 'folio';

		$db->insert($db_auth, $row);
	}

	// Копируем записи из таблицы Foliostore в Folio
	// При этом также переименовываем загруженные изображения в плагине Mavatars
	$sql = $db->query("SELECT * FROM $db_foliostore WHERE item_store<>1");
	while($row = $sql->fetch())
	{
		$folioid = $row['item_id'];

		unset($row['item_id']);
		unset($row['item_store']);
		unset($row['item_index']);

		$db->insert($db_folio, $row);
		$id = $db->lastInsertId();

		if(cot_plugin_active('mavatars'))
		{
			if($mav = $db->query("SELECT * FROM $db_mavatars WHERE mav_code=" . $folioid . " AND mav_extension='foliostore'")->fetch())
			{
				unset($mav['mav_id']);
				$mav['mav_extension'] = 'folio';
				$mav['mav_code'] = $id;

				$db->insert($db_mavatars, $mav);
			}	
		}
	}
}
else
{
	require_once cot_incfile('structure');
	
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'programming', 'structure_title' => 'Программирование', 'structure_path' => '001'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'management', 'structure_title' => 'Менеджмент', 'structure_path' => '002'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'folioing', 'structure_title' => 'Маркетинг и реклама', 'structure_path' => '003'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'design', 'structure_title' => 'Дизайн', 'structure_path' => '004'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'seo', 'structure_title' => 'Оптимизация (SEO)', 'structure_path' => '005'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'texts', 'structure_title' => 'Тексты', 'structure_path' => '006'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'photo', 'structure_title' => 'Фотография', 'structure_path' => '007'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'gamedev', 'structure_title' => 'Разработка игр', 'structure_path' => '008'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'consulting', 'structure_title' => 'Консалтинг', 'structure_path' => '009'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'construction', 'structure_title' => 'Строительство', 'structure_path' => '010'));
	
	$db->update($db_auth, array('auth_rights' => 1), "auth_code='folio' AND auth_groupid=7");
}


?>