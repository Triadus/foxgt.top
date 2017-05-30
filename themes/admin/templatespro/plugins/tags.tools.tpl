<!-- BEGIN: MAIN -->
		<script type="text/javascript">
			$(document).ready(function()
			{
				$('.moreinfo').hide();
				$(".mor_info_on_off").click(function()
				{
					var kk = $(this).attr('id');
					$('#'+kk).children('.moreinfo').slideToggle(100);
				});
			});
		</script>
        <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.tags_All}</h2>
        <hr class="uk-divider-icon">
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
			<div class="uk-button-group">
				<a title="{PHP.L.Configuration}" href="{ADMIN_TAGS_CONFIG_URL}" class="uk-button uk-button-default" uk-tooltip>{PHP.L.Configuration}</a>
			</div>
            <div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
			<h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.viewdeleteentries}:</h4>
			<table class="uk-table">
				<tr>
					<td class="right" colspan="5">
						<form name="sortfiltertag" action="{ADMIN_TAGS_FORM_ACTION}" method="post">
							<!-- IF {ADMIN_TAGS_TOTALITEMS} > 1 -->{PHP.L.adm_sort} {ADMIN_TAGS_ORDER} {ADMIN_TAGS_WAY};<!-- ENDIF --> 
                            {PHP.L.Show} {ADMIN_TAGS_FILTER}; {PHP.L.Search} <input name="tag" class="uk-input" type="text" value="" />
							<input class="uk-button" name="paction" type="submit" value="{PHP.L.Filter}" />
						</form>
					</td>
				</tr>
				<tr>
					<td>{PHP.L.Code}</td>
					<td>{PHP.L.adm_area}</td>
					<td>{PHP.L.Count}</td>
					<td > {PHP.L.adm_tag_item_area}</td>
					<td>{PHP.L.Action}</td>
				</tr>
<!-- BEGIN: ADMIN_TAGS_ROW -->
				<tr>
					<td class="uk-text-center"><b>{ADMIN_TAGS_CODE}</b></td>
					<td class="uk-text-center">{ADMIN_TAGS_AREA}</td>
					<td class="uk-text-center">{ADMIN_TAGS_COUNT}</td>
					<td>
						<div id="mor_{PHP.ii}" class='mor_info_on_off'>
							<span style="cursor:pointer;">{ADMIN_TAGS_ITEMS}</span><br />
							<div class="moreinfo">
<!-- BEGIN: ADMIN_TAGS_ROW_ITEMS -->
								{ADMIN_TAGS_ITEM_TITLE}<br />
<!-- END: ADMIN_TAGS_ROW_ITEMS -->
							</div>
						</div>
					</td>
					<td class="uk-text-center action">
						<form name="tagedit{PHP.ii}" action="{ADMIN_TAGS_FORM_ACTION}" method="post">
							<input name="old_tag" type="hidden" value="{ADMIN_TAGS_CODE|htmlspecialchars($this)}" />
							<input name="d" type="hidden" value="{PHP.d}" />
							<input name="sorttype" type="hidden" value="{PHP.sorttype}" />
							<input name="sortway" type="hidden" value="{PHP.sortway}" />
							<input name="filter" type="hidden" value="{PHP.filter}" />
							{ADMIN_TAGS_TAG}
							<input name="action" type="submit" value="{PHP.L.Edit}" class="uk-button uk-button-link" /><!--//<a title="{PHP.L.Edit}" href="{ADMIN_TAGS_URL_FOR_EDIT}" target="_blank" class="uk-button">{PHP.L.Edit}</a>//-->
							<input name="action" type="submit" value="{PHP.L.Delete}" class="uk-button uk-button-link" /><!--//<a title="{PHP.L.Delete}" href="{ADMIN_TAGS_DEL_URL}" class="ajax uk-button">{PHP.L.Delete}</a>//-->
						</form>
					</td>
				</tr>
<!-- END: ADMIN_TAGS_ROW -->
			</table>
            </div>
            <ul class="uk-pagination">{ADMIN_TAGS_PAGINATION_PREV}{ADMIN_TAGS_PAGNAV}{ADMIN_TAGS_PAGINATION_NEXT}</ul>
			<p class="paging"><span>{PHP.L.Total}: {ADMIN_TAGS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_TAGS_COUNTER_ROW}</span></p>
<!-- END: MAIN -->