<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=usertags.main
[END_COT_EXT]
==================== */

/**
 * Displays users ratings
 *
 * @package Ratings Users
 * @author Cmsworks
 * @copyright Copyright (c) Cmsworks.ru, 2017
 */

defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('ratings', 'plug');

list ($ratings_display, $ratings_average, $ratings_count) = cot_ratings_display('users', $user_data['user_id'], $user_data['user_cat']);

$temp_array['RATINGS_DISPLAY'] = $ratings_display;
$temp_array['RATINGS_AVERAGE'] = $ratings_average;
$temp_array['RATINGS_COUNT']   = $ratings_count;
