<?php

defined('COT_CODE') or die('Wrong URL');

global $db_users;

if (!$db->fieldExists($db_users, "user_rating"))
{
	$db->query("ALTER TABLE `$db_users` ADD COLUMN `user_rating` decimal(5,2) NOT NULL default '0.00'");
}