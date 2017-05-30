<!-- BEGIN: MAIN -->
<ul class="uk-list uk-list-divider">
    <li class="uk-nav-header">{PHP.L.Pages}</li>
	<li><a class="uk-button uk-button-link"  href="{ADMIN_HOME_URL}">{PHP.L.adm_valqueue}: </a><span class="uk-label uk-label-success uk-float-right">{ADMIN_HOME_PAGESQUEUED}</span></li>
	<li><a class="uk-button uk-button-link"  href="{PHP|cot_url('page','m=add')}">{PHP.L.Add}</a></li>
	<li><a class="uk-button uk-button-link"  href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_ql_b2_2}</a></li>
</ul>
<!-- END: MAIN -->