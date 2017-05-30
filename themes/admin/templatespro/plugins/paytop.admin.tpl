<!-- BEGIN: MAIN -->
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
	<h5 class="uk-text-muted uk-text-uppercase">{PHP.L.paytop_addtopaccaunt}</h5>
	<form action="{TOP_FORM_ACTION_URL}" method="POST">
        <div uk-grid>
            <div class="uk-width-auto@m"> 
            {PHP.L.Username}: <input class="uk-input" type="text" name="username" value="" /> 
            </div>
            <div class="uk-width-1-5@m">
            {PHP.L.paytop_area}: {TOP_FORM_AREA} 
            </div>
            <div class="uk-width-expand@m">
            <div uk-grid>
                <div class="uk-width-auto@m">
                {PHP.L.paytop_period} {TOP_FORM_PERIOD} {TOP_FORM_PERIOD_NAME}
                </div>
                <div class="uk-width-1-5@m" style="margin-top: 24px;">
                <button class="uk-button uk-button-default">{PHP.L.Add}</button>
                </div>
            </div>
            
            </div>
        </div>
	</form>
</div>
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
	<table class="uk-table uk-table-hover">
		<!-- BEGIN: TOP_ROW -->
		<tr>
			<td><a href="{TOP_ROW_USER_DETAILSLINK}">{TOP_ROW_USER_NAME}</a></td>
			<td>{TOP_ROW_AREA}</td>
			<td>{TOP_ROW_EXPIRE|cot_date('d.m.Y', $this)}</td>
			<td class="uk-text-right"><a class="uk-text-danger" uk-icon="icon: trash"  href="{TOP_ROW_SERVICE_ID|cot_url('admin', 'm=other&p=paytop&a=delete&id='$this)}" title="{PHP.L.Delete}" uk-tooltip></a></td>
		</tr>
		<!-- END: TOP_ROW -->
	</table>
</div>	


<!-- END: MAIN -->