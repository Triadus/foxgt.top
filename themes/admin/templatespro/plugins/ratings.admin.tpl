<!-- BEGIN: MAIN -->
<h2>{PHP.L.Ratings}</h2>
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
 <div class="uk-button-group">
	<a title="{PHP.L.Configuration}" href="{ADMIN_RATINGS_URL_CONFIG}" class=""uk-button uk-button-default">{PHP.L.Configuration}</a>
</div>
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
<table class="uk-table uk-table-small">
    <thead>
	<tr>
		<th class="uk-text-center">{PHP.L.adm_area}</th>
		<th class="uk-text-center">{PHP.L.Code}</th>
		<th class="uk-text-center">{PHP.L.Date} (GMT)</th>
		<th class="uk-text-center">{PHP.L.Votes}</th>
		<th class="uk-text-center">{PHP.L.Rating}</th>
		<th class="uk-text-center">{PHP.L.Action}</th>
	</tr>
    </thead>
<!-- BEGIN: RATINGS_ROW -->
	<tr>
		<td class="uk-text-center">{ADMIN_RATINGS_ROW_RATING_AREA}</td>
		<td class="uk-text-center">{ADMIN_RATINGS_ROW_RATING_CODE}</td>
		<td class="uk-text-center">{ADMIN_RATINGS_ROW_CREATIONDATE}</td>
		<td class="uk-text-center">{ADMIN_RATINGS_ROW_VOTES}</td>
		<td class="uk-text-center">{ADMIN_RATINGS_ROW_RATING_AVERAGE}</td>
		<td class="uk-text-center">
            <a class="uk-text-warning uk-margin-right special" uk-icon="icon: forward"  title="{PHP.L.Open}" href="{ADMIN_RATINGS_ROW_RAT_URL}" uk-tooltip></a>
			<a class="uk-text-danger ajax" uk-icon="icon: trash" title="{PHP.L.Delete}" href="{ADMIN_RATINGS_ROW_URL_DEL}" uk-tooltip></a>
		</td>
	</tr>
<!-- END: RATINGS_ROW -->
</table>
</div>
<ul class="uk-pagination">{ADMIN_RATINGS_PAGINATION_PREV}{ADMIN_RATINGS_PAGNAV}{ADMIN_RATINGS_PAGINATION_NEXT}</ul>
<p><span>{PHP.L.adm_ratings_totalitems}: {ADMIN_RATINGS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_RATINGS_ON_PAGE}</span><span>{PHP.L.adm_ratings_totalvotes}: {ADMIN_RATINGS_TOTALVOTES}</span></p>
<!-- END: MAIN -->