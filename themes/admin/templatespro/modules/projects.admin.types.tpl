<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.projects_projects}</h2>
<hr class="uk-divider-icon">

<div class="uk-card uk-card-default uk-card-body">
	<form action="{EDITFORM_ACTION_URL}" method="post" name="newcountry">
		<h5 class="uk-text-uppercase uk-text-muted">{PHP.L.projects_types_editor}</h5>
		<table class="uk-table uk-table-small">
			<tr>
				<th>{PHP.L.Default}</th>
				<th>{PHP.L.Title}</th>
				<th>{PHP.L.Action}</th>
			</tr>	
			<!-- BEGIN: ROWS -->
			<tr>
				<td>{TYPE_ROW_DEFAULT} </td>
				<td>{TYPE_ROW_TITLE} </td>
				<td>
					<a class="uk-text-danger negative uk-button" uk-icon="icon: trash" title="{PHP.L.Delete}" href="{TYPE_ROW_DEL_URL}" uk-tooltip></a>		
				</td>
			</tr>
			<!-- END: ROWS -->
			<!-- BEGIN: NOROWS -->
			<tr>
				<td colspan="3">{PHP.L.None}</td>
			</tr>
			<!-- END: NOROWS -->	
		</table>
		<div class="action_bar">
			<ul class="uk-pagination">{PAGENAV_PAGES}</ul>
            <button type="submit" class="submit uk-button uk-button-default">{PHP.L.Update}</button>
		</div>	
	</form>
</div>
<!-- BEGIN: ADDFORM -->
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
	<h5 class="uk-text-uppercase uk-text-muted">{PHP.L.projects_types_new}</h5>
	<form method="post" action="{ADDFORM_ACTION_URL}">
		<table class="uk-table uk-table-small">
			<tr>
				<td>{PHP.L.Title}:</td>
				<td>{ADDFORM_TITLE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Default}:</td>
				<td>{ADDFORM_DEFAULT}</td>
			</tr>
		</table>
		<div class="action_bar valid">
            <button type="submit" class="submit uk-button uk-button-default">{PHP.L.Add}</button>
		</div>	
	</form>
</div>
<!-- END: ADDFORM -->

<!-- END: MAIN -->