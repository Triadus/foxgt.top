<!-- BEGIN: MAIN -->
        <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.comments_comments}</h2>
        <hr class="uk-divider-icon">
        <p>{PHP.L.viewdeleteentries}</p>
		{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
			
            <div class="uk-button-group">
				<a title="{PHP.L.Configuration}" href="{ADMIN_COMMENTS_CONFIG_URL}" class="uk-button uk-button-default">{PHP.L.Configuration}</a>
			</div>
            <div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
			<table class="uk-table uk-table-small">
				<tr>
					<td class="uk-width-1-6">#</td>
					<td>{PHP.L.adm_area}</td>
					<td>{PHP.L.Code}</td>
					<td>{PHP.L.Author}</td>
					<td>{PHP.L.Date}</td>
					<td>{PHP.L.comments_comment}</td>
					<td>{PHP.L.Action}</td>
				</tr>
<!-- BEGIN: ADMIN_COMMENTS_ROW -->
				<tr>
					<td class="uk-text-center"><span class="uk-label">{ADMIN_COMMENTS_ITEM_ID}</span></td>
					<td class="uk-text-center">{ADMIN_COMMENTS_AREA}</td>
					<td class="uk-text-center">{ADMIN_COMMENTS_CODE}</td>
					<td class="uk-text-center">{ADMIN_COMMENTS_AUTHOR}</td>
					<td class="uk-text-center"><span class="uk-label uk-label-success">{ADMIN_COMMENTS_DATE}</span></td>
					<td class="uk-text-muted uk-text-small">{ADMIN_COMMENTS_TEXT}</td>
					<td class="uk-text-center">
						<a  class="uk-text-warning uk-margin-right special" uk-icon="icon: forward" title="{PHP.L.Open}" href="{ADMIN_COMMENTS_URL}" uk-tooltip></a>
                        <a class="uk-text-danger ajax" uk-icon="icon: trash" title="{PHP.L.Delete}" href="{ADMIN_COMMENTS_ITEM_DEL_URL}" uk-tooltip></a>
					</td>
				</tr>
<!-- END: ADMIN_COMMENTS_ROW -->
			</table>
            </div>
            <ul class="uk-pagination">{ADMIN_COMMENTS_PAGINATION_PREV}{ADMIN_COMMENTS_PAGNAV}{ADMIN_COMMENTS_PAGINATION_NEXT}</ul>
			<p class="paging"><span>{PHP.L.Total}: {ADMIN_COMMENTS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_COMMENTS_COUNTER_ROW}</span></p>
<!-- END: MAIN -->