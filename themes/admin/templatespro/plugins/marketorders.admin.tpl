<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.marketorders_sales_title}</h2>
<hr class="uk-divider-icon">
<ul class="uk-tab">
	<li<!-- IF !{PHP.status} --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('admin', 'm=other&p=marketorders')}">{PHP.L.All}</a></li>
	<li<!-- IF {PHP.status} == 'paid' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('admin', 'm=other&p=marketorders&status=paid')}">{PHP.L.marketorders_sales_paidorders}</a></li>
	<li<!-- IF {PHP.status} == 'done' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('admin', 'm=other&p=marketorders&status=done')}">{PHP.L.marketorders_sales_doneorders}</a></li>
	<li<!-- IF {PHP.status} == 'claim' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('admin', 'm=other&p=marketorders&status=claim')}">{PHP.L.marketorders_sales_claimorders}</a></li>
	<li<!-- IF {PHP.status} == 'cancel' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('admin', 'm=other&p=marketorders&status=cancel')}">{PHP.L.marketorders_sales_cancelorders}</a></li>
</ul>
<div class="uk-card uk-card-default uk-card-hover uk-card-body">
    <div class="uk-overflow-auto">
    <table class="uk-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>{PHP.L.Date}</th>
                <th>{PHP.L.Product_title}</th>
                <th>{PHP.L.Seller_title}</th>
                <th>{PHP.L.Buyer_title}</th>
                <th class="uk-text-right">{PHP.L.Price_title}</th>
            </tr>
        </thead>
        <tbody>
        <!-- BEGIN: ORDER_ROW -->
    	<tr>
            <td><a class="uk-margin-small-right uk-icon" uk-icon="icon: forward" href="{ORDER_ROW_URL}"></a> <span class="uk-label uk-label-success">{ORDER_ROW_ID}</span> </td>
            <td>[{ORDER_ROW_PAID|date('d.m.Y H:i', $this)}]</td>
            <td>{ORDER_ROW_PRD_SHORTTITLE}<a class="uk-margin-small-left uk-icon" uk-icon="icon: forward" href="{ORDER_ROW_PRD_URL}"> </a></td>
            <td>{ORDER_ROW_SELLER_NAME}</td>
            <td><!-- IF {ORDER_ROW_CUSTOMER_ID} > 0 -->{ORDER_ROW_CUSTOMER_NAME}<!-- ELSE -->{ORDER_ROW_EMAIL}<!-- ENDIF --></td>
            <td class="uk-text-right"><span class="uk-label uk-label-success">{ORDER_ROW_COST} {PHP.cfg.payments.valuta}</span></td>
        </tr>
        <!-- END: ORDER_ROW -->
    </tbody>
    </table>
    </div>
</div>
<!-- IF {PAGENAV_COUNT} > 0 -->	
<ul class="uk-pagination">{PAGENAV_PAGES}</ul>
<!-- ELSE -->
<div class="uk-alert">{PHP.L.marketorders_empty}</div>
<!-- ENDIF -->

<!-- END: MAIN -->