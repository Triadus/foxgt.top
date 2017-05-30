<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.userimages_title}</h2>
<hr class="uk-divider-icon">
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
<table class="uk-table">
	<thead>
		<tr>
			<th>{PHP.L.Code}</th>
			<th>{PHP.L.userimages_width}</th>
			<th>{PHP.L.userimages_height}</th>
			<th>{PHP.L.userimages_cropratio}</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
<!-- BEGIN: USERIMG_LIST -->
		<form action="{EDIT_URL}" method="post">
			<tr>
				<td><span class="uk-label">{CODE}</span></td>
				<td><div class="uk-position-relative"><input class="uk-input" type="text" name="userimg_width" size="10" value="{WIDTH}" /> <span class="uk-button uk-position-right">px</span></div></td>
				<td><div class="uk-position-relative"><input class="uk-input" type="text" name="userimg_height" size="10" value="{HEIGHT}" /> <span class="uk-button uk-position-right">px</span></div></td>
				<td>
					<select name="userimg_crop" class="uk-select">
						<option value="">{PHP.L.userimages_cropnone}</option>
						<option<!-- IF {CROP} == 'fit' --> selected="selected"<!-- ENDIF --> value="fit">{PHP.L.userimages_cropfit}</option>
						<option<!-- IF {CROP} == '1:1' --> selected="selected"<!-- ENDIF --> value="1:1">1:1</option>
						<option<!-- IF {CROP} == '1:2' --> selected="selected"<!-- ENDIF --> value="1:2">1:2</option>
						<option<!-- IF {CROP} == '2:3' --> selected="selected"<!-- ENDIF --> value="2:3">2:3</option>
						<option<!-- IF {CROP} == '3:4' --> selected="selected"<!-- ENDIF --> value="3:4">3:4</option>
						<option<!-- IF {CROP} == '4:5' --> selected="selected"<!-- ENDIF --> value="4:5">4:5</option>
						<option<!-- IF {CROP} == '5:6' --> selected="selected"<!-- ENDIF --> value="5:6">5:6</option>
						<option<!-- IF {CROP} == '2:1' --> selected="selected"<!-- ENDIF --> value="2:1">2:1</option>
						<option<!-- IF {CROP} == '3:2' --> selected="selected"<!-- ENDIF --> value="3:2">3:2</option>
						<option<!-- IF {CROP} == '4:3' --> selected="selected"<!-- ENDIF --> value="4:3">4:3</option>
						<option<!-- IF {CROP} == '5:4' --> selected="selected"<!-- ENDIF --> value="5:4">5:4</option>
						<option<!-- IF {CROP} == '6:5' --> selected="selected"<!-- ENDIF --> value="6:5">6:5</option>
						<option<!-- IF {CROP} == '16:9' --> selected="selected"<!-- ENDIF --> value="16:9">16:9</option>
						<option<!-- IF {CROP} == '16:10' --> selected="selected"<!-- ENDIF --> value="16:10">16:10</option>
					</select>
				</td>
				<td><button class="uk-button uk-button-link" type="submit">{PHP.L.Update}</button> {REMOVE}</td>
			</tr>
		</form>
<!-- END: USERIMG_LIST -->
	</tbody>
	<tfoot>
		<form action="{PHP|cot_url('admin','m=other&p=userimages&a=add')}" method="post">
			<tr>
				<td>
                <strong>{PHP.L.userimages_addnew}:</strong> 
                <input type="text" class="uk-input" name="userimg_code" size="30" />
                </td>
				<td><div class="uk-position-relative"><input class="uk-input" type="text" name="userimg_width" size="10" /> <span class="uk-button uk-position-right">px</span></div></td>
				<td><div class="uk-position-relative"><input class="uk-input" type="text" name="userimg_height" size="10" /> <span class="uk-button uk-position-right">px</span></div></td>
				<td>
					<select name="userimg_crop" class="uk-select">
						<option value="">{PHP.L.userimages_cropnone}</option>
						<option value="fit">{PHP.L.userimages_cropfit}</option>
						<option value="1:1">1:1</option>
						<option value="1:2">1:2</option>
						<option value="2:3">2:3</option>
						<option value="3:4">3:4</option>
						<option value="4:5">4:5</option>
						<option value="5:6">5:6</option>
						<option value="2:1">2:1</option>
						<option value="3:2">3:2</option>
						<option value="4:3">4:3</option>
						<option value="5:4">5:4</option>
						<option value="6:5">6:5</option>
						<option value="16:9">16:9</option>
						<option value="16:10">16:10</option>
					</select>
				</td>
				<td><button  class="uk-button uk-button-default "type="submit">{PHP.L.Add}</button></td>
			<tr>
		</form>
	</tfoot>
</table>

</div>

<!-- END: MAIN -->