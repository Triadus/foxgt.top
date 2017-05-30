<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Log} ({ADMIN_LOG_TOTALDBLOG})</h2>
<hr class="uk-divider-icon">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<!-- IF {PHP.usr.isadmin} -->
<a title="{PHP.L.adm_purgeall}" href="{ADMIN_LOG_URL_PRUNE}" class="ajax uk-button uk-button-default" uk-tooltip>{PHP.L.adm_purgeall}</a>
<!-- ENDIF -->
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
	<form action="" class="uk-form-horizontal">
    <div class="uk-margin">
        <label class="uk-form-label" for="form-horizontal-select">{PHP.L.Group}:</label>
        <div class="uk-form-controls">
            <select  name="groups" size="1" onchange="redirect(this)" class="uk-select" id="form-horizontal-select">
                <!-- BEGIN: GROUP_SELECT_OPTION -->
			     <option value="{ADMIN_LOG_OPTION_VALUE_URL}"{ADMIN_LOG_OPTION_SELECTED}>{ADMIN_LOG_OPTION_GRP_NAME}</option>
                <!-- END: GROUP_SELECT_OPTION -->
            </select>
        </div>
    </div>
	</form>
    <div class="uk-overflow-auto">  
	<table class="uk-table uk-table-small uk-table-hover">
		<thead>
		<tr>
			<th>#</th>
			<th class="uk-width-1-5">{PHP.L.Date} (GMT)</th>
			<th>{PHP.L.Ip}</th>
			<th>{PHP.L.User}</th>
			<th>{PHP.L.Group}</th>
			<th>{PHP.L.Log}</th>
		</tr>
		</thead>
		<tbody>
<!-- BEGIN: LOG_ROW -->
		<tr>
			<td>{ADMIN_LOG_ROW_LOG_ID}</td>
			<td>{ADMIN_LOG_ROW_DATE}</td>
			<td><a href="{ADMIN_LOG_ROW_URL_IP_SEARCH}">{ADMIN_LOG_ROW_LOG_IP}</a></td>
			<td>{ADMIN_LOG_ROW_LOG_NAME}&nbsp;</td>
			<td><a href="{ADMIN_LOG_ROW_URL_LOG_GROUP}" class="ajax">{ADMIN_LOG_ROW_LOG_GROUP}</a></td>
			<td class="uk-text-small uk-text-danger">{ADMIN_LOG_ROW_LOG_TEXT}</td>
		</tr>
<!-- END: LOG_ROW -->
		</tbody>
	</table>
    </div>
</div>
	<ul class="uk-pagination">{ADMIN_LOG_PAGINATION_PREV} {ADMIN_LOG_PAGNAV} {ADMIN_LOG_PAGINATION_NEXT}</ul>
	<p>{PHP.L.Total}: {ADMIN_LOG_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_LOG_ON_PAGE}</p>
<!-- END: MAIN -->