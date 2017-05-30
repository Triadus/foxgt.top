<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.PFS}</h2>
<hr class="uk-divider-icon">
<!-- IF {PHP.is_adminwarnings} -->
<div class="error">
	<p><strong>{PHP.L.Message}!</strong> {PHP.L.adm_nogd}</p>
</div>
<!-- ENDIF -->
<div class="uk-button-group">
	<a title="{PHP.L.Configuration}" href="{ADMIN_PFS_URL_CONFIG}" class="uk-button uk-button-default">{PHP.L.Configuration}</a>
	<a href="{ADMIN_PFS_URL_ALLPFS}" class="uk-button uk-button-default">{PHP.L.adm_allpfs}</a>
	<a href="{ADMIN_PFS_URL_SFS}" class="uk-button uk-button-default">{PHP.L.SFS}</a>
</div>
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
	 <h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.adm_gd}:</h4>
	<ul class="uk-list uk-list-divider">
    <!-- BEGIN: PFS_ROW -->
		<li>{ADMIN_PFS_DATAS_NAME}: <span class="uk-text-bold">{ADMIN_PFS_DATAS_ENABLE_OR_DISABLE}</span></li>
    <!-- END: PFS_ROW -->
	</ul>
</div>
<!-- END: MAIN -->