<!-- BEGIN: MAIN -->
<script src="{PHP.cfg.plugins_dir}/easypay/js/easypay.admin.config.js" type="text/javascript"></script>	
<div id="areagenerator" style="display:none">
	<table class="uk-table uk-table-small">
		<tr>
			<td>{PHP.L.easypay_admin_config_code}</td>
			<td>{PHP.L.easypay_admin_config_name}</td>
			<td>{PHP.L.easypay_admin_config_cost}</td>
			<td>{PHP.L.easypay_admin_config_userid}</td>
			<td>&nbsp;</td>
		</tr>
		<!-- BEGIN: ADDITIONAL -->
		<tr class="area">
			<td>{ADDCODE}</td>
			<td>{ADDNAME}</td>
			<td>{ADDCOST}</td>
			<td>{ADDUSERID}</td>
			<td><a href="#" class="deloption negative uk-button uk-button-danger">{PHP.L.Delete}</a></td>
		</tr>
		<!-- END: ADDITIONAL -->
		<tr id="addtr">
			<td class="uk-text-center" colspan="8"><button name="addoption" id="addoption" type="button" class="uk-button uk-button-small uk-button-primary">{PHP.L.Add}</button></td>
		</tr>
	</table>
</div>

<!-- END: MAIN -->