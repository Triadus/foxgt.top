<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.ipsearch_title}</h2>
<hr class="uk-divider-icon">

{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
	<div uk-grid>
        <div class="uk-width-auto@m">
			<p>{PHP.L.ipsearch_searchthisuser}:</p>
			<form id="search" action="{IPSEARCH_FORM_URL}" method="post">
				<div uk-grid>
                    <div>
                    <input type="text" class="uk-input" name="id" value="{IPSEARCH_ID}" size="16" maxlength="16" />
                    </div>
                    <div>
                    <button type="submit" class="uk-button uk-button-default">{PHP.L.Search}</button>
                    </div>
                </div>
			</form>
        </div>
        <div class="uk-width-expand@m">
			<p>{PHP.L.ipsearch_dnsrecord}: {IPSEARCH_RES_DNS}</p>
            <!-- BEGIN: IPSEARCH_RESULTS -->
			<p class="uk-text-small">{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES1} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK1}:</p>
			<ul class="uk-list uk-list-line">
                <!-- BEGIN: IPSEARCH_IPMASK1 -->
				<li>{IPSEARCH_USER_IPMASK1}: {IPSEARCH_USER_LASTIP_IPMASK1}</li>
                <!-- END: IPSEARCH_IPMASK1 -->
			</ul>
			<p class="uk-text-small">{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES2} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK2}.*:</p>
			<ul class="uk-list uk-list-line">
                <!-- BEGIN: IPSEARCH_IPMASK2 -->
				<li>{IPSEARCH_USER_IPMASK2}: {IPSEARCH_USER_LASTIP_IPMASK2}</li>
                <!-- END: IPSEARCH_IPMASK2 -->
			</ul>
			<p class="uk-text-small">{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES3} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK3}.*.*:</p>
			<ul class="uk-list uk-list-line">
                <!-- BEGIN: IPSEARCH_IPMASK3 -->
				<li>{IPSEARCH_USER_IPMASK3}: {IPSEARCH_USER_LASTIP_IPMASK3}</li>
                <!-- END: IPSEARCH_IPMASK3 -->
			</ul>
                <!-- END: IPSEARCH_RESULTS -->
		</div>
    </div>
</div>
<!-- END: MAIN -->