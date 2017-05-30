<!-- BEGIN: MAIN -->
<div class="uk-card uk-card-default uk-card-body">
	<table class="uk-table uk-table-small">
		<!-- BEGIN: TOP_ROW -->
		<tr>
			<td><a href="{TOP_ROW_USER_DETAILSLINK}">{TOP_ROW_USER_NAME}</a></td>
			<td>{TOP_ROW_AREA}</td>
			<td>{TOP_ROW_EXPIRE|cot_date('d.m.Y', $this)}</td>
			<td><a href="{TOP_ROW_SERVICE_ID|cot_url('admin', 'm=other&p=paytop&a=delete&id='$this)}">{PHP.L.Delete}</a></td>
		</tr>
		<!-- END: TOP_ROW -->
	</table>
</div>	

<div class="uk-card uk-card-default uk-card-body">
	<h3>{PHP.L.paytop_addtopaccaunt}:</h3>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{TOP_FORM_ACTION_URL}" method="POST">
		{PHP.L.Username}: <input type="text" name="username" value="" /> 
		{PHP.L.paytop_area}: {TOP_FORM_AREA}
		{TOP_FORM_PERIOD} {PHP.L.paytop_month}
		<button>{PHP.L.Add}</button>
	</form>
</div>

<!-- END: MAIN -->