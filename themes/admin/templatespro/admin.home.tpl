<!-- BEGIN: MAIN -->

<!-- BEGIN: UPDATE -->
<div class="uk-alert-danger" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>{PHP.L.adminqv_update_notice} {ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
</div>
<!-- END: UPDATE -->

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div data-uk-grid> 
    <div class="uk-width-3-4@m">
    <!-- BEGIN: MAINPANEL -->
        <div class="uk-card uk-card-default uk-card-body uk-margin-bottom">
        {ADMIN_HOME_MAINPANEL}
        </div>
    <!-- END: MAINPANEL -->
    <div class="uk-overflow-auto uk-margin-bottom">
            <table class="uk-table uk-table-hover">
            <thead>
                <tr>
                    <th>{PHP.L.Tilte_title}</th>
                    <th>{PHP.L.Info_title}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{PHP.L.Version}</td>
                    <td><span class="uk-label uk-label-success">{ADMIN_HOME_VERSION}</span></td>
                </tr>
                <tr>
                    <td>{PHP.L.Database}</td>
                    <td><span class="uk-label uk-label-success">{ADMIN_HOME_DB_VERSION}</span></td>
                </tr>
                <tr>
                    <td>{PHP.L.home_db_rows}</td>
                    <td><span class="uk-label uk-label-success">{ADMIN_HOME_DB_TOTAL_ROWS}</span></td>
                </tr>
                <tr>
                    <td>{PHP.L.home_db_indexsize}</td>
                    <td><span class="uk-label uk-label-success">{ADMIN_HOME_DB_INDEXSIZE}</span></td>
                </tr>
                <tr>
                    <td>{PHP.L.home_db_datassize}</td>
                    <td><span class="uk-label uk-label-success">{ADMIN_HOME_DB_DATASSIZE}</span></td>
                </tr>
                <tr>
                    <td>{PHP.L.home_db_totalsize}</td>
                    <td><span class="uk-label uk-label-success">{ADMIN_HOME_DB_TOTALSIZE}</span></td>
                </tr>
                <tr>
                    <td>{PHP.L.Plugins}</td>
                    <td><span class="uk-label uk-label-success">{ADMIN_HOME_TOTALPLUGINS}</span></td>
                </tr>
                <tr>
                    <td>{PHP.L.Hooks}</td>
                    <td><span class="uk-label uk-label-success">{ADMIN_HOME_TOTALHOOKS}</span></td>
                </tr>
            </tbody>
        </table>
        </div>
    </div>
    <div class="uk-width-1-4@m">
    <div class="uk-card uk-card-default uk-card-body uk-margin-bottom">
		<ul class="uk-list uk-list-divider">
            <li class="uk-nav-header">{PHP.L.home_ql_b1_title}</li>
			<li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}">{PHP.L.home_ql_b1_1}</a></li>
			<li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}">{PHP.L.home_ql_b1_2}</a></li>
			<li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}">{PHP.L.home_ql_b1_3}</a></li>
			<li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=menus')}">{PHP.L.home_ql_b1_4}</a></li>
			<li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=locale')}">{PHP.L.Locale}</a></li>
			<li><a href="{PHP|cot_url('admin','m=extrafields')}">{PHP.L.adm_extrafields}</a></li>
		</ul>
    </div>
    <!-- BEGIN: SIDEPANEL -->
        <div class="uk-card uk-card-default uk-card-body uk-margin-bottom">
        {ADMIN_HOME_SIDEPANEL}
        </div>
    <!-- END: SIDEPANEL -->
    </div>
</div>
<!-- END: MAIN -->