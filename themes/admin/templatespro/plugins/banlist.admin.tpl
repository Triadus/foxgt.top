<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.banlist_title}</h2>
<hr class="uk-divider-icon">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
			<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
            <h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.editdeleteentries}:</h4>
			<table class="uk-table uk-table-small">
				<tr>
					<td>{PHP.L.banlist_ipmask}</td>
					<td>{PHP.L.banlist_emailmask}</td>
					<td>{PHP.L.banlist_reason}</td>
					<td>{PHP.L.banlist_duration}</td>
					<td>{PHP.L.Action}</td>
				</tr>
<!-- BEGIN: ADMIN_BANLIST_ROW -->
				<form name="savebanlist_{ADMIN_BANLIST_ROW_ID}" id="savebanlist_{ADMIN_BANLIST_ROW_ID}" action="{ADMIN_BANLIST_ROW_URL}" method="post">
				<tr>
					<td>{ADMIN_BANLIST_ROW_IP}</td>
					<td>{ADMIN_BANLIST_ROW_EMAIL}</td>
					<td>{ADMIN_BANLIST_ROW_REASON}</td>
					<td><span class="uk-label uk-label-danger">{ADMIN_BANLIST_ROW_EXPIRE}</span></td>
					<td class="uk-text-center">
						<button class="uk-button uk-button-link uk-text-warning uk-margin-right" type="submit" class="uk-icon-link" uk-icon="icon: future" title="{PHP.L.Update}" uk-tooltip></button>
						<button type="submit" onclick="window.location.replace('{ADMIN_BANLIST_ROW_DELURL}'); return false;" class="uk-button uk-button-link uk-text-danger" uk-icon="icon: trash" title="{PHP.L.Delete}" uk-tooltip></button>
					</td>
				</tr>
				</form>
<!-- END: ADMIN_BANLIST_ROW -->
			</table>
            </div>
            <ul class="uk-pagination">{ADMIN_BANLIST_PAGINATION_PREV}{ADMIN_BANLIST_PAGNAV}{ADMIN_BANLIST_PAGINATION_NEXT}</ul>
			<p class="paging"><span>{PHP.L.Total}: {ADMIN_BANLIST_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_BANLIST_COUNTER_ROW}</span></p>
			<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
           <h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.Add}:</h4>
			<form name="addbanlist" id="addbanlist" action="{ADMIN_BANLIST_URLFORMADD}" method="post" class="ajax">
				<table class="uk-table uk-table-small">
					<tr>
						<td>{PHP.L.banlist_ipmask}:</td>
						<td>{ADMIN_BANLIST_IP}</td>
					</tr>
					<tr>
						<td>{PHP.L.banlist_emailmask}:</td>
						<td>{ADMIN_BANLIST_EMAIL}</td>
					</tr>
					<tr>
						<td>{PHP.L.banlist_reason}:</td>
						<td>{ADMIN_BANLIST_REASON}</td>
					</tr>
					<tr>
						<td>{PHP.L.banlist_duration}:</td>
						<td>{ADMIN_BANLIST_EXPIRE}</td>
					</tr>
					<tr>
						<td class="uk-text-center" colspan="2">
							<button class="uk-button uk-button-default" type="submit">{PHP.L.Add}</button>
						</td>
					</tr>
				</table>
			</form>
            </div>
<!-- END: MAIN -->