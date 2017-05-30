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

        <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Blogs} ({ADMIN_POST_TOTALDBFIRMS})</h2>
        <hr class="uk-divider-icon">
		{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
        
		<div class="uk-button-group">
			<a title="{PHP.L.Configuration}" href="{ADMIN_POST_URL_CONFIG}" class="uk-button uk-button-default">{PHP.L.Configuration}</a>
			<a href="{ADMIN_POST_URL_EXTRAFIELDS}" class="uk-button uk-button-default">{PHP.L.adm_extrafields_desc}</a>
			<a href="{ADMIN_POST_URL_STRUCTURE}" class="uk-button uk-button-default">{PHP.L.Categories}</a></li>
			<a href="{ADMIN_POST_URL_ADD}" class="uk-button uk-button-default">{PHP.L.post_addtitle}</a>
		</div>
        
		<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
			<h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.Blogs}:</h4>
			<form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_POST_FORM_URL}">
            <div uk-grid class="uk-margin-large-top">
                <div class="uk-width-1-3@m">
                    <input type="hidden" name="paction" value="" />
                    {ADMIN_POST_FILTER} 
                    <!-- IF {ADMIN_POST_TOTALITEMS} > 1 -->{PHP.L.adm_sort} {ADMIN_POST_ORDER} {ADMIN_POST_WAY};<!-- ENDIF --> {PHP.L.Show}           
                </div>
                <div class="uk-width-auto@m">
               	    <input class="uk-button uk-button-default"  name="paction" type="submit" value="{PHP.L.Filter}" onclick="this.form.paction.value=this.value" />
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
<!-- BEGIN: POST_ROW -->
				<tr>
					<td class="uk-text-center {ADMIN_POST_ODDEVEN}">
						<input name="s[{ADMIN_POST_ID}]" type="checkbox" class="checkbox" />
					</td>
					<td class="uk-text-center {ADMIN_POST_ODDEVEN}">
						{ADMIN_POST_ID}
					</td>
					<td class="{ADMIN_POST_ODDEVEN}">
						<div id="mor_{PHP.ii}" class='mor_info_on_off'>
							<span class="strong" style="cursor:hand;">{ADMIN_POST_SHORTTITLE}</span>
							<div class="moreinfo">
								<hr />
								<table class="flat">
									<tr>
										<td class="width20">{PHP.L.Category}:</td>
										<td class="width80">{ADMIN_POST_CATPATH_SHORT}</td>
									</tr>
									<tr>
										<td>{PHP.L.Description}:</td>
										<td>{ADMIN_POST_DESC}</td>
									</tr>
									<tr>
										<td>{PHP.L.Text}:</td>
										<td>{ADMIN_POST_TEXT}</td>
									</tr>
								</table>
							</div>
						</div>
					</td>
					<td class="action {ADMIN_POST_ODDEVEN}">
						<!-- IF {PHP.row.post_state} == 1 --><a title="{PHP.L.Validate}" href="{ADMIN_POST_URL_FOR_VALIDATED}" class="conblogsLink uk-button uk-button-small uk-button-default">{PHP.L.Validate}</a><!-- ENDIF -->
						<a title="{PHP.L.Delete}" href="{ADMIN_POST_URL_FOR_DELETED}" class="conblogsLink uk-button uk-button-small uk-button-default">{PHP.L.short_delete}</a>
						<a title="{PHP.L.Open}" href="{ADMIN_POST_ID_URL}" target="_blank" class="uk-button uk-button-small uk-button-default special">{PHP.L.short_open}</a>
						<a title="{PHP.L.Edit}" href="{ADMIN_POST_URL_FOR_EDIT}" target="_blank" class="uk-button uk-button-small uk-button-default">{PHP.L.Edit}</a>
					</td>
				</tr>
<!-- END: POST_ROW -->
<!-- IF {PHP.is_row_empty} -->
				<tr>
					<td class="uk-text-center" colspan="4">{PHP.L.None}</td>
				</tr>
<!-- ENDIF -->
				<tr>
					<td class="valid" colspan="4">
						<!-- IF {PHP.filter} != {PHP.L.adm_validated} -->
                        <input name="paction" type="submit" value="{PHP.L.Validate}" onclick="this.form.paction.value=this.value" class="conblogs uk-button uk-button-small uk-button-default" />
                        <!-- ENDIF -->
						<input  class="uk-button uk-button-small uk-button-default" name="paction" type="submit" value="{PHP.L.Delete}" onclick="this.form.paction.value=this.value" />
					</td>
				</tr>
			</table>
            <ul class="uk-pagination">{ADMIN_POST_PAGINATION_PREV}{ADMIN_POST_PAGNAV}{ADMIN_POST_PAGINATION_NEXT}</ul>
			<p>
				<span>{PHP.L.Total}: {ADMIN_POST_TOTALITEMS}, {PHP.L.Onblogs}: {ADMIN_POST_ON_FIRM}</span>
			</p>
			</form>
		</div>
<!-- END: MAIN -->