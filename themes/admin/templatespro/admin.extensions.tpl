<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: CONFIG_URL -->
<ul>
  <li><a class="uk-button uk-button-default" title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}" uk-tooltip>{PHP.L.Configuration}: {PHP.R.admin_icon_config}</a></li>
</ul>
<!-- END: CONFIG_URL -->

<!-- BEGIN: DETAILS -->
<div class="uk-child-width-1-2" uk-grid>
    <div>
        <div class="uk-card uk-card-default uk-card-body">
            <article class="uk-comment">
            <header class="uk-comment-header uk-grid-medium uk-flex-middle" uk-grid>
                <div class="uk-width-auto">
                 <!-- IF {ADMIN_EXTENSIONS_ICO} -->
                 <img class="uk-comment-avatar" src="{ADMIN_EXTENSIONS_ICO}">
                 <!-- ELSE -->
                 <img class="uk-comment-avatar" src="{PHP.cfg.system_dir}/admin/img/plugins32.png">
                 <!-- ENDIF -->
                </div>
                <div class="uk-width-expand">
                    <h4 class="uk-comment-title uk-margin-remove" title="{ADMIN_EXTENSIONS_TYPE}: {ADMIN_EXTENSIONS_NAME}">{ADMIN_EXTENSIONS_NAME}</h4>
                    <p class="uk-margin-remove">{ADMIN_EXTENSIONS_DATE}</p>
                </div>
            </header>
            <div class="uk-comment-body">
                <p class="uk-text-small uk-text-muted">{ADMIN_EXTENSIONS_DESCRIPTION}</p>
                <hr />
                
                
                <ul class="uk-iconnav">
                    <!-- IF {PHP.isinstalled} AND {PHP.exists} -->
                    
                            <!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
                            <li><a class="uk-margin-small-right uk-icon" uk-icon="icon: forward" title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" uk-tooltip></a></li>
                            <!-- ENDIF -->
        			<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS} -->
        			<li><a class="uk-margin-small-right uk-icon uk-text-danger" uk-icon="icon: code" title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" uk-tooltip></a></li>
        			<!-- ENDIF -->
        
        			<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
        			<li><a class="uk-margin-small-right uk-icon uk-text-primary" uk-icon="icon: settings" title="{PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})" href="{ADMIN_EXTENSIONS_CONFIG_URL}" uk-tooltip></a></li>
        			<!-- ENDIF -->
        
        			<li><a class="uk-margin-small-right uk-icon uk-text-primary" uk-icon="icon: users" title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS}" uk-tooltip></a></li>
        
        			<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT} -->
        			<li><a class="uk-margin-small-right uk-icon uk-text-warning" uk-icon="icon: list" title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" uk-tooltip></a></li>
        			<!-- ENDIF -->
        
        		<!-- ENDIF -->
                
                    <!-- IF !{PHP.isinstalled} -->
    			<li><a class="uk-margin-small-right uk-icon" uk-icon="icon: refresh" title="{PHP.L.adm_opt_install} - {PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}" uk-tooltip></a></li>
	            <!-- ELSE -->
            
    			<!-- IF {PHP.exists} -->
    			<li><a class="uk-margin-small-right uk-icon" uk-icon="icon: refresh" title="{PHP.L.adm_opt_update} - {PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}" uk-tooltip></a></li>
    			<!-- ENDIF -->
    
    			<li><a class="uk-margin-small-right uk-icon uk-text-danger" uk-icon="icon: ban" title="{PHP.L.adm_opt_pauseall} - {PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}" uk-tooltip></a></li>
    
    			<!-- IF {PHP.exists} -->
    			<li><a class="uk-margin-small-right uk-icon uk-text-success" uk-icon="icon: play" title="{PHP.L.adm_opt_unpauseall} - {PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}" uk-tooltip></a></li>
    			<!-- ENDIF -->
                
    			<li><a class="uk-margin-small-right uk-icon uk-text-danger" uk-icon="icon: trash"  title="{PHP.L.adm_opt_uninstall} - {PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_URL}" uk-tooltip></a></li>
    		<!-- ENDIF -->
            </ul>
            <hr />
            </div>
        </article>
        <div class="uk-overflow-auto">  
        <table class="uk-table uk-table-small">
    		 <tr>
    		   <td>{PHP.L.Code}:</td>
    		   <td>{ADMIN_EXTENSIONS_CODE}</td>
    		 </tr>
    		 <tr>
    		   <td>{PHP.L.Version}:</td>
    		   <td>
    			 <!-- IF {PHP.isinstalled} AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
    			 <span class="uk-label uk-label-warning">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span>
    			 <span class="uk-label uk-label-success">{ADMIN_EXTENSIONS_VERSION}</span>
    			 <!-- ELSE -->
                         <span class="uk-label uk-label-primary">{ADMIN_EXTENSIONS_VERSION}</span>
    			 <!-- ENDIF -->
                 </td>
    		 </tr>
    		 <tr>
    		   <td>{PHP.L.Date}:</td>
    		   <td>{ADMIN_EXTENSIONS_DATE}</td>
    		 </tr>
    		 <tr>
    		   <td>{PHP.L.Author}:</td>
    		   <td>{ADMIN_EXTENSIONS_AUTHOR}</td>
    		 </tr>
    		 <tr>
    		   <td>{PHP.L.Copyright}:</td>
                   <td class="uk-text-small uk-text-success">{ADMIN_EXTENSIONS_COPYRIGHT}</td>
    		 </tr>
    		 <tr>
    		   <td>{PHP.L.Notes}:</td>
                   <td>{ADMIN_EXTENSIONS_NOTES}</td>
    		 </tr>
    		 <!-- BEGIN: DEPENDENCIES -->
    		 <tr>
    		   <td>{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</td>
    		   <td>
    			   <!-- BEGIN: DEPENDENCIES_ROW -->
    			   <a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}">
                               <span class="uk-label uk-label-<!-- IF {ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS} --><!-- IF {ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS} == 'highlight_red' -->danger<!-- ELSE -->success<!-- ENDIF --><!-- ELSE -->primary<!--ENDIF -->">{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</span>
                           </a>
    			   <!-- END: DEPENDENCIES_ROW -->
    		   </td>
    		 </tr>
    		 <!-- END: DEPENDENCIES -->
	   </table>
       </div>
        </div>
    </div>
    <div>
        <div class="uk-card uk-card-default uk-card-body">
        <div>
            <h5 class="uk-text-uppercase uk-text-muted">{PHP.L.Tags}</h5>
            <div class="uk-overflow-auto">
            <table class="uk-table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>{PHP.L.Part}</th>
                  <th>{PHP.L.Files} / {PHP.L.Tags}</th>
                </tr>
              </thead>
              <tbody>
                <!-- BEGIN: ROW_ERROR_TAGS -->
                <tr>
                  <td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
                  <td class="uk-text-danger">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
                  <td><span class="uk-label uk-label-warning">{PHP.L.None}</span></td>
                </tr>
                <!-- END: ROW_ERROR_TAGS -->
                <!-- BEGIN: ROW_TAGS -->
                <tr class="uk-text-primary">
                  <td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
                  <td class="uk-text-primary">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
                  <td><span class="uk-label uk-label-primary">{ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}</span></td>
                </tr>
                <!-- END: ROW_TAGS -->
              </tbody>
            </table>
            </div>
        </div>
        </div>
    </div>
</div>




<h5 class="uk-text-uppercase uk-text-muted">{PHP.L.Parts}</h5>
<div class="uk-overflow-auto">
<table class="uk-table">
  <thead>
    <tr>
      <th>#</th>
      <th>{PHP.L.Part}</th>
      <th>{PHP.L.File}</th>
      <th>{PHP.L.Hooks}</th>
      <th>{PHP.L.Order}</th>
      <th>{PHP.L.Status}</th>
      <th>{PHP.L.Action}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: ROW_ERROR_PART -->
    <tr>
      <td colspan="3">{ADMIN_EXTENSIONS_DETAILS_ROW_X}</td>
      <td colspan="4">{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</td>
    </tr>
    <!-- END: ROW_ERROR_PART -->
    <!-- BEGIN: ROW_PART -->
    <tr>
      <td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
      <td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
      <td>{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
      <td>{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
      <td>{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</td>
      <td>{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</td>
      <td>
        <!-- BEGIN: ROW_PART_NOTINSTALLED -->
        &ndash;
        <!-- END: ROW_PART_NOTINSTALLED -->
        <!-- BEGIN: ROW_PART_PAUSE -->
        <a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}" class="uk-button uk-button-default uk-button-small"> {PHP.L.adm_opt_pause}</a>
        <!-- END: ROW_PART_PAUSE -->
        <!-- BEGIN: ROW_PART_UNPAUSE -->
        <a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}" class="uk-button uk-button-primary uk-button-small">{PHP.L.adm_opt_unpause}</a>
        <!-- END: ROW_PART_UNPAUSE -->
      </td>
    </tr>
    <!-- END: ROW_PART -->
  </tbody>
</table>
</div>
<!-- END: DETAILS -->

<!-- BEGIN: HOOKS -->

<div class="uk-button-group uk-margin-bottom">
<a class="uk-button uk-button-default" href="{PHP|cot_url('admin', 'm=extensions')}"> {PHP.L.ShowAlphabetical}</a>
<a class="uk-button uk-button-default" href="{PHP|cot_url('admin', 'm=extensions&sort=cat')}"> {PHP.L.ShowCategories}</a>
<a class="uk-button uk-button-default" href="{PHP|cot_url('admin', 'm=extensions&a=hooks')}"> {PHP.L.ShowParts}</a>
</div>

<h5 class="uk-text-uppercase uk-text-muted">{PHP.L.Hooks} ({ADMIN_EXTENSIONS_CNT_HOOK}):</h5>
<div class="uk-overflow-auto">  
<table class="uk-table">
  <thead>
    <tr>
      <th>{PHP.L.Hooks}</th>
      <th>{PHP.L.Plugin}</th>
      <th>{PHP.L.Order}</th>
      <th>{PHP.L.Active}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: HOOKS_ROW -->
    <tr>
      <td>{ADMIN_EXTENSIONS_HOOK}</td>
      <td>{ADMIN_EXTENSIONS_CODE}</td>
      <td>{ADMIN_EXTENSIONS_ORDER}</td>
      <td>{ADMIN_EXTENSIONS_ACTIVE}</td>
    </tr>
    <!-- END: HOOKS_ROW -->
  </tbody>
</table>
</div>
<!-- END: HOOKS -->

<!-- BEGIN: DEFAULT -->
  <div class="uk-button-group">
    <a class="uk-button<!-- IF {ADMIN_EXTENSIONS_SORT_ALP_SEL} --> uk-activ<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_ALP_URL}"> {PHP.L.ShowAlphabetical}</a>
    <a class="uk-button<!-- IF {ADMIN_EXTENSIONS_SORT_CAT_SEL} --> uk-button-default<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_CAT_URL}"> {PHP.L.ShowCategories}</a>
    <a class="uk-button<!-- IF {PHP.a} == 'hooks' --> uk-button-default<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_HOOKS_URL}"> {PHP.L.ShowParts}</a>
  </div>
  <div class="uk-button-group">
    <a class="uk-button<!-- IF !{ADMIN_EXTENSIONS_ONLY_INSTALLED_SEL} -->uk-button-default<!-- ENDIF -->" href="{PHP.sort_urlp|cot_url('admin', 'm=extensions$this')}"> {PHP.L.ShowAll}</a>
    <a class="uk-button<!-- IF {ADMIN_EXTENSIONS_ONLY_INSTALLED_SEL} --> uk-button-default<!-- ENDIF -->" href="{PHP.sort_urlp|cot_url('admin', 'm=extensions&inst=1$this')}">{PHP.L.ShowInstalled}</a>
  </div>


<!-- BEGIN: SECTION-->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{ADMIN_EXTENSIONS_SECTION_TITLE} ({ADMIN_EXTENSIONS_CNT_EXTP})</h2>
<hr class="uk-divider-icon">
<div class="uk-card uk-card-default uk-card-body">
<div class="uk-overflow-auto">  
<table class="uk-table uk-table uk-table-hover uk-tabel-small">
  <thead>
    <tr>
      <th>{PHP.L.Name}</th>
      <th>{PHP.L.Code}</th>
      <th>{PHP.L.Version}</th>
      <th>{PHP.L.Parts}</th>
      <th>{PHP.L.Status}</th>
      <th>{PHP.L.Action}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: ROW -->
    <!-- BEGIN: ROW_CAT -->
    <tr>
      <th colspan="6">
        {ADMIN_EXTENSIONS_CAT_TITLE}
      </th>
    </tr>
    <!-- END: ROW_CAT -->
    <!-- BEGIN: ROW_ERROR_EXT-->
	 <!-- IF {ADMIN_EXTENSIONS_ERROR_MSG} -->
    <tr>
      <td>{ADMIN_EXTENSIONS_X_ERR}</td>
      <td colspan="5">{ADMIN_EXTENSIONS_ERROR_MSG}</td>
    </tr>
	 <!-- ENDIF -->
    <!-- END: ROW_ERROR_EXT -->
    <tr>
      <td>
        <!-- IF {ADMIN_EXTENSIONS_ICO} -->
        <img src="{ADMIN_EXTENSIONS_ICO}" height="24">
        <!-- ELSE -->
        <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" height="24">
        <!-- ENDIF -->
        <a class="uk-button uk-button-link uk-margin-left" href="{ADMIN_EXTENSIONS_DETAILS_URL}" title="{ADMIN_EXTENSIONS_NAME}" uk-tooltip>{ADMIN_EXTENSIONS_NAME}</a>
      </td>
      <td>{ADMIN_EXTENSIONS_CODE_X}</td>
      <td>
        <!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
          <span class="uk-label uk-label-warning">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span>
          <span class="uk-label uk-label-success">{ADMIN_EXTENSIONS_VERSION}</span>
          <!-- ELSE -->
          <span class="uk-label uk-label-primary">{ADMIN_EXTENSIONS_VERSION}</span>
          <!-- ENDIF -->
      </td>
      <td>{ADMIN_EXTENSIONS_PARTSCOUNT}</td>
      <td>{ADMIN_EXTENSIONS_STATUS}</td>
      <td>
        <!-- IF {PHP.part_status} != 3 -->
        <ul class="uk-iconnav">
          <!-- IF {PHP.if_plg_standalone} -->
          <li><a class="uk-margin-small-right uk-text-success uk-icon" uk-icon="icon: forward" href="{ADMIN_EXTENSIONS_JUMPTO_URL}"  title="{PHP.L.Open}" uk-tooltip></a></li>
          <!-- ELSE -->
          <li><a class="uk-margin-small-right uk-text-muted uk-icon" uk-icon="icon: forward" disabled></a></li>
          <!-- ENDIF -->

          <!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->
          <li><a class="uk-margin-small-right uk-text-success uk-icon" uk-icon="icon: cog" href="{ADMIN_EXTENSIONS_EDIT_URL}"  title="{PHP.L.Configuration}" uk-tooltip></a></li>
          <!-- ELSE -->
          <li><a class="uk-margin-small-right uk-text-muted uk-icon" uk-icon="icon: cog" disabled></a>
          <!-- ENDIF -->

          <!-- IF {PHP.ifstruct} -->
          <li><a class="uk-margin-small-right uk-text-success uk-icon" uk-icon="icon: list" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" title="{PHP.L.Structure}" uk-tooltip></a></li>
          <!-- ELSE -->
          <li><a class="uk-margin-small-right uk-text-muted uk-icon" uk-icon="icon: list" disabled></a>
          <!-- ENDIF -->

          <!-- IF {PHP.totalinstalled} -->
          <li><a class="uk-margin-small-right uk-text-success uk-icon" uk-icon="icon: laptop" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" title="{PHP.L.Rights}" uk-tooltip></a></li>
          <!-- ELSE -->
          <li><a class="uk-margin-small-right uk-text-muted uk-icon" uk-icon="icon: laptop" disabled></a>
          <!-- ENDIF -->

          <!-- IF {PHP.ifthistools} -->
          <li><a class="uk-margin-small-right uk-text-success uk-icon" uk-icon="icon: settings" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" title="{PHP.L.Administration}" uk-tooltip></a></li>
          <!-- ELSE -->
          <li><a class="uk-margin-small-right uk-text-muted uk-icon" uk-icon="icon: settings" disabled></a>
          <!-- ENDIF -->
        </ul>
        <!-- ENDIF -->
      </td>
    </tr>
    <!-- END: ROW -->
    <!-- BEGIN: ROW_ERROR -->
    <tr>
      <td>{ADMIN_EXTENSIONS_X}</td>
      <td colspan="5">{PHP.L.adm_opt_setup_missing}</td>
    </tr>
    <!-- END: ROW_ERROR -->
  </tbody>
</table>
</div>
</div>
<!-- END: SECTION -->
<!-- END: DEFAULT -->

<!-- BEGIN: EDIT -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{ADMIN_EXTENSIONS_EDIT_TITLE}</h2>
<hr class="uk-divider-icon">
<div class="uk-card uk-card-default uk-card-body">
  <div class="{ADMIN_EXTENSIONS_EDIT_RESULT}">
    {ADMIN_EXTENSIONS_EDIT_LOG}
  </div>
</div>
<a href="{ADMIN_EXTENSIONS_EDIT_CONTINUE_URL}" class="ajax uk-button uk-button-default">{PHP.L.Clickhere}</a>

<!-- END: EDIT -->

<!-- END: MAIN -->