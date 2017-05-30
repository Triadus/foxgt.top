<!-- BEGIN: MAIN -->
        <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Users}</h2>
        <hr class="uk-divider-icon">
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="uk-button-group">
			<a title="{PHP.L.Configuration}" href="{ADMIN_USERS_URL}" class="uk-button uk-button-default">{PHP.L.Configuration}</a>
			<a href="{ADMIN_USERS_EXTRAFIELDS_URL}" class="uk-button uk-button-default">{PHP.L.adm_extrafields}</a>
		</div>
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
<!-- BEGIN: ADMIN_USERS_DEFAULT -->
		<div class="uk-overflow-auto">
			<table class="uk-table uk-table-small">
                <tr>
					<th></th>
					<th>{PHP.L.Groups}</th>
					<th>{PHP.L.Members}</th>
					<th>{PHP.L.Enabled}</th>
					<th>{PHP.L.Action}</th>
				</tr>
<!-- BEGIN: USERS_ROW -->
				<tr>
					<td class="uk-text-center">
					<!-- IF {PHP.hidden_groups} AND {ADMIN_USERS_ROW_GRP_HIDDEN} == Yes -->{PHP.R.admin_icon_usergroup0}<!-- ELSE -->{PHP.R.admin_icon_usergroup1}<!-- ENDIF -->
					<!-- ENDIF -->
					</td>
					<td>
						<a class="uk-button uk-button-link" href="{ADMIN_USERS_ROW_GRP_ID|cot_url('users', 'gm='$this)}" title="{PHP.L.Edit}">{ADMIN_USERS_ROW_GRP_NAME} (#{ADMIN_USERS_ROW_GRP_ID})</a>
						<p class="uk-text-small uk-margin-remove-top">{ADMIN_USERS_ROW_GRP_DESC}</p>
					</td>
					<td class="uk-text-center"><span class="uk-label">{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</span></td>
					<td class="uk-text-center"><span class="uk-label uk-label-success">{ADMIN_USERS_ROW_GRP_DISABLED}</span></td>
					<td class="uk-text-center">
						<!-- IF !{ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
						<a title="{PHP.L.Rights}" href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}" class="uk-margin-small-right uk-text-success" uk-icon="icon: settings" uk-tooltip></a>
						<!-- ENDIF -->
						<a title="{PHP.L.Edit}" href="{ADMIN_USERS_ROW_GRP_TITLE_URL}" class="uk-margin-small-right uk-text-warning" uk-icon="icon: file-edit" uk-tooltip></a>
					</td>
				</tr>
<!-- END: USERS_ROW -->
			</table>
		</div>
        <div class="uk-overflow-auto">
			<form name="addlevel" id="addlevel" action="{ADMIN_USERS_FORM_URL}" method="post" class="ajax">
			<table class="uk-table uk-table-small">
                <tr>
					<th>{PHP.L.Add}</th>
					<th></th>
				</tr>
				<tr>
					<td>{PHP.L.Name}:</td>
					<td>{ADMIN_USERS_NGRP_NAME}{PHP.L.adm_required}</td>
				</tr>
				<tr>
					<td>{PHP.L.Title}:</td>
					<td>{ADMIN_USERS_NGRP_TITLE}{PHP.L.adm_required}</td>
				</tr>
				<tr>
					<td>{PHP.L.Description}:</td>
					<td>{ADMIN_USERS_NGRP_DESC}</td>
				</tr>
				<tr>
					<td>{PHP.L.Icon}:</td>
					<td>{ADMIN_USERS_NGRP_ICON}</td>
				</tr>
				<tr>
					<td>{PHP.L.Alias}:</td>
					<td>{ADMIN_USERS_NGRP_ALIAS}</td>
				</tr>
				<!-- IF {PHP.pfs_is_active} -->
				<tr>
					<td>{PHP.L.adm_maxsizesingle}:</td>
					<td>{ADMIN_USERS_NGRP_PFS_MAXFILE}</td>
				</tr>
				<tr>
					<td>{PHP.L.adm_maxsizeallpfs}:</td>
					<td>{ADMIN_USERS_NGRP_PFS_MAXTOTAL}</td>
				</tr>
				<!-- ENDIF -->
				<tr>
					<td>{PHP.L.adm_copyrightsfrom}:</td>
					<td>{ADMIN_USERS_FORM_SELECTBOX_GROUPS} {PHP.L.adm_required}</td>
				</tr>
				<tr>
					<td>{PHP.L.adm_skiprights}:</td>
					<td>{ADMIN_USERS_NGRP_SKIPRIGHTS}</td>
				</tr>
				<tr>
					<td>{PHP.L.Level}:</td>
					<td>{ADMIN_USERS_NGRP_RLEVEL}</td>
				</tr>
				<tr>
					<td>{PHP.L.Disabled}:</td>
					<td>{ADMIN_USERS_NGRP_DISABLED}</td>
				</tr>
				<!-- IF {PHP.hidden_groups} -->
				<tr>
					<td>{PHP.L.Hidden}:</td>
					<td>{ADMIN_USERS_NGRP_HIDDEN}</td>
				</tr>
				<!-- ENDIF -->
				<tr>
					<td>{PHP.L.adm_rights_maintenance}:</td>
					<td>{ADMIN_USERS_NGRP_MAINTENANCE}</td>
				</tr>
				<tr>
					<td class="uk-text-center" colspan="2">
                    <button  type="submit"  class="uk-button uk-button-default uk-margin-top">{PHP.L.Add}</button>
                    </td>
				</tr>
			</table>
			</form>
		</div>
<!-- END: ADMIN_USERS_DEFAULT -->
<!-- BEGIN: ADMIN_USERS_EDIT -->
		<div class="uk-overflow-auto">
			<form name="editlevel" id="editlevel" action="{ADMIN_USERS_EDITFORM_URL}" method="post" class="ajax">
				<table class="uk-table uk-table-small">
					<tr>
						<td class="width40">{PHP.L.Name}:</td>
						<td class="width60">{ADMIN_USERS_EDITFORM_GRP_NAME} {PHP.L.adm_required}</td>
					</tr>
					<tr>
						<td>{PHP.L.Title}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_TITLE} {PHP.L.adm_required}</td>
					</tr>
					<tr>
						<td>{PHP.L.Description}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_DESC}</td>
					</tr>
					<tr>
						<td>{PHP.L.Icon}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_ICON}</td>
					</tr>
					<tr>
						<td>{PHP.L.Alias}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_ALIAS}</td>
					</tr>
					<!-- IF {PHP.pfs_is_active} -->
					<tr>
						<td>{PHP.L.adm_maxsizesingle}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXFILE}</td>
					</tr>
					<tr>
						<td>{PHP.L.adm_maxsizeallpfs}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXTOTAL}</td>
					</tr>
					<!-- ENDIF -->
					<tr>
						<td>{PHP.L.Disabled}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_DISABLED}</td>
					</tr>
					<!-- IF {PHP.hidden_groups} -->
					<tr>
						<td>{PHP.L.Hidden}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_HIDDEN}</td>
					</tr>
					<!-- ENDIF -->
					<tr>
						<td>{PHP.L.Level}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_RLEVEL}</td>
					</tr>
					<tr>
						<td>{PHP.L.Members}:</td>
						<td><a class="uk-button uk-button-small" href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}">{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT}</a></td>
					</tr>
					<tr>
						<td>{PHP.L.adm_rights_maintenance}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_MAINTENANCE}</td>
					</tr>
					<tr>
						<td>{PHP.L.adm_skiprights}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_SKIPRIGHTS}</td>
					</tr>
					<!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
					<tr>
						<td>{PHP.L.Rights}:</td>
						<td><a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="uk-button uk-button-default">{PHP.L.Rights}</a></td>
					</tr>
					<!-- ENDIF -->
                    <!-- IF {PHP.g} > 5 -->
					<tr>
						<td>{PHP.L.Delete}:</td>
						<td><a href="{ADMIN_USERS_EDITFORM_DEL_URL}" class="ajax uk-text-success" class="uk-icon-link" uk-icon="icon: trash; ratio: 2"></a></td>
					</tr>
                    <!-- ENDIF -->
					<tr>
						<td colspan="2" class="uk-text-center uk-margin-top"><button class="uk-button uk-button-default" >{PHP.L.Update}</button></td>
					</tr>
				</table>
			</form>
		</div>
<!-- END: ADMIN_USERS_EDIT -->
</div>
<!-- END: MAIN -->