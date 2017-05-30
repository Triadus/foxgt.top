<!-- BEGIN: MAIN -->
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<form name="saverights" id="saverights" action="{ADMIN_RIGHTS_FORM_URL}" method="post" class="ajax">
			<!-- IF {PHP.g} > 5 -->
            <div uk-grid>
                <div class="uk-width-1-4">
                {ADMIN_RIGHTS_SELECTBOX_GROUPS}
                {PHP.L.adm_copyrightsfrom}: <input type="checkbox" class="checkbox" name="ncopyrightsconf" />
                </div>
                <div class="uk-width-1-4">
                <button class="uk-button uk-button-default" type="submit">{PHP.L.Update}</button>
                </div>
                 
            </div>
                
                
			<!-- ENDIF -->
<!-- BEGIN: RIGHTS_SECTION -->
            <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{RIGHTS_SECTION_TITLE}</h2>
            <hr class="uk-divider-icon">
            <div class="uk-card uk-card-default uk-card-body"> 
            <div class="uk-overflow-auto"> 
			<table class="uk-table uk-table-small uk-table-hover">
				<tr>
					<th rowspan="2"></th>
					<th rowspan="2" class="uk-width-1-3">{PHP.L.Section}</th>
					<th class="uk-text-center uk-width-1-6 uk-text-success" colspan="{ADMIN_RIGHTS_ADV_COLUMNS}">{PHP.L.Rights}</th>
					<th class="uk-text-center" rowspan="2">{PHP.L.adm_rightspergroup}</th>
					<th rowspan="2">{PHP.L.adm_setby}</th>
				</tr>
				<tr class="uk-text-center">
					<td>{PHP.R.admin_icon_auth_r}</td>
					<td>{PHP.R.admin_icon_auth_w}</td>
					<td>{PHP.R.admin_icon_auth_1}</td>
					<!-- IF {PHP.advanced} -->
					<td>{PHP.R.admin_icon_auth_2}</td>
					<td>{PHP.R.admin_icon_auth_3}</td>
					<td>{PHP.R.admin_icon_auth_4}</td>
					<td>{PHP.R.admin_icon_auth_5}</td>
					<!-- ENDIF -->
					<td>{PHP.R.admin_icon_auth_a}</td>
				</tr>
<!-- BEGIN: RIGHTS_ROW -->
				<tr>
					<td class="uk-text-center">					
					<!-- IF {ADMIN_RIGHTS_ROW_ICO} --> 
					<img src="{ADMIN_RIGHTS_ROW_ICO}"/>
					<!-- ELSE -->
					<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
					<!-- ENDIF -->
					</td>
					<td> <a class="uk-button uk-button-link" href="{ADMIN_RIGHTS_ROW_LINK}">{ADMIN_RIGHTS_ROW_TITLE}</a></td>
<!-- BEGIN: RIGHTS_ROW_ITEMS -->
					<td class="uk-text-center">
						<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} -->
						<input type="hidden" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" value="1" />
						{PHP.R.admin_icon_discheck1}
						<!-- ENDIF -->
						<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->
						{PHP.R.admin_icon_discheck0}
						<!-- ENDIF -->
						<!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
						<input type="checkbox" class="checkbox" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}"{ADMIN_RIGHTS_ROW_ITEMS_CHECKED}{ADMIN_RIGHTS_ROW_ITEMS_DISABLED} />
						<!-- ENDIF -->
					</td>
<!-- END: RIGHTS_ROW_ITEMS -->
					<td class="uk-text-center">
                    <a class="uk-icon-link uk-margin-right uk-text-success" uk-icon="icon: forward" title="{PHP.L.Open}" href="{ADMIN_RIGHTS_ROW_LINK}" uk-tooltip></a>
                    <a class="uk-icon-link uk-margin uk-text-success" uk-icon="icon: settings" title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_RIGHTSBYITEM}" uk-tooltip></a>
                    </td>
					<td class="uk-text-center">
                    {ADMIN_RIGHTS_ROW_USER}{ADMIN_RIGHTS_ROW_PRESERVE}
                    </td>
				</tr>
<!-- END: RIGHTS_ROW -->
			</table>
            </div>
            </div>
<!-- END: RIGHTS_SECTION -->
			<div class="uk-text-center">
				<p><a href="{ADMIN_RIGHTS_ADVANCED_URL}">{PHP.L.More}</a></p>
                <button class="uk-button uk-button-default uk-magin-top" type="submit">{PHP.L.Update}</button>
			</div>
		</form>
        
<!-- END: MAIN -->

<!-- BEGIN: RIGHTS_HELP -->
		<br />{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}<br />
		{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}<br />
		{PHP.R.admin_icon_auth_1}&nbsp; {PHP.L.Custom} #1<br />
		<!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2<br />
		{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3<br />
		{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4<br />
		{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5<br /><!-- ENDIF -->
		{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}<br />
<!-- END: RIGHTS_HELP -->