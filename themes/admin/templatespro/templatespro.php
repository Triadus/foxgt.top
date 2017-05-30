<?php

defined('COT_CODE') or die('Wrong URL');
$R['code_title_page_num'] = ' (' . $L['Page'] . ' {$num})';
$R['link_pagenav_current'] = '<li class="uk-active"><a href="{$url}"{$event}{$rel}><span>{$num}</span></a></li>';
$R['link_pagenav_first'] = '<li><a href="{$url}"{$event}{$rel}> </a></li>';
$R['link_pagenav_gap'] = '<li cllass="uk-disabled"><span>...</span></li>';
$R['link_pagenav_last'] = '<li><a href="{$url}"{$event}{$rel}> </a></li>';
$R['link_pagenav_main'] = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next'] = '<li><a href="{$url}"{$event}{$rel}><span uk-pagination-next></span></a></li>';
$R['link_pagenav_prev'] = '<li><a href="{$url}"{$event}{$rel}><span uk-pagination-previous></span></a></li>';

// Status indicators
$R['admin_code_missing'] = '<span  class="uk-label uk-label-danger">'.$L['adm_missing'].'</span>';
$R['admin_code_notinstalled'] = '<span class="uk-label uk-label-danger">'.$L['adm_notinstalled'].'</span>';
$R['admin_code_partrunning'] = '<span class="uk-label uk-label-warning">'.$L['adm_partrunning'].'</span>';
$R['admin_code_paused'] = '<span class="uk-label uk-label-warning" >'.$L['adm_paused'].'</span>';
$R['admin_code_present'] = '<span class="uk-label uk-label-successt">'.$L['adm_present'].'</span>';
$R['admin_code_running'] = '<span class="uk-label uk-label-success" >'.$L['adm_running'].'</span>';

$R['input_checkbox'] = '<input type="hidden" name="{$name}" value="{$value_off}" class="uk-checkbox" /><label><input type="checkbox" name="{$name}" value="{$value}"{$checked} class="uk-checkbox" /> {$title}</label>';
$R['input_check'] = '<label><input class="uk-checkbox" type="checkbox" name="{$name}" value="{$value}"{$checked} /> {$title}</label>';#{$attrs}
$R['input_radio'] = '<label><input class="uk-radio" type="radio" name="{$name}" value="{$value}"{$checked} /> {$title}</label>';
$R['form_guest_remember'] = '<input class="uk-checkbox" type="checkbox" name="rremember" />';
$R['form_guest_remember_forced'] = '<input class="uk-checkbox" type="checkbox" name="rremember" checked="checked" disabled="disabled" />';

$R['input_textarea'] = '<textarea class="uk-textarea" name="{$name}" rows="6" cols="{$cols}">{$value}</textarea>{$error}'; //{$attrs}
$R['input_textarea_editor'] =  '<textarea class="uk-textarea editor" name="{$name}" rows="15" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_text'] = '<input class="uk-input" type="text" name="{$name}" value="{$value}" {$attrs}>{$error}';
$R['input_select'] = '<select class="uk-select" name="{$name}"{$attrs}>{$options}</select>{$error}';
$R['input_password'] = '<input class="uk-input" type="text" name="{$name}" value="{$value}" {$attrs}>{$error}';

$R['input_date_short'] = '<div uk-grid><div class="uk-width-1-3@s">{$day}</div><div class="uk-width-1-3@s">{$month}</div><div class="uk-width-1-3@s">{$year}</div></div>';

$R['input_location'] = '<div uk-grid ><div class="uk-width-1-3@s ">{$country}</div><div class="uk-width-1-3@s">{$region}</div><div class="uk-width-1-3@s">{$city}</div></div>';
?>