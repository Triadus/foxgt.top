<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.folio}</h2>
<hr class="uk-divider-icon">
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
	<form action="{SEARCH_ACTION_URL}" method="get" class="uk-form-horizontal">
		<input type="hidden" name="m" value="{PHP.m}" />
		<input type="hidden" name="p" value="{PHP.p}" />
		<input type="hidden" name="c" value="{PHP.c}" />
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

<form action="{PHP|cot_url('admin','m=market'),'',true}" id="prd_form" method="POST">
<div id="listmarket" class="uk-margin-large-top">
    <div class="uk-child-width-1-5@s" uk-grid>
        <!-- BEGIN: PRD_ROWS -->
        <div>
            <div class="uk-card uk-card-default uk-card-hover">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-auto">
                            <!-- IF {PRD_ROW_OWNER_AVATAR_SRC} -->
                            <img class="uk-border-circle" width="40" height="40" src="{PRD_ROW_OWNER_AVATAR_SRC}">
                            <!-- ELSE -->
                            <img class="uk-border-circle" width="40" height="40" src="datas\defaultav\blank.png">
                            <!-- ENDIF -->
                        </div>
                        <div class="uk-width-expand">
                            <h3 class="uk-card-title uk-margin-remove-bottom">{PRD_ROW_OWNER_NICKNAME}</h3>
                            <p class="uk-text-meta uk-margin-remove-top"><time datetime="2016-04-01T19:00">{PRD_ROW_DATE}</time></p>
                        </div>
                    </div>
                </div>
                <div class="uk-card-media-top uk-position-relative">
                    <div class="uk-position-top-left">
                    <!-- IF {PRD_ROW_COST} > 0 -->
                    <span class="uk-label uk-label-success">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
                    <!-- ELSE -->
                    <span class="uk-label uk-label-warning">{PHP.L.Is_free_title}</span>
                    <!-- ENDIF -->
                    </div>
                    <!-- IF {PRD_ROW_MAVATAR.1} -->
            		<img class="uk-width-1-1" src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 343, 174, crop)}" />
                    <!-- ELSE -->
                    <img class="uk-width-1-1" src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/no-images.png" width="343" height="174" />
            		<!-- ENDIF -->
                </div>
                <div class="uk-card-body uk-position-relative">
                    <h5 class="uk-text-truncate uk-text-primary"><a class="uk-text-muted" href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a></h5>
                    <div class="uk-text-small">
                    <!-- //{PRD_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 60, 'UTF-8')}...-->
                    <label class="uk-position-bottom-center"><input type="checkbox" name="prd_arr[]" value="{PRD_ROW_ID}">Отметить</label>
                    </div>
                    <hr />
                    <div class="uk-grid-small uk-child-width-expand@s uk-text-center" uk-grid>
                        <!-- IF {PRD_ROW_STATE} == 2 -->
                        <div>
                			<a class="uk-text-primary" uk-icon="icon: clock" href="{PRD_ROW_VALIDATE_URL}" class="uk-button uk-button-link" title="{PHP.L.Validate}" uk-tooltip></a>
                        </div>
                        <!-- ENDIF -->
                        <div>
                            <a class="uk-text-danger" uk-icon="icon: trash" href="{PRD_ROW_DELETE_URL}" class="uk-button uk-button-link" title="{PHP.L.Delete}" uk-tooltip></a>
                        </div>
                    </div>
                    <hr />
                </div>
            </div>
        </div>
        <!-- END: PRD_ROWS -->
    </div>
</div>
<div uk-grid class="uk-margin-large-top">
    <div class="uk-width-1-3@m">
        <select name="prd_action" id="prd_action" class="uk-select">
        	<option value="0">---</option>
        	<option value="delete">{PHP.L.Delete}</option>
        	<option value="validate">{PHP.L.Validate}</option>
        </select>
    </div>
    <div class="uk-width-auto@m">
        <button type="submit" class="uk-button uk-button-default">{PHP.L.Confirm}</button>
    </div>
</div>


		

<!-- IF {PAGENAV_COUNT} > 0 -->	
<ul class="uk-pagination">{PAGENAV_PAGES}</ul>
<!-- ELSE -->
<div class="uk-alert">{PHP.L.market_notfound}</div>
<!-- ENDIF -->
</form>
<!-- END: MAIN -->