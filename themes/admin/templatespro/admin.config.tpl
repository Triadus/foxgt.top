<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<!-- BEGIN: EDIT -->
<div class="uk-card uk-card-default uk-card-body">
<form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post">
    <table class="uk-table uk-table-small uk-table-hover">
        <thead>
            <tr>
                <th class="uk-width-1-3">{PHP.L.Key}</th>
                <th class="uk-width-1-2">{PHP.L.Value}</th>
                <th class="uk-width-1-6">{PHP.L.Reset}</th>
            </tr>
        </thead>
        <tbody>
            <!-- BEGIN: ADMIN_CONFIG_ROW -->
            
            <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
            <tr>
                <th colspan="3" class="uk-text-center">
                    <big class="uk-text-bold uk-text-success">{ADMIN_CONFIG_FIELDSET_TITLE}</big>
                </th>
            </tr>
            <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
            
            <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
            <tr>
              <td><b>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</b>
                <!-- IF {ADMIN_CONFIG_ROW_CONFIG_MORE} -->
                <div class="uk-text-small uk-text-muted">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
                <!-- ENDIF -->
              </td>
              <td>
                {ADMIN_CONFIG_ROW_CONFIG}
              </td>
              <td class="uk-text-center">
                <a uk-icon="icon: history; ratio: 1" class="uk-text-warning" href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" title="{PHP.L.Reset}" uk-tooltip>
                </a>
              </td>
            </tr>
            <!-- END: ADMIN_CONFIG_ROW_OPTION -->
            
            <!-- BEGIN: ADMIN_CONFIG_FIELDSET_END -->
            <!-- END: ADMIN_CONFIG_FIELDSET_END -->

            <!-- END: ADMIN_CONFIG_ROW -->
        </tbody>
    </table>
    <div class="uk-text-center uk-margin-top">
    <button type="submit" class="uk-button uk-button-default">{PHP.L.Update}</button>
    </div>
</form>
</div>
<!-- END: EDIT -->


<!-- BEGIN: DEFAULT -->

<!-- BEGIN: ADMIN_CONFIG_COL -->
<ul class="uk-list uk-list-divider">
    <li class="uk-nav-header uk-text-bold uk-text-primary">{ADMIN_CONFIG_COL_CAPTION}</li>
</ul>
<hr />
<ul uk-grid>
<!-- BEGIN: ADMIN_CONFIG_ROW -->
<li class="uk-width-1-3@s">
    <div class="uk-card uk-card-default uk-card-hover uk-card-body">
	<!-- IF {ADMIN_CONFIG_ROW_ICO} --> 
	<img src="{ADMIN_CONFIG_ROW_ICO}" style="height: 32px!important;">
	<!-- ELSE -->
	<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" style="height: 32px!important;">
	<!-- ENDIF -->
	<a class="uk-margin-left uk-button uk-button-text uk-button-small" href="{ADMIN_CONFIG_ROW_URL}">{ADMIN_CONFIG_ROW_NAME}</a>
    </div>		
</li>
<!-- END: ADMIN_CONFIG_ROW -->
</ul>

<!-- END: ADMIN_CONFIG_COL -->

<!-- END: DEFAULT -->
<!-- END: MAIN -->