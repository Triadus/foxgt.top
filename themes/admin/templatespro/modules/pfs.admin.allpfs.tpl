<!-- BEGIN: MAIN -->
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
<table class="uk-table uk-table-small">
	<tr>
		<td>{PHP.L.User}</td>
		<td>{PHP.L.Files}</td>
		<td>{PHP.L.Edit}</td>
	</tr>
<!-- BEGIN: ALLPFS_ROW -->
	<tr>
		<td>{ADMIN_ALLPFS_ROW_USER}</td>
 		<td class="uk-text-center">{ADMIN_ALLPFS_ROW_COUNT}</td>
		<td class="uk-text-center"><a title="{PHP.L.Edit}" href="{ADMIN_ALLPFS_ROW_URL}">{PHP.R.icon_prefs}</a></td>
	</tr>
<!-- END: ALLPFS_ROW -->
</table>
</div>
<ul class="uk-pagination">{ADMIN_ALLPFS_PAGINATION_PREV}{ADMIN_ALLPFS_PAGNAV}{ADMIN_ALLPFS_PAGINATION_NEXT}</ul>
<p><span>{PHP.L.Total}: {ADMIN_ALLPFS_TOTALITEMS}, {PHP.L.comm_on_page}: {ADMIN_ALLPFS_ON_PAGE}</span></p>
<!-- END: MAIN -->