<!-- BEGIN: MAIN -->
<div class="uk-overflow-auto">
	<table class="uk-table uk-table-small uk-table-hover">
        <thead>
            <th>{PHP.L.Users}</th>
            <th>{PHP.L.bstat_title}</th>
            <th></th>
        </thead>
        <tbody>
		<!-- BEGIN: BAL_ROW -->
		<tr>
			<td><a href="{BAL_ROW_USER_DETAILSLINK}">{BAL_ROW_USER_FULL_NAME}</a></td>
			<td>{BAL_ROW_SUMM} {PHP.cfg.payments.valuta}</td>
			<td><a class="uk-icon-link uk-margin-small-right" uk-icon="icon: link; ratio: 2" href="{BAL_ROW_USER_ID|cot_url('admin', 'm=payments&id='$this)}" title="{PHP.L.Info_balans_title}" uk-tooltip></a></td>
		</tr>
		<!-- END: BAL_ROW -->
        </tbody>
	</table>
</div>

<!-- END: MAIN -->