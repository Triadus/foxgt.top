<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="generator" content="Cotonti http://www.cotonti.com">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="author" content="templatespro.ru">
<meta name="copyright" content="Vladimir Wiper">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
{HEADER_BASEHREF}
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/uikit/css/uikit.min.css" type="text/css">
<link rel="stylesheet" href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/{PHP.cfg.admintheme}.css" type="text/css">
<title>{HEADER_TITLE}</title>
<script src="js/jquery.min.js"></script>
<script src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/uikit/js/uikit.min.js"></script>
<script src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/uikit/js/uikit-icons.min.js"></script>
{HEADER_BASEHREF}
{HEADER_HEAD}
</head>
<body>	
<nav class="uk-navbar-container uk-margin uk-visible@l uk-card-default" uk-navbar="mode:click" style="z-index: 980;" uk-sticky="">
    <div class="uk-navbar-left uk-visible@xl">
        <div class="uk-navbar-item uk-logo uk-text-uppercase" title="{PHP.cfg.maintitle}" uk-tooltip>{PHP.cfg.maintitle}</div>
    </div>
    <div class="uk-navbar-right">
        <ul class="uk-navbar-nav">
            <li class="<!-- IF !{PHP.m} AND !{PHP._GET.p} == 'payorders' -->uk-active<!-- ENDIF -->"><a href="{PHP|cot_url('admin')}" title="{PHP.L.Administration}" uk-tooltip><span uk-icon="icon: home"></span><span class="uk-margin-small-left">{PHP.L.Home}</span></a></li>
			<li class="<!-- IF {PHP.m} == 'config' -->uk-active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=config')}" title="{PHP.L.Configuration}" uk-tooltip><span uk-icon="icon: settings"></span><span class="uk-margin-small-left">{PHP.L.Configuration}</span></a></li>
			<li class="<!-- IF {PHP.m} == 'structure' -->uk-active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=structure')}" title="{PHP.L.Structure}" uk-tooltip><span uk-icon="icon: menu"></span><span class="uk-margin-small-left">{PHP.L.Structure}</span></a></li>
			<li class="<!-- IF {PHP.m} == 'extensions' -->uk-active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=extensions')}" title="{PHP.L.Extensions}" uk-tooltip><span uk-icon="icon: cog"></span><span class="uk-margin-small-left">{PHP.L.Extensions}</span></a></li>
			<li class="<!-- IF {PHP.m} == 'users' -->uk-active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=users')}" title="{PHP.L.Users}" uk-tooltip><span uk-icon="icon: users"></span><span class="uk-margin-small-left">{PHP.L.Users}</span></a></li>
			<li class="<!-- IF {PHP.m} == 'other' AND !{PHP._GET.p} == 'payorders' -->uk-active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=other')}" title="{PHP.L.Other}" uk-tooltip><span uk-icon="icon: hashtag"></span><span class="uk-margin-small-left">{PHP.L.Other}</span></a></li>
            <!-- IF {PHP.cot_plugins_active.payorders} -->
            <li class="<!-- IF {PHP._GET.p} == 'payorders' -->active<!-- ENDIF -->"><a href="admin/other?p=payorders" title="{PHP.L.payorders_neworder_title}" uk-tooltip><span uk-icon="icon:  credit-card"></span><span class="uk-margin-small-left">{PHP.L.payorders_neworder_title}</span></a></li>
            <!-- ENDIF -->
            <ul class="uk-navbar-nav">
                <li>
                    <a href="#">
                       <!-- IF {PHP.usr.profile.user_avatar} -->
                       <img src="{PHP.usr.profile.user_avatar}" class="uk-border-circle uk-margin-right" width="40" height="40" alt="{PHP.L.Avatar}" />
                       <!-- ELSE -->
                       <img src="datas/defaultav/blank.png" class="uk-border-circle uk-margin-right" width="40" height="40" alt="{PHP.L.Avatar}" />
                       <!-- ENDIF --> 
                    </a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-bottom-right">
                        <ul class="uk-nav uk-navbar-dropdown-nav">
                            <li><a target="_blank" href="{PHP.cfg.mainurl}"><span class="uk-margin-small-right" uk-icon="icon: link"></span> {PHP.L.Site_title}</a></li>
                            <li><a href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}"><span class="uk-margin-small-right" uk-icon="icon: album"></span> {PHP.L.My_list_title}</a></li>
                            <li><a href="{PHP|cot_url('users','m=profile')}" title="{PHP.L.Profile}"><span class="uk-margin-small-right" uk-icon="icon: settings"></span> {PHP.L.Profile}</a></li>
                            <li class="uk-nav-divider"></li>
                            <li>
                            <a href="{PHP.out.loginout_url}">
                                <span uk-icon="icon: upload"></span><span class="uk-margin-small-left">{PHP.L.Login}</span>
                            </a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </ul>
    </div>
</nav>
<div class="uk-container uk-container-expand tp-height">
<!-- END: HEADER -->