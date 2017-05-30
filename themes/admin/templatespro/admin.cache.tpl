<!-- BEGIN: MAIN -->
        <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.adm_internalcache}</h2>
        <hr class="uk-divider-icon">
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		 <div class="uk-button-group">
			<a href="{ADMIN_CACHE_URL_REFRESH}" class="ajax uk-button uk-button-default" title="{PHP.L.Refresh}" uk-tooltip>{PHP.L.Refresh}</a>
			<a href="{ADMIN_CACHE_URL_PURGE}" class="ajax uk-button uk-button-default" title="{PHP.L.adm_purgeall}" uk-tooltip>{PHP.L.adm_purgeall}</a>
			<a href="{ADMIN_CACHE_URL_SHOWALL}" class="ajax uk-button uk-button-default" title="{PHP.L.adm_cache_showall}" uk-tooltip>{PHP.L.adm_cache_showall}</a>
		</div>
<!-- BEGIN: ADMIN_CACHE_MEMORY -->
		<div class="uk-margin-top">
			<h3>{ADMIN_CACHE_MEMORY_DRIVER}</h3>
			<p>
				<progress id="progressbar" class="uk-progress" value="10" max="{ADMIN_HOME_PERCENTBAR}"></progress>
                <script>
                jQuery(function () {
            
                    var animate = setInterval(function () {
            
                        window.progressbar && (progressbar.value += 5);
            
                        if (!window.progressbar || progressbar.value >= progressbar.max) {
                            clearInterval(animate);
                        }
            
                    }, 500);
            
                });
            
            </script>
				{PHP.L.Available}: {ADMIN_CACHE_MEMORY_AVAILABLE} / {ADMIN_CACHE_MEMORY_MAX} {PHP.L.bytes}
			</p>
		</div>
<!-- END: ADMIN_CACHE_MEMORY -->
    <div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
		<div class="uk-overflow-auto">
		<table class="uk-table uk-table-small">
                <thead>
				<tr>
					<th class="uk-text-center">{PHP.L.Database}</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
				</tr>
				</thead>
				<thead>
				<tr>
					<th class="uk-text-center">{PHP.L.Item}</th>
					<th class="uk-text-center">{PHP.L.Expire}</th>
					<th class="uk-text-center">{PHP.L.Size}</th>
					<th class="uk-text-center">{PHP.L.Value}</th>
					<th class="uk-text-center">{PHP.L.Delete}</th>
				</tr>
				</thead>
				<tbody>
<!-- BEGIN: ADMIN_CACHE_ROW -->
				<tr>
					<td class="uk-text-center">{ADMIN_CACHE_ITEM_NAME}</td>
					<td class="uk-text-center">{ADMIN_CACHE_EXPIRE}</td>
					<td class="uk-text-center">{ADMIN_CACHE_SIZE}</td>
					<td class="uk-text-center">{ADMIN_CACHE_VALUE}</td>
					<td class="uk-text-center">
                    <a class="ajax uk-text-danger" uk-icon="icon: trash; ratio: 1" title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}" uk-tooltip></a>
                    </td>
				</tr>
<!-- END: ADMIN_CACHE_ROW -->
				<tr class="strong">
					<td class="uk-text-center" colspan="2">{PHP.L.Total}:</td>
					<td class="uk-text-center">{ADMIN_CACHE_CACHESIZE}</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				</tbody>
			</table>
		</div>
  </div>
<!-- END: MAIN -->