<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.sbr}</h2>
<hr class="uk-divider-icon">

<ul class="uk-tab">
	<li<!-- IF !{PHP.status} --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('admin', 'm=other&p=sbr')}">{PHP.L.All}</a></li>
	<!-- BEGIN: STATUS_ROW -->
	<li<!-- IF {PHP.status} == {STATUS_ROW_ID} --> class="uk-active"<!-- ENDIF -->><a href="{STATUS_ROW_ID|cot_url('admin', 'm=other&p=sbr&status='$this)}">{STATUS_ROW_TITLE}</a></li>
	<!-- END: STATUS_ROW -->
</ul>
<div class="uk-overflow-auto">
<table class="uk-table uk-table-hover uk-table-small">
	<!-- BEGIN: SBR_ROW -->
	<tr>
		<td><b>{SBR_ROW_ID}</b></td>
		<td><a class="uk-text-small uk-text-primary" href="{SBR_ROW_URL}" target="blank">{SBR_ROW_SHORTTITLE}</a></td>
		<td><!-- IF {CREATEDATE_STAMP} -->{SBR_ROW_CREATEDATE}<!-- ENDIF --></td>
		<td class="uk-text-right"><span class="uk-label uk-label-warning">{SBR_ROW_COST} {PHP.cfg.payments.valuta}</span></td>
		<td class="uk-text-right"><!-- IF !{PHP.status} --><span class="uk-label uk-label-{SBR_ROW_LABELSTATUS}">{SBR_ROW_LOCALSTATUS}</span><!-- ENDIF --></td>
	</tr>
	<!-- END: SBR_ROW -->
</table>
</div>	
<!-- END: MAIN -->