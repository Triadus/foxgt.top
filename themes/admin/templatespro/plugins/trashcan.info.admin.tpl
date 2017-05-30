<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Trashcan}</h2>
<hr class="uk-divider-icon">
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<div class="uk-button-group">
	<a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}"  class="uk-button uk-button-default" uk-tooltip>{PHP.L.Configuration}</a>
	<a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}"  class="uk-button uk-button-default" uk-tooltip>{PHP.L.Wipeall}</a>
</div>
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
<!-- BEGIN: TRASHCAN_ROW -->
<table class="uk-table uk-table-small">
	<tr>
		<td>{PHP.L.Type}</td>
		<td>{PHP.L.Date}</td>
		<td>{PHP.L.Title}</td>
		<td>{PHP.L.adm_setby}</td>
		<td>{PHP.L.Action}</td>
	</tr>
	<tr>
		<td class="uk-text-center">{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
		<td class="uk-text-center">{ADMIN_TRASHCAN_DATE}</td>
		<td class="uk-text-center">{ADMIN_TRASHCAN_TITLE}</td>
		<td class="uk-text-center">{ADMIN_TRASHCAN_TRASHEDBY}</td>
		<td class="uk-text-center action">
			<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} --><a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}">{PHP.R.icon_undo}</a><!-- ENDIF -->
			<a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}">{PHP.R.icon_delete}</a>
		</td>
	</tr>
</table>
<br />
<table class="uk-table uk-table-small">
	<tr>
		<td>{PHP.L.Key}</td>
		<td>{PHP.L.Value}</td>
	</tr>
	<!-- BEGIN: TRASHCAN_INFOROW -->
	<tr>
		<td class="uk-text-center">{ADMIN_TRASHCAN_INFO_ROW}</td>
		<td class="uk-text-center">{ADMIN_TRASHCAN_INFO_VALUE}</td>
	</tr>
	<!-- END: TRASHCAN_INFOROW -->
</table>
<!-- END: TRASHCAN_ROW -->
</div>
<p class="paging"><span>{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}</span></p>
<!-- END: MAIN -->