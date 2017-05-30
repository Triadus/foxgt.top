<!-- BEGIN: MAIN -->
<div class="uk-card uk-card-default uk-card-hover uk-card-body">
<div class="uk-overflow-auto">
<table class="uk-table">
     <thead>
        <tr>
            <th>ID</th>
            <th>{PHP.L.Description_title}</th>
            <th>{PHP.L.sum_title}</th>
            <th>{PHP.L.whom_title}</th>
            <th>{PHP.L.Innings_title}</th>
            <th>{PHP.L.Date}</th>
            <th>{PHP.L.Status_title}</th>
            <th>{PHP.L.Act_title}</th>
        </tr>
    </thead>
	<!-- BEGIN: ORD_ROW -->
	<tr>
		<td class="uk-text-bold">{ORD_ROW_ID}</td>
		<td>{ORD_ROW_DESC}</td>
		<td><span class="uk-label uk-label-success">{ORD_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.L.valuta}</span></td>
		<td><a class="uk-icon-link" uk-icon="icon: user; ratio: 1" href="{ORD_ROW_USER_DETAILSLINK}" title="{ORD_ROW_USER_NICKNAME}" uk-tooltip></a></td>
		<td>{ORD_ROW_CDATE|cot_date('d.m.Y', $this)}</td>
		<td><!-- IF {ORD_ROW_PDATE} > 0 -->{ORD_ROW_PDATE|cot_date('d.m.Y', $this)}<!-- ELSE -->&mdash;<!-- ENDIF --></td>
		<td><span class="uk-label<!-- IF {ORD_ROW_STATUS} == new --> uk-label-success<!-- ENDIF -->">{ORD_ROW_STATUS}</span></td>
		<td class="uk-text-center"><a class="uk-text-danger" class="uk-icon-link" uk-icon="icon: trash" href="{ORD_ROW_ID|cot_url('admin', 'm=other&p=payorders&a=delete&id='$this)}" title="{PHP.L.Delete}" uk-tooltip></a></td>
	</tr>
	<!-- END: ORD_ROW -->
</table>
</div>
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<div class="uk-overflow-auto">
<form action="{ORD_FORM_ACTION_URL}" method="POST">
	<table class="uk-table">
        <thead>
            <tr>
                <th>{PHP.L.payorders_neworder_title}</th>
                <th></th>
            </tr>
        </thead>
		<tr>
			<td>{PHP.L.Username}:</td>
			<td><input class="uk-input" type="text" name="username" value="{PHP.username}" /></td>
		</tr>
		<tr>
			<td>{PHP.L.payments_desc}:</td>
			<td>{ORD_FORM_DESC}</td>
		</tr>
		<tr>
			<td>{PHP.L.payments_summ}:</td>
			<td><div class="uk-position-relative">{ORD_FORM_SUMM} <span class="uk-position-right uk-button">{PHP.cfg.payments.valuta}</span></div></td>
		</tr>
		<tr>
			<td></td>
			<td><button class="uk-button uk-button-default">{PHP.L.Add}</button></td>
		</tr>
	</table>
</form>
</div>
</div>
<!-- END: MAIN -->