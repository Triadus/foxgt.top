<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.payments_history}</h2>
<hr class="uk-divider-icon">
<div uk-grid>
    <div class="uk-width-auto@m">
        <div class="uk-button-group">
        	<a href="{PHP|cot_url('admin', 'm=payments')}" class="uk-button uk-button-default<!-- IF !{PHP.p} --> special<!-- ENDIF -->">{PHP.L.payments_allusers}</a>
        	<a href="{PHP|cot_url('admin', 'm=payments&p=payouts')}" class="uk-button uk-button-default<!-- IF {PHP.p} == 'payouts' --> special<!-- ENDIF -->">{PHP.L.payments_payouts}</a>
        	<a href="{PHP|cot_url('admin', 'm=payments&p=transfers')}" class="uk-button uk-button-default<!-- IF {PHP.p} == 'transfers' --> special<!-- ENDIF -->">{PHP.L.payments_transfers}</a>
        </div>
    </div>
    <div class="uk-width-expand@m">
        <form action="{PHP.p|cot_url('admin', 'm=payments&p='$this)}" method="post">
        <div uk-grid>
            <div class="uk-width-auto@m">
                <input type="text" class="uk-input" name="sq" value="{PHP.sq}">
                </div>
                <div class="uk-width-expand@m">
                <button type="submit" class="uk-button uk-button-default">{PHP.L.Search}</button>
            </div>
        </div>
        </form>
    </div>
</div>

<!-- BEGIN: PAYMENTS -->

<!-- IF {PHP.cfg.payments.balance_enabled} -->
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
    <div class="uk-child-width-1-2 uk-margin-top" uk-grid>
        <div>
            <div class="uk-alert uk-alert-success">
                <b>{PHP.L.payments_siteinvoices}:</b> {PHP.L.payments_debet}: {INBALANCE} {PHP.cfg.payments.valuta}
            </div>
            <div class="uk-alert uk-alert-warning">
                <p><b>{PHP.L.payments_credit}:</b> {OUTBALANCE} {PHP.cfg.payments.valuta}</p>
            </div>
        </div>
        <div>
            <div class="uk-alert uk-alert-primary">
                <p><b>{PHP.L.payments_balance}:</b> {BALANCE} {PHP.cfg.payments.valuta}</p>
            </div>
            <div class="uk-alert">
                <p><b>{PHP.L.payments_allpayments}:</b> {CREDIT} {PHP.cfg.payments.valuta}</p>
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->

<div class="uk-card uk-card-default uk-card-body uk-margin-top">
    <div class="uk-overflow-auto">
	<table class="uk-table uk-table-small uk-table-hover">
	<thead>
	<tr>
		<th>#</th>
		<th>{PHP.L.User}</th>
		<th  class="uk-width-1-6">{PHP.L.Date}</th>
		<th class="uk-width-1-5">{PHP.L.payments_summ}</th>
		<th>{PHP.L.payments_desc}</th>
		<th>{PHP.L.payments_area}</th>
		<th>{PHP.L.payments_code}</th>
		<th>{PHP.L.Status}</th>
	</tr>
	</thead>
	<tbody>
	<!-- BEGIN: PAY_ROW -->
	<tr>
		<td>{PAY_ROW_ID}</td>
		<td><a href="{PAY_ROW_USER_ID|cot_url('admin', 'm=payments&id='$this)}">{PAY_ROW_USER_NICKNAME}</a></td>
		<td>{PAY_ROW_ADATE|date('d.m.Y H:i',$this)}</td>
		<td class="uk-text-center"><!-- IF {PAY_ROW_AREA} == 'balance' --><span class="uk-label uk-label-success">{PAY_ROW_SUMM|number_format($this, 2, '.', ' ')}</span><!-- ELSE --><span class="uk-label uk-label-danger">{PAY_ROW_SUMM|number_format($this, 2, '.', ' ')}</span><!-- ENDIF --></td>
		<td>{PAY_ROW_DESC}</td>
		<td>{PAY_ROW_AREA}</td>
		<td>{PAY_ROW_CODE}</td>
		<td>{PAY_ROW_STATUS}</td>
	</tr>
	<!-- END: PAY_ROW -->
	</tbody>
	</table>
    </div>
