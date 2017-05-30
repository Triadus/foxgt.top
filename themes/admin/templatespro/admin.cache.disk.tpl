<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">Disk Cache</h2>
<hr class="uk-divider-icon">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
 <div class="uk-button-group">
	<a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax uk-button uk-button-default">{PHP.L.Refresh}</a>
	<a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax uk-button uk-button-default">{PHP.L.adm_purgeall}</a>
</div>
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
<div class="uk-overflow-auto">
	<table class="uk-table uk-table-small">
		<thead>
		<tr>
			<th class="uk-text-center">{PHP.L.Item}</th>
			<th class="uk-text-center">{PHP.L.Files}</th>
			<th class="uk-text-center">{PHP.L.Size}</th>
			<th class="uk-text-center">{PHP.L.Delete}</th>
		</tr>
		</thead>
		<tbody>
<!-- BEGIN: ADMIN_DISKCACHE_ROW -->
		<tr>
			<td class="uk-text-center">{ADMIN_DISKCACHE_ITEM_NAME}</td>
			<td class="uk-text-center">{ADMIN_DISKCACHE_FILES}</td>
			<td class="uk-text-center">{ADMIN_DISKCACHE_SIZE}</td>
			<td class="uk-text-center"><a class="ajax uk-text-danger ajax" uk-icon="icon: trash; ratio: 1" title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}" uk-tooltip></a></td>
		</tr>
<!-- END: ADMIN_DISKCACHE_ROW -->
		<tr class="strong">
			<td class="uk-text-center">{PHP.L.Total}:</td>
			<td class="uk-text-center">{ADMIN_DISKCACHE_CACHEFILES}</td>
			<td class="uk-text-center">{ADMIN_DISKCACHE_CACHESIZE}</td>
			<td class="uk-text-center">&nbsp;</td>
		</tr>
		</tbody>
	</table>
</div>
</div>
<!-- END: MAIN -->