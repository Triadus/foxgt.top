<!-- BEGIN: MAIN -->
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
	<h5 class="uk-text-muted uk-text-uppercase">{PHP.L.paypro_addproacc}:</h5>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{PRO_FORM_ACTION_URL}" method="POST" class="form-horizontal">
        <div uk-grid>
            <div class="uk-width-auto@m"> {PHP.L.paypro_month} {PRO_FORM_PERIOD}</div>
            <div class="uk-width-1-5@m">{PHP.L.Username}: {PRO_FORM_SELECTUSER}</div>
            <div class="uk-width-expand@m" style="margin-top: 24px;">
            <button class="uk-button uk-button-default">{PHP.L.Add}</button>
            </div>
        </div>
	</form>
</div>
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
	<table class="uk-table uk-table-hover">
		<!-- BEGIN: PRO_ROW -->
		<tr>
			<td><a href="{PRO_ROW_USER_DETAILSLINK}">{PRO_ROW_USER_NAME}</a></td>
			<td>{PRO_ROW_EXPIRE|cot_date('d.m.Y', $this)}</td>
			<td class="uk-text-right"><a class="uk-text-danger" uk-icon="icon: trash" href="{PRO_ROW_USER_ID|cot_url('admin', 'm=other&p=paypro&a=delete&id='$this)}" title="{PHP.L.Delete}" uk-tooltip></a></td>
		</tr>
		<!-- END: PRO_ROW -->
	</table>
</div>
<!-- END: MAIN -->