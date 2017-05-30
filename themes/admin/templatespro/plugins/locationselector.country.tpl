<!-- BEGIN: MAIN -->
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
	<h5 class="uk-text-muted uk-text-uppercase">{PHP.L.ls_countries}</h5>
	<form action="{LOCATIONSELECTOR_FORM_UPDATE}" method="post" name="update" id="update" class="ajax">
		<ul class="uk-column-1-2@s uk-column-1-3@m uk-column-1-2@l uk-list">
            <li><!-- IF {PHP.cfg.jquery} --><input class="checkbox" type="checkbox" value="{PHP.L.Yes}/{PHP.L.No}" onclick="$('.checkbox').attr('checked', this.checked);" /><!-- ENDIF --> {PHP.L.Country}</li>
            <!-- BEGIN: ROWS -->
            <li><input type="checkbox" class="checkbox" name="enabled_countries[]" <!-- IF {COUNTRY_ROW_CHECKED} -->checked="checked"<!-- ENDIF --> value="{COUNTRY_ROW_CODE}"/> {COUNTRY_ROW_FLAG} <a href="{COUNTRY_ROW_URL}" class="thumbicons">{COUNTRY_ROW_NAME}</a> </li>
            <!-- END: ROWS -->
        </ul>
		<button type="submit" class="uk-button uk-button-default">{PHP.L.Update}</button>
	</form>
	<!-- BEGIN: NOROWS -->
    <div class="uk-alert">
	<p>{PHP.L.ls_nocountries}</p>
    </div>
	<!-- END: NOROWS -->
	<div class="height0"></div>
</div>
<!-- END: MAIN -->