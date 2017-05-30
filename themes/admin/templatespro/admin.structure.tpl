<!-- BEGIN: LIST -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Modules}</h2>
<hr class="uk-divider-icon">
<ul uk-grid>
	<!-- BEGIN: ADMIN_STRUCTURE_EXT -->
	<li class="uk-width-1-3@m">
        <div class="uk-card uk-card-default uk-card-hover uk-card-body">
    	<!-- IF {ADMIN_STRUCTURE_EXT_ICO} --> 
    	<img src="{ADMIN_STRUCTURE_EXT_ICO}" style="height: 32px!important;">
    	<!-- ELSE -->
    	<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" style="height: 32px!important;">
    	<!-- ENDIF -->
    	<a class="uk-margin-left uk-button uk-button-text uk-button-small" href="{ADMIN_STRUCTURE_EXT_URL}">{ADMIN_STRUCTURE_EXT_NAME}</a>
        </div>		
    </li>
	<!-- END: ADMIN_STRUCTURE_EXT -->
	<!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
	<div class="uk-alert">
    {PHP.L.adm_listisempty}
    </div>
	<!-- END: ADMIN_STRUCTURE_EMPTY -->
</ul>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->
        <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Structure}</h2>
        <hr class="uk-divider-icon">
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="uk-button-group uk-margin-small-top uk-first-column uk-margin-bottom">
		<a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}" class="uk-button uk-button-default" title="{PHP.L.adm_extrafields}" uk-tooltip>{PHP.L.adm_extrafields}</a>
		<a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="ajax uk-button uk-button-default" title="{PHP.L.adm_tpl_resyncalltitle}"  uk-tooltip>{PHP.L.Resync}</a>
		<!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
		<a href="{ADMIN_STRUCTURE_I18N_URL}" class="uk-button uk-button-default" title="{PHP.L.i18n_structure}" uk-tooltip>{PHP.L.i18n_structure}</a>
		<!-- ENDIF -->
		</div>

		<!-- BEGIN: OPTIONS -->
		<div class="uk-card uk-card-default uk-card-hover uk-card-body">
			<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
			<table class="uk-table uk-table-small">
				<tbody>
                <tr>
					<td>{PHP.L.Path}:</td>
					<td>{ADMIN_STRUCTURE_PATH}</td>
				</tr>
				<tr>
					<td>{PHP.L.Code}:</td>
					<td>{ADMIN_STRUCTURE_CODE}</td>
				</tr>
				<tr>
					<td>{PHP.L.Title}:</td>
					<td>{ADMIN_STRUCTURE_TITLE}</td>
				</tr>
				<tr>
					<td>{PHP.L.Description}:</td>
					<td>{ADMIN_STRUCTURE_DESC}</td>
				</tr>
				<tr>
					<td>{PHP.L.Icon}:</td>
					<td>{ADMIN_STRUCTURE_ICON}</td>
				</tr>
				<tr>
					<td>{PHP.L.Locked}:</td>
					<td>{ADMIN_STRUCTURE_LOCKED}</td>
				</tr>
				<tr>
					<td>{PHP.L.adm_tpl_mode}:</td>
					<td>
                        <div class="uk-margin-bottom">
						{ADMIN_STRUCTURE_TPLMODE}
                        </div>
                        <p>{ADMIN_STRUCTURE_SELECT}</p>
						{PHP.L.adm_tpl_quickcat}: {ADMIN_STRUCTURE_TPLQUICK}
					</td>
				</tr>
				<!-- BEGIN: EXTRAFLD -->
				<tr>
					<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
					<td class="{ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_EXTRAFLD}</td>
				</tr>
				<!-- END: EXTRAFLD -->
                </tbody>
			</table>
				<!-- BEGIN: CONFIG -->
				<h2 class="uk-text-bold">{PHP.L.Configuration}</h2>
                {CONFIG_HIDDEN}
				{ADMIN_CONFIG_EDIT_CUSTOM}

				<table class="uk-table uk-table-small uk-table-hover">
                    <thead>
					<tr>
						<td>{PHP.L.Parameter}</td>
						<td>{PHP.L.Value}</td>
						<td>{PHP.L.Reset}</td>
					</tr>
                    </thead>
                    <tbody>
	<!-- BEGIN: ADMIN_CONFIG_ROW -->
	<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
					<tr>
						<td class="group_begin" colspan="3">
							<h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
						</td>
					</tr>
	<!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
	<!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
					<tr>
						<td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
						<td>
							{ADMIN_CONFIG_ROW_CONFIG}
							<div class="adminconfigmore uk-text-small uk-text-primary">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
						</td>
						<td class="uk-text-center">
							<a class="uk-icon-link uk-margin-small-right ajax" uk-icon="icon: minus-circle" href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" title="{PHP.L.Reset}" uk-tooltip></a>
						</td>
					</tr>
	<!-- END: ADMIN_CONFIG_ROW_OPTION -->
	<!-- END: ADMIN_CONFIG_ROW -->
                 </tbody>   
				</table>