</div>
<ul class="uk-pagination">{PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}</ul>
	
<!-- END: PAYMENTS -->

<!-- BEGIN: PAYOUTS -->
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
<div class="uk-overflow-auto">
<table class="uk-table uk-table-small uk-table-hover">
<thead>
	<tr>
		<th>{PHP.L.User}</th>
		<th>{PHP.L.payments_summ}</th>
		<th class="uk-width-1-5">{PHP.L.Description}</th>
		<th>{PHP.L.Date}</th>
		<th>{PHP.L.Status}</th>
		<th>{PHP.L.Action}</th>
	</tr>
</thead>	
<!-- BEGIN: PAYOUT_ROW -->
	<tr>
		<td>{PAYOUT_ROW_USER_NAME}</td>
		<td>{PAYOUT_ROW_SUMM}</td>
		<td>{PAYOUT_ROW_DETAILS}</td>
		<td><!-- IF {PAYOUT_ROW_DATE} > 0 -->{PAYOUT_ROW_DATE|cot_date('d.m.Y H:i',$this)}<!-- ELSE -->&mdash;<!-- ENDIF --></td>
		<td><span class="uk-label<!-- IF {PAYOUT_ROW_LOCALSTATUS} == 0 --> uk-label-success<!-- ELSE --> uk-label-primary<!-- ENDIF -->">{PAYOUT_ROW_LOCALSTATUS}</span></td>
		<td>
			<!-- IF {PAYOUT_ROW_STATUS} == 'process' -->
			<a class="uk-button uk-button-default uk-button-small" href="{PAYOUT_ROW_DONE_URL}">{PHP.L.Confirm}</a> 
			<a class="uk-button uk-button-default uk-button-small" href="{PAYOUT_ROW_CANCEL_URL}">{PHP.L.Cancel}</a>
			<!-- ENDIF -->
		</td>
	</tr>
<!-- END: PAYOUT_ROW -->
</table>
</div>
</div>
<!-- END: PAYOUTS -->

<!-- BEGIN: TRANSFERS -->
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
<div class="uk-overflow-auto">
<table class="uk-table uk-table-small uk-table-hover">
<thead>
	<tr>
		<th>{PHP.L.payments_balance_transfers_from}</th>
		<th>{PHP.L.payments_balance_transfers_for}</th>
		<th>{PHP.L.payments_summ}</th>
		<th>{PHP.L.Description}</th>
		<th>{PHP.L.Date}</th>
		<th>{PHP.L.Done}</th>
		<th>{PHP.L.Status}</th>
		<th>{PHP.L.Action}</th>
	</tr>
</thead>	
<!-- BEGIN: TRANSFER_ROW -->
	<tr>
		<td><a href="{TRANSFER_ROW_FROM_DETAILSLINK}">{TRANSFER_ROW_FROM_FULL_NAME}</a></td>
		<td><a href="{TRANSFER_ROW_FOR_DETAILSLINK}">{TRANSFER_ROW_FOR_FULL_NAME}</a></td>
		<td>{TRANSFER_ROW_SUMM}</td>
		<td>{TRANSFER_ROW_COMMENT}</td>
		<td>{TRANSFER_ROW_DATE|cot_date('d.m.Y H:i',$this)}</td>
		<td><!-- IF {TRANSFER_ROW_DONE} > 0 -->{TRANSFER_ROW_DONE|cot_date('d.m.Y H:i',$this)}<!-- ELSE -->&mdash;<!-- ENDIF --></td>
		<td>{TRANSFER_ROW_LOCALSTATUS}</td>
		<td>
			<!-- IF {TRANSFER_ROW_STATUS} == 'process' -->
			<a class="uk-button uk-button-default uk-button-small"  href="{TRANSFER_ROW_DONE_URL}">{PHP.L.Confirm}</a>
			<a class="uk-button uk-button-default uk-button-small"  href="{TRANSFER_ROW_CANCEL_URL}">{PHP.L.Cancel}</a>
			<!-- ENDIF -->
		</td>
	</tr>
<!-- END: TRANSFER_ROW -->
</table>
</div>
</div>
<!-- END: TRANSFERS -->
			
<!-- END: MAIN -->