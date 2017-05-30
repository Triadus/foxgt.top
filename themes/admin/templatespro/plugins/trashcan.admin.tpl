<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Trashcan}</h2>
<hr class="uk-divider-icon">
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

<div class="uk-button-group">
	<a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="uk-button uk-button-default" uk-tooltip>{PHP.L.Configuration}</a>
	<a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="uk-button uk-button-default" uk-tooltip>{PHP.L.Wipeall}</a>
</div>
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
<table class="cells">
	<tr>
		<td>{PHP.L.Type}</td>
		<td>{PHP.L.Date}</td>
		<td>{PHP.L.Title}</td>
		<td>{PHP.L.adm_setby}</td>
		<td>{PHP.L.Action}</td>
	</tr>
<!-- BEGIN: TRASHCAN_ROW -->
<tr>
	<td class="uk-text-center">{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
	<td class="uk-text-center">{ADMIN_TRASHCAN_DATE}</td>
	<td class="uk-text-center"><a href="{ADMIN_TRASHCAN_ROW_INFO_URL}">{ADMIN_TRASHCAN_TITLE}</a></td>
	<td class="uk-text-center">{ADMIN_TRASHCAN_TRASHEDBY}</td>
	<td class="uk-text-center action">
		<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} --><a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="button">{PHP.L.Restore}</a><!-- ENDIF -->
		<a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="button">{PHP.L.Wipe}</a>
	</td>
</tr>
<!-- END: TRASHCAN_ROW -->
</table>
</div>
<ul class="uk-pagination">{ADMIN_TRASHCAN_PAGINATION_PREV}{ADMIN_TRASHCAN_PAGNAV}{ADMIN_TRASHCAN_PAGINATION_NEXT}</ul>
<p><span>{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_TRASHCAN_COUNTER_ROW}</span></p>
<!-- END: MAIN -->