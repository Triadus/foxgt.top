<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Referers}</h2>
<hr class="uk-divider-icon">
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
<!-- IF {PHP.usr.isadmin} -->
	<div class="uk-button-group">
		<a href="{ADMIN_REFERERS_URL_PRUNE}" class="uk-button uk-button-default">{PHP.L.adm_purgeall}</a>
		<a href="{ADMIN_REFERERS_URL_PRUNELOWHITS}" class="uk-button uk-button-default">{PHP.L.adm_ref_prunelowhits}</a>
	</div>
<!-- ENDIF -->
<!-- IF {PHP.is_ref_empty} -->
	<table class="uk-table uk-table-small">
	<tr>
		<th>{PHP.L.Referer}</th>
		<th class="uk-text-right">{PHP.L.Hits}</th>
	</tr>
<!-- ENDIF -->
<!-- BEGIN: REFERERS_ROW -->
	<tr>
		<td colspan="2"><a class="uk-text-small uk-text-success" href="http://{ADMIN_REFERERS_REFERER}">{ADMIN_REFERERS_REFERER}</a></td>
	</tr>
<!-- BEGIN: REFERERS_URI -->
	<tr>
		<td>&nbsp; &nbsp; <a class="uk-text-small uk-text-warning"  href="{ADMIN_REFERERS_URI}">{ADMIN_REFERERS_URI}</a></td>
		<td class="uk-text-right"><span class="uk-label">{ADMIN_REFERERS_COUNT}</span></td>
	</tr>
<!-- END: REFERERS_URI -->
<!-- END: REFERERS_ROW -->


<!-- IF {PHP.is_ref_empty} -->
	</table>
    </div>
    <ul class="uk-pagination">{ADMIN_REFERERS_PAGINATION_PREV}{ADMIN_REFERERS_PAGNAV}{ADMIN_REFERERS_PAGINATION_NEXT}</ul>
	<p> <span>{PHP.L.Total} : {ADMIN_REFERERS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_REFERERS_ON_PAGE}</span></p>
<!-- ELSE -->
<table class="uk-table uk-table-small">
	<tr>
		<td>{PHP.L.Referer}</td>
		<td>{PHP.L.Hits}</td>
	</tr>
	<tr>
		<td class="uk-text-center" colspan="2">{PHP.L.None}</td>
	</tr>
</table>
<!-- ENDIF -->
    
<!-- END: MAIN -->