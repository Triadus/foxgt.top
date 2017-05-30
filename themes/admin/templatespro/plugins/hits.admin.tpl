<!-- BEGIN: MAIN -->
    <h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Hits}</h2>
    <hr class="uk-divider-icon">
	<p>{ADMIN_HITS_MAXHITS}</p>
    
	<div class="uk-card uk-card-default uk-card-hover uk-card-body">
<!-- BEGIN: YEAR_OR_MONTH -->
	<div class="uk-overflow-auto">
	<table class="uk-table uk-table-small">
    <thead>
        <tr>
            <th class="uk-width-1-6">{PHP.v}</th>
            <th class="uk-width-1-5"></th>
            <th class="uk-width-1-5"></th>
            <th class="uk-width-1-2">{PHP.L.Progress_bar_title}</th>
        </tr>
    </thead>
<!-- BEGIN: ROW -->
		<tr>
			<td>{ADMIN_HITS_ROW_DAY}</td>
			<td>{PHP.L.Hits}: {ADMIN_HITS_ROW_HITS}</td>
			<td>{ADMIN_HITS_ROW_PERCENTBAR}%</td>
			<td class="uk-text-center">
				<progress id="progressbar" class="uk-progress" value="10" max="{ADMIN_HOME_PERCENTBAR}"></progress>
			</td>
		</tr>
<!-- END: ROW -->
	</table>
    </div>
<!-- END: YEAR_OR_MONTH -->

<!-- BEGIN: DEFAULT -->
	<div class="uk-overflow-auto">
	<table class="uk-table uk-table-small">
    <thead>
        <tr>
            <th class="uk-width-1-6">{PHP.hits_byyear}</th>
            <th class="uk-width-1-5"></th>
            <th class="uk-width-1-5"></th>
            <th class="uk-width-1-2">{PHP.L.Progress_bar_title}</th>
        </tr>
    </thead>
<!-- BEGIN: ROW_YEAR -->
		<tr>
			<td><a href="{ADMIN_HITS_ROW_YEAR_URL}">{ADMIN_HITS_ROW_YEAR}</a></td>
			<td>{PHP.L.Hits}: {ADMIN_HITS_ROW_YEAR_HITS}</td>
			<td>{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%</td>
			<td class="uk-text-center">
				<progress id="progressbar" class="uk-progress" value="10" max="{ADMIN_HOME_PERCENTBAR}"></progress>
			</td>
		</tr>
<!-- END: ROW_YEAR -->
	</table>
    </div>
	<div class="uk-overflow-auto">
	<table class="uk-table uk-table-small">
    <thead>
        <tr>
            <th class="uk-width-1-6">{PHP.hits_bymonth}</th>
            <th class="uk-width-1-5"></th>
            <th class="uk-width-1-5"></th>
            <th class="uk-width-1-2">{PHP.L.Progress_bar_title}</th>
        </tr>
    </thead>
<!-- BEGIN: ROW_MONTH -->
		<tr>
			<td><a href="{ADMIN_HITS_ROW_MONTH_URL}">{ADMIN_HITS_ROW_MONTH}</a></td>
			<td class="uk-text-center">{PHP.L.Hits}: {ADMIN_HITS_ROW_MONTH_HITS}</td>
			<td class="uk-text-center">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%</td>
			<td class="uk-text-center">
				<progress id="progressbar" class="uk-progress" value="10" max="{ADMIN_HOME_PERCENTBAR}"></progress>
			</td>
		</tr>
<!-- END: ROW_MONTH -->
	</table>
    </div>
	<div class="uk-overflow-auto">
	<table class="uk-table uk-table-small">
    <thead>
        <tr>
            <th class="uk-width-1-6">{PHP.hits_byweek}</th>
            <th class="uk-width-1-5"></th>
            <th class="uk-width-1-5"></th>
            <th class="uk-width-1-2">{PHP.L.Progress_bar_title}</th>
        </tr>
    </thead>
<!-- BEGIN: ROW_WEEK -->
		<tr>
			<td>{ADMIN_HITS_ROW_WEEK}</td>
			<td class="uk-text-center">{PHP.L.Hits}: {ADMIN_HITS_ROW_WEEK_HITS}</td>
			<td class="uk-text-center">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%</td>
			<td class="uk-text-center">
				<progress id="progressbar" class="uk-progress" value="10" max="{ADMIN_HOME_PERCENTBAR}"></progress>
			</td>
		</tr>
<!-- END: ROW_WEEK -->
	</table>
    </div>
<!-- END: DEFAULT -->
    <script>
        jQuery(function () {
    
            var animate = setInterval(function () {
    
                window.progressbar && (progressbar.value += 5);
    
                if (!window.progressbar || progressbar.value >= progressbar.max) {
                    clearInterval(animate);
                }
    
            }, 500);
    
        });
    
    </script>
	</div>
<!-- END: MAIN -->