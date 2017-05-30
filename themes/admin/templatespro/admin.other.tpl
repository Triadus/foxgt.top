<!-- BEGIN: MAIN -->
<ul class="uk-tab">
	<li<!-- IF {PHP.m} == 'other' AND !{PHP._GET.tab} == "core-plugis-modules" --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('admin', 'm=other')}">{PHP.L.Core}</a></li>
	<li<!-- IF {PHP._GET.tab} == "core-plugis-modules" --> class="uk-active"<!-- ENDIF -->><a href="{PHP.cfg.mainurl}/admin/other?tab=core-plugis-modules">{PHP.L.plugis_title} / {PHP.L.modules_tile}</a></li>
</ul>
    <!-- IF {PHP.m} == 'other' AND !{PHP._GET.tab} == "core-plugis-modules" -->
    <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Core}</h2>
    <hr class="uk-divider-icon">
	<div class="uk-card uk-card-default uk-card-hover uk-card-body">
        <div class="uk-overflow-auto">
        	<table class="uk-table uk-table-hover uk-table-small">
                <thead>
        		<tr>
        			<th class="uk-text-center">Icon</th>
        			<th>{PHP.L.Part} {PHP.L.adm_clicktoedit}</th>
        		</tr>
                </thead>
                <tbody>
        		<tr>
        			<td class="uk-text-center"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
        			<td>
        				<a class="uk-button uk-button-text" href="{ADMIN_OTHER_URL_CACHE}">{PHP.L.adm_internalcache}</a>
        				<p class="uk-text-small uk-text-muted uk-margin-remove-top">{PHP.L.adm_internalcache_desc}</p>
        			</td>
        		</tr>
        		<tr>
        			<td class="uk-text-center"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
        			<td>
        				<a class="uk-button uk-button-text" href="{ADMIN_OTHER_URL_DISKCACHE}">{PHP.L.adm_diskcache}</a>
        				<p class="uk-text-small uk-text-muted uk-margin-remove-top">{PHP.L.adm_diskcache_desc}</p>
        			</td>
        		</tr>
        		<tr>
        			<td class="uk-text-center"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
        			<td>
        				<a class="uk-button uk-button-text" href="{ADMIN_OTHER_URL_EXFLDS}">{PHP.L.adm_extrafields}</a>
        				<p class="uk-text-small uk-text-muted uk-margin-remove-top">{PHP.L.adm_extrafields_desc}</p>
        			</td>
        		</tr>			
        		<tr>
        			<td class="uk-text-center"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
        			<td>
        				<a class="uk-button uk-button-text" href="{ADMIN_OTHER_URL_LOG}">{PHP.L.adm_log}</a>
        				<p class="uk-text-small uk-text-muted uk-margin-remove-top">{PHP.L.adm_log_desc}</p>
        			</td>
        		</tr>
        		<tr>
        			<td class="uk-text-center"><img src="{PHP.cfg.system_dir}/admin/img/cfg_info.png"/></td>
        			<td>
        				<a class="uk-button uk-button-text" href="{ADMIN_OTHER_URL_INFOS}">{PHP.L.adm_infos}</a>
        				<p class="uk-text-small uk-text-muted uk-margin-remove-top">{PHP.L.adm_infos_desc}</p>
        			</td>
        		</tr>
                </tbody>
        	</table>
    	</div>
     </div>
    <!-- ENDIF -->
<!-- IF {PHP._GET.tab} == "core-plugis-modules" -->
<div uk-grid>
<!-- BEGIN: SECTION -->
<div class="uk-width-1-2@s">
    <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{ADMIN_OTHER_SECTION}</h2>
    <hr class="uk-divider-icon">
	<div class="uk-card uk-card-default uk-card-hover uk-card-body">
    <div class="uk-overflow-auto">
		<table class="uk-table uk-table-hover uk-table-small">
            <thead>
			<tr>
				<th class="uk-text-center">Icon</th>
				<th>{PHP.L.Part} {PHP.L.adm_clicktoedit}</th>
			</tr>
            </thead>
            <tbody>
            <!-- BEGIN: ROW -->
			<tr>
				<td class="uk-text-center"><!-- IF {ADMIN_OTHER_EXT_ICO} --> <img src="{ADMIN_OTHER_EXT_ICO}"/><!-- ELSE --><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/><!-- ENDIF --></td>
				<td>
					<a class="uk-button uk-button-text" href="{ADMIN_OTHER_EXT_URL}">{ADMIN_OTHER_EXT_NAME}</a>
					<p class="uk-text-small uk-text-muted uk-margin-remove-top">{ADMIN_OTHER_EXT_DESC}</p>
				</td>
			</tr>
            <!-- END: ROW -->
            <!-- BEGIN: EMPTY -->
			<tr>
				<td colspan="2">{PHP.L.adm_listisempty}</td>
			</tr>
            <!-- END: EMPTY -->
            </tbody>
		</table>
	</div>
    </div>
 </div>
<!-- END: SECTION -->
</div>
<!-- ENDIF -->
<!-- END: MAIN -->