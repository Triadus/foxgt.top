<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=ratings.send.done
[END_COT_EXT]
==================== */

/**
 * Update item_rating for users
 *
 * @package Ratings Users
 * @author Cmsworks
 * @copyright Copyright (c) Cmsworks.ru, 2017
 */

defined('COT_CODE') or die('Wrong URL');

if($area == 'users')
{
	global $db_users;

	$db->update($db_users, array('user_rating' => $ratingnewaverage), "user_id=" . $code);
}