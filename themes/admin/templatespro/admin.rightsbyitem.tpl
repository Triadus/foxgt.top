<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Rights}</h2>
<hr class="uk-divider-icon">
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	<div class="uk-card uk-card-default uk-card-body">
		<form name="saverightsbyitem" id="saverightsbyitem" action="{ADMIN_RIGHTSBYITEM_FORM_URL}" method="post" class="ajax">
			<table class="uk-table uk-table-small uk-table-hover">
				<tr>
					<th rowspan="2"></th>
					<th rowspan="2">{PHP.L.Section}</th>
					<th class="uk-text-center uk-width-1-6 uk-text-success" colspan="{ADMIN_RIGHTSBYITEM_ADV_COLUMNS}">{PHP.L.Rights}</th>
					<th class="uk-text-center" rowspan="2">{PHP.L.adm_rightspergroup}</th>
					<th rowspan="2">{PHP.L.adm_setby}</th>
				</tr>
				<tr class="uk-text-center">
					<td>{PHP.R.admin_icon_auth_r}</td>
					<td>{PHP.R.admin_icon_auth_w}</td>
					<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' -->
                    <td>{PHP.R.admin_icon_auth_1}</td>
                    <!-- ENDIF -->
					<!-- IF {PHP.advanced} -->
                    <td>{PHP.R.admin_icon_auth_2}</td>
					<td>{PHP.R.admin_icon_auth_3}</td>
					<td>{PHP.R.admin_icon_auth_4}</td>
					<td>{PHP.R.admin_icon_auth_5}</td>
                    <!-- ENDIF -->
					<td>{PHP.R.admin_icon_auth_a}</td>
				</tr>
<!-- BEGIN: RIGHTSBYITEM_ROW -->
				<tr>
					<td class="uk-text-center"><img src="{PHP.cfg.system_dir}/admin/img/users.png"/></td>
					<td><a class="uk-button uk-button-link" href="{ADMIN_RIGHTSBYITEM_ROW_LINK}">{ADMIN_RIGHTSBYITEM_ROW_TITLE}</a></td>
<!-- BEGIN: ROW_ITEMS -->
					<td class="uk-text-center">
						<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} --><input type="hidden" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" value="1" />
						{PHP.R.admin_icon_discheck1}<!-- ENDIF -->
						<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->{PHP.R.admin_icon_discheck0}<!-- ENDIF -->
						<!-- IF !{PHP.out.tpl_rights_parseline_locked} --><input type="checkbox" class="checkbox" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}"{ADMIN_RIGHTSBYITEM_ROW_ITEMS_CHECKED}{ADMIN_RIGHTSBYITEM_ROW_ITEMS_DISABLED} /><!-- ENDIF -->
					</td>
<!-- END: ROW_ITEMS -->
					<td class="uk-text-center">
                    <a class="uk-icon-link uk-margin-right uk-text-success" uk-icon="icon: forward" title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_JUMPTO}" uk-tooltip></a>
                    <a class="uk-icon-link uk-margin-right uk-text-success" uk-icon="icon: settings" title="{PHP.L.Rights}" href="{ADMIN_RIGHTSBYITEM_ROW_LINK}" uk-tooltip></a> </td>
					<td class="uk-text-center">{ADMIN_RIGHTSBYITEM_ROW_USER}{ADMIN_RIGHTSBYITEM_ROW_PRESERVE}</td>
					
				</tr>
<!-- END: RIGHTSBYITEM_ROW -->
				<tr>
					<td class="uk-text-center" colspan="{ADMIN_RIGHTSBYITEM_4ADV_COLUMNS}">
						<a href="{ADMIN_RIGHTSBYITEM_ADVANCED_URL}">{PHP.L.More}</a>
					</td>
				</tr>
				<tr>
					<td class="uk-text-center" colspan="{ADMIN_RIGHTSBYITEM_4ADV_COLUMNS}">
                        <button type="submit" class="uk-button uk-button-default">{PHP.L.Update}</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
<!-- END: MAIN -->

<!-- BEGIN: RIGHTSBYITEM_HELP -->
	<br />{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}<br />
	{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}<br />
	<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' -->{PHP.R.admin_icon_auth_1}&nbsp; {PHP.l_custom1}<br /><!-- ENDIF -->
	<!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
	{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3<br />
	{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4<br />
	{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5<br /><!-- ENDIF -->
	{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}<br />
<!-- END: RIGHTSBYITEM_HELP -->