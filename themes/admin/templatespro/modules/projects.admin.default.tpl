<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.projects_projects}</h2>
<hr class="uk-divider-icon">

<ul class="uk-tab">
	<!-- BEGIN: TYPES -->
	<li<!-- IF {PHP.p} != 'types' --> class="uk-active"<!-- ENDIF -->><a href="{TYPE_ALL_URL}">{PHP.L.All}</a></li>
	<!-- BEGIN: TYPES_ROWS -->
	<li class="{TYPE_ALL_ACT}"><a href="{TYPE_ROW_URL}">{TYPE_ROW_TITLE}</a></li>
	<!-- END: TYPES_ROWS -->
	<!-- END: TYPES -->
	<li><a href="{TYPES_EDIT}">{PHP.L.projects_types_edit}</a></li>	
</ul>
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
	<form action="{SEARCH_ACTION_URL}" method="get" class="uk-form-horizontal" id="schform">
		<input type="hidden" name="m" value="{PHP.m}" />
		<input type="hidden" name="p" value="{PHP.p}" />
		<input type="hidden" name="c" value="{PHP.c}" />
		<input type="hidden" name="type" value="{PHP.type}" />
             <div class="uk-margin">
                <label class="uk-form-label">{PHP.L.Search}:</label>
                <div class="uk-form-controls">
                {SEARCH_SQ}
                </div>
            </div>
            <!-- IF {PHP.cot_plugins_active.locationselector} -->
            <div class="uk-margin">
                <label class="uk-form-label">{PHP.L.Location}:</label>
                <div class="uk-form-controls">
                {SEARCH_LOCATION}
                </div>
            </div>
            <!-- ENDIF -->
            <div class="uk-margin">
                <label class="uk-form-label">{PHP.L.Category}:</label>
                <div class="uk-form-controls">
                    {SEARCH_CAT}
                </div>
            </div>
            <div class="uk-margin">
                <label class="uk-form-label">{PHP.L.Order}:</label>
                <div class="uk-form-controls">
                {SEARCH_SORTER}
                </div>
            </div>
            <div class="uk-margin">
                <label class="uk-form-label">{PHP.L.Type}:</label>
                <div class="uk-form-controls">
                {SEARCH_STATE}
                </div>
            </div>
            <button type="submit" name="search"  class="uk-button uk-button-large uk-button-default">{PHP.L.Search}</button>		
	</form>
</div>


<form action="{PHP|cot_url('admin','m=projects'),'',true}" id="prj_form" method="POST">
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top" id="listprojects">
	<table class="uk-table uk-table-hover">
		<thead>
		<tr class="prjitem">
			<th>{PHP.L.Date}</th>
			<th>{PHP.L.Title}</th>
			<th class="uk-width-1-5">{PHP.L.projects_price}</th>
			<th>{PHP.L.Owner}</th>
			<th class="uk-width-1-2">{PHP.L.Text}</th>
			<th>{PHP.L.Type}</th>
			<th>{PHP.L.Category}</th>
			<th class="uk-width-1-5">{PHP.L.Actions}</th>
		</tr>
		</thead>
		<tbody>
		<!-- BEGIN: PRJ_ROWS -->
		<tr class="prjitem">
			<td><label><input type="checkbox" name="prj_arr[]" value="{PRJ_ROW_ID}">{PRJ_ROW_DATE}</label></td>
			<td><a href="{PRJ_ROW_URL}" target="_blank">{PRJ_ROW_SHORTTITLE}</a></td>
			<td><!-- IF {PRJ_ROW_COST} > 0 --><div class="uk-label">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</div><!-- ENDIF --></td>
			<td>{PRJ_ROW_OWNER_NAME}</td>
			<td>{PRJ_ROW_SHORTTEXT}</td>
			<td>{PRJ_ROW_TYPE}</td>
			<td>{PRJ_ROW_CATTITLE}</td>
			<td>
            <ul class="uk-iconnav">
				<li><a href="{PRJ_ROW_EDIT_URL}" target="blank" uk-icon="icon: file-edit" title="{PHP.L.Edit}" uk-tooltip></a></li>
				<!-- IF {PRJ_ROW_STATE} == 2 -->
				<li><a href="{PRJ_ROW_VALIDATE_URL}" uk-icon="icon: code" title="{PHP.L.Validate}" uk-tooltip></a></li>
				<!-- ENDIF -->
				<li><a href="{PRJ_ROW_DELETE_URL}" uk-icon="icon: trash" class="uk-text-danger" title="{PHP.L.Delete}" uk-tooltip></a></li>
            </ul>
			</td>
		</tr>
		<!-- END: PRJ_ROWS -->
		<tr class="prjitem">
				<td colspan="2">
					<select name="prj_action" id="prj_action" class="uk-select">
						<option value="0">---</option>
						<option value="delete">{PHP.L.Delete}</option>
						<option value="validate">{PHP.L.Validate}</option>
					</select>
				</td>
				<td colspan="6">
					<button type="submit" class="uk-button uk-button-default">{PHP.L.Confirm}</button>
				</td>		
			</tr>
		</tbody>
	</table>

    <ul class="uk-pagination">{PAGENAV_PAGES}</ul>

	</form>		
</div>


<!-- END: MAIN -->