<!-- END: CONFIG -->
            <div class="uk-text-center">
			<button type="submit" class="uk-button uk-button-default uk-button-large">{PHP.L.Update}</button>
            </div>
			</form>
		</div>
		<!-- END: OPTIONS -->

		<!-- BEGIN: DEFAULT -->
		<div class="uk-card uk-card-default uk-card-hover uk-card-body">
			<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data" >
			<table class="uk-table uk-table-small">
				<thead>
                <tr>
					<th>{PHP.L.Path}</th>
					<th>{PHP.L.Code}</th>
					<th>{PHP.L.Title}</th>
					<th>{PHP.L.TPL}</th>
					<th>{PHP.L.Pages}</th>
					<th>{PHP.L.Action}</th>
				</tr>
                </thead>
                <tbody>
				<!-- BEGIN: ROW -->
				<tr>
					<td class="{ADMIN_STRUCTURE_ODDEVEN}"><div uk-grid><div>{ADMIN_STRUCTURE_SPACEIMG}</div><div>{ADMIN_STRUCTURE_PATH}</div></td>
					<td class="uk-text-center {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_CODE}</td>
					<td class="uk-text-center {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_TITLE}</td>
					<td class="uk-text-center {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_TPLQUICK}</td>
					<td class="uk-text-center {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_COUNT}</td>
					<td class="action {ADMIN_STRUCTURE_ODDEVEN}">
						<a title="{PHP.L.Options}" href="{ADMIN_STRUCTURE_OPTIONS_URL}" class="uk-icon-link uk-margin-small-right ajax" uk-icon="icon: server" uk-tooltip></a>
						<!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} -->
                        <a title="{PHP.L.Rights}" href="{ADMIN_STRUCTURE_RIGHTS_URL}" class="uk-icon-link uk-margin-small-right ajax" uk-icon="icon: file-edit" uk-tooltip></a>
                        <!-- ENDIF -->
						<!-- IF {PHP.dozvil} -->
                        <a title="{PHP.L.Delete}" href="{ADMIN_STRUCTURE_UPDATE_DEL_URL}" class="uk-icon-link uk-margin-small-right ajax" uk-icon="icon: trash" uk-tooltip></a>
                        <!-- ENDIF -->
						<a title="{PHP.L.Pages}" href="{ADMIN_STRUCTURE_JUMPTO_URL}" class="uk-icon-link uk-margin-small-right" uk-icon="icon: forward" uk-tooltip></a> 
                    </td>
				</tr>
				<!-- END: ROW -->
				<tr>
					<td class="uk-text-center" colspan="8">
                    <button class="uk-button uk-button-default" type="submit">{PHP.L.Update}</button>
                    </td>
				</tr>
                </tbody>
			</table>
			</form>
		</div>
        <ul class="uk-pagination">{ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT}</ul>
		<p><span>{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_STRUCTURE_COUNTER_ROW}</span></p>
		<!-- END: DEFAULT -->

		<!-- BEGIN: NEWCAT -->
        <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Add}</h2>
        <hr class="uk-divider-icon">
		<div class="uk-card uk-card-default uk-card-hover uk-card-body">
			<form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post" class="ajax" enctype="multipart/form-data">
			<table class="uk-table uk-table-small">
                <tbody>
				<tr>
					<td>{PHP.L.Path}:</td>
					<td>{ADMIN_STRUCTURE_PATH} {PHP.L.adm_required}</td>
				</tr>
				<tr>
					<td>{PHP.L.Code}:</td>
					<td>{ADMIN_STRUCTURE_CODE} {PHP.L.adm_required}</td>
				</tr>
				<tr>
					<td>{PHP.L.Title}:</td>
					<td>{ADMIN_STRUCTURE_TITLE} {PHP.L.adm_required}</td>
				</tr>
				<tr>
					<td>{PHP.L.Description}:</td>
					<td>{ADMIN_STRUCTURE_DESC}</td>
				</tr>
				<tr>
					<td>{PHP.L.Icon}:</td>
					<td>{ADMIN_STRUCTURE_ICON}</td>
				</tr>
				<tr>
					<td>{PHP.L.Locked}:</td>
					<td>{ADMIN_STRUCTURE_LOCKED}</td>
				</tr>
				<!-- BEGIN: EXTRAFLD -->
				<tr>
					<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
					<td>{ADMIN_STRUCTURE_EXTRAFLD}</td>
				</tr>
				<!-- END: EXTRAFLD -->
				<tr>
					<td class="uk-text-center" colspan="2">
                        <button type="submit" class="uk-button uk-button-default">{PHP.L.Add}</button>
					</td>
				</tr>
                </tbody>
			</table>
			</form>
		</div>
		<!-- END: NEWCAT -->

<!-- END: MAIN -->