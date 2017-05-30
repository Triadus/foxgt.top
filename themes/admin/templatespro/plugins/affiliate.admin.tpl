<!-- BEGIN: MAIN -->

<!-- BEGIN: PAYMENTS -->
    <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.affiliate_payments_title}</h2>
    <hr class="uk-divider-icon">
    <div class="uk-card uk-card-default uk-card-hover uk-card-body">
	<table class="uk-table uk-tabel-small uk-tabel-hover">
		<thead>
		<tr>
			<th>#</th>
			<th>{PHP.L.Date}</th>
			<th>{PHP.L.affiliate_referal}</th>
			<th>{PHP.L.affiliate_partner}</th>
			<th class="uk-text-right">{PHP.L.affiliate_partner_summ}</th>
		</tr>
		</thead>
		<tbody>
		<!-- BEGIN: PAY_ROW -->
		<tr>
			<td><span class="uk-label uk-label-primary">{PAY_ROW_ID}</span></td>
			<td>{PAY_ROW_PDATE|cot_date('d.m.Y H:i', $this)}</td>
			<td>{PAY_ROW_REFERAL_NAME}</td>
			<td>{PAY_ROW_PARTNER_NAME}</td>
			<td class="uk-text-right"><span class="uk-label uk-label-success">{PAY_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</td></span>
		</tr>
		<!-- END: PAY_ROW -->
		</tbody>
	</table>
    </div>
	<p>{PHP.L.payments_allpayments}: <span class="uk-label uk-label-success">{PAYMENT_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</span></p>	

<!-- END: PAYMENTS -->
    <ul class="uk-list">
<!-- BEGIN: REF_ROW -->
    	<li>
    		{REF_ROW_NAME}:<br/>
    		{REF_ROW_TREE}
    	</li>
    <!-- END: REF_ROW -->
    </ul>	

<!-- END: MAIN -->