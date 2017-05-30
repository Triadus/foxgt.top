<!-- BEGIN: MAIN -->
<script src="{PHP.cfg.plugins_dir}/mavatars/js/mavatars.admin.js" type="text/javascript"></script>	
<div id="catgenerator" style="display:none">
	<table class="uk-table uk-table0small">
		<thead>
        <tr>
			<th class="uk-width-1-5">{PHP.L.Extension}</th>
			<th>{PHP.L.Category}</th>
			<th>{PHP.L.Path}</th>
			<th>{PHP.L.mav_thumbpath}</th>
			<th>{PHP.L.mav_req}</th>
			<th class="uk-width-1-6">{PHP.L.mav_fileext}</th>
			<th>{PHP.L.mav_size}</th>
			<th>&nbsp;</th>
		</tr>
        </thead>
		<!-- BEGIN: ADDITIONAL -->
		<tr class="newscat">
			<td><input type="text" class="text ca_ext uk-input" name="ca_ext" value="{ADDMODULE}" size="32" maxlength="255" /></td>
			<td><input type="text" class="text ca_cat uk-input" name="ca_cat" value="{ADDCATEGORY}" size="3" maxlength="255" /></td>
			<td><input type="text" class="text ca_path uk-input" name="ca_path" value="{ADDPATH}" size="4" maxlength="255" /></td>
			<td><input type="text" class="text ca_thumb uk-input" name="ca_thumb" value="{ADDTHUMBPATH}" size="4" maxlength="255" /></td>
			<td><input type="checkbox" class="ca_req uk-input" name="ca_req" value="{ADDREQ}" <!-- IF {ADDREQ} -->checked="checked"<!-- ENDIF --> /></td>
			<td><input type="text" class="text ca_fileext uk-input" name="ca_ext" value="{ADDEXT}" size="4" maxlength="255" /></td>
			<td><input type="text" class="text ca_size uk-input" name="ca_size" value="{ADDMAX}" size="4" maxlength="255" /></td>
			<td><a href="#" class="deloption negative button trash icon uk-button uk-button-small uk-button-danger" style="display:none">{PHP.L.Delete}</a></td>
		</tr>
		<!-- END: ADDITIONAL -->
		<tr id="addtr">
			<td class="uk-text-center" colspan="8"><button name="addoption" id="addoption" type="button" class="uk-button uk-button-default">{PHP.L.Add}</button></td>
		</tr>
	</table>
</div>

<!-- END: MAIN -->