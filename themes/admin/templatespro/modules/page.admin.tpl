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

        <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Pages} ({ADMIN_PAGE_TOTALDBPAGES})</h2>
        <hr class="uk-divider-icon">
		{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
        
		<div class="uk-button-group">
			<a title="{PHP.L.Configuration}" href="{ADMIN_PAGE_URL_CONFIG}" class="uk-button uk-button-default">{PHP.L.Configuration}</a>
			<a href="{ADMIN_PAGE_URL_EXTRAFIELDS}" class="uk-button uk-button-default">{PHP.L.adm_extrafields_desc}</a>
			<a href="{ADMIN_PAGE_URL_STRUCTURE}" class="uk-button uk-button-default">{PHP.L.Categories}</a>
			<a href="{ADMIN_PAGE_URL_ADD}" class="uk-button uk-button-default">{PHP.L.page_addtitle}</a>
		</div>
        
		<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
			<h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.Pages}:</h4>
			<form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_PAGE_FORM_URL}">
			
			<input type="hidden" name="paction" value="" />
            <div uk-grid class="uk-margin-large-top">
                <div class="uk-width-1-3@m">
                    {ADMIN_PAGE_FILTER}
                    <!-- IF {ADMIN_PAGE_TOTALITEMS} > 1 -->{PHP.L.adm_sort} {ADMIN_PAGE_ORDER} {ADMIN_PAGE_WAY}<!-- ENDIF --> {PHP.L.Show}                     
                </div>
                <div class="uk-width-auto@m">
                    <input class="uk-button uk-button-default" name="paction" type="submit" value="{PHP.L.Filter}" onclick="this.form.paction.value=this.value" />
                </div>
            </div>
				
            <table class="uk-table uk-table-small">
				<tr>
					<td>
						<!-- IF {PHP.cfg.jquery} -->
						<input name="allchek" class="checkbox" type="checkbox" value="" onclick="$('.checkbox').attr('checked', this.checked);" />
						<!-- ENDIF -->
					</td>
					<td>{PHP.L.Id}</td>
					<td>{PHP.L.Title}</td>
					<td>{PHP.L.Action}</td>
				</tr>
<!-- BEGIN: PAGE_ROW -->
				<tr>
					<td class="uk-text-center {ADMIN_PAGE_ODDEVEN}">
						<input name="s[{ADMIN_PAGE_ID}]" type="checkbox" class="checkbox" />
					</td>
					<td class="uk-text-center {ADMIN_PAGE_ODDEVEN}">
						{ADMIN_PAGE_ID}
					</td>
					<td class="{ADMIN_PAGE_ODDEVEN}">
						<div id="mor_{PHP.ii}" class='mor_info_on_off'>
							<span class="strong" style="cursor:hand;">{ADMIN_PAGE_SHORTTITLE}</span>
							<div class="moreinfo">
								<hr />
								<table class="flat">
									<tr>
										<td>{PHP.L.Category}:</td>
										<td>{ADMIN_PAGE_CATPATH_SHORT}</td>
									</tr>
									<tr>
										<td>{PHP.L.Description}:</td>
										<td>{ADMIN_PAGE_DESC}</td>
									</tr>
									<tr>
										<td>{PHP.L.Text}:</td>
										<td>{ADMIN_PAGE_TEXT}</td>
									</tr>
								</table>
							</div>
						</div>
					</td>
					<td class="action {ADMIN_PAGE_ODDEVEN}">
						<!-- IF {PHP.row.page_state} == 1 --><a title="{PHP.L.Validate}" href="{ADMIN_PAGE_URL_FOR_VALIDATED}" class="confirmLink uk-button uk-button-small uk-button-default">{PHP.L.Validate}</a><!-- ENDIF -->
						<a title="{PHP.L.Delete}" href="{ADMIN_PAGE_URL_FOR_DELETED}" class="confirmLink uk-button uk-button-small uk-button-default">{PHP.L.short_delete}</a>
						<a title="{PHP.L.Open}" href="{ADMIN_PAGE_ID_URL}" target="_blank" class="uk-button uk-button-small uk-button-default special">{PHP.L.short_open}</a>
						<a title="{PHP.L.Edit}" href="{ADMIN_PAGE_URL_FOR_EDIT}" target="_blank" class="uk-button uk-button-small uk-button-default">{PHP.L.Edit}</a>
					</td>
				</tr>
<!-- END: PAGE_ROW -->
<!-- IF {PHP.is_row_empty} -->
				<tr>
					<td class="uk-text-center" colspan="4">{PHP.L.None}</td>
				</tr>
<!-- ENDIF -->
				<tr>
					<td class="valid" colspan="4">
						<!-- IF {PHP.filter} != 'validated' --><input  name="paction" type="submit" value="{PHP.L.Validate}" onclick="this.form.paction.value=this.value" class="confirm uk-button uk-button-default uk-button-small" /><!-- ENDIF -->
						<input class="uk-button uk-button-default uk-button-small" name="paction" type="submit" value="{PHP.L.Delete}" onclick="this.form.paction.value=this.value" />
					</td>
				</tr>
			</table>
			</form>
		</div>
        <ul class="uk-pagination">{ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}</ul>
		<p>
			<span>{PHP.L.Total}: {ADMIN_PAGE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_PAGE_ON_PAGE}</span>
		</p>
<!-- END: MAIN -->