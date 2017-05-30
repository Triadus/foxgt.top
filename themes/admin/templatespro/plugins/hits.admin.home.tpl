<!-- BEGIN: MAIN -->
    <!-- BEGIN: STAT -->
	<div class="uk-overflow-auto">
		<table class="uk-table uk-table-small">
            <thead>
                <tr>
                    <th>{PHP.L.hits_hits}</th>
                    <th>{PHP.L.Progress_bar_title}</th>
                    <th>{PHP.L.Hits}</th>
                    <th>%</th>
                </tr>
            </thead>
            <!-- BEGIN: ADMIN_HOME_ROW -->
            <tbody>
			<tr>
				<td>{ADMIN_HOME_DAY}</td>
				<td>
                    <progress id="progressbar" class="uk-progress" value="10" max="{ADMIN_HOME_PERCENTBAR}"></progress>
				</td>
				<td>{ADMIN_HOME_HITS}</td>
				<td><span class="uk-label uk-label-success">{ADMIN_HOME_PERCENTBAR}%</span></td>
			</tr>
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
        </tbody>
        <!-- END: ADMIN_HOME_ROW -->
		</table>
		<p><a class="uk-button uk-button-default uk-button-small uk-margin-bottom" href="{ADMIN_HOME_MORE_HITS_URL}">{PHP.L.ReadMore}</a></p>
	</div>
    <!-- END: STAT -->

    <!-- BEGIN: ACTIVITY -->
	<div class="uk-overflow-auto">
		<table class="uk-table uk-table-small">
            <thead>
                <tr>
                    <th>{PHP.L.hits_activity}</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
			<tr>
				<t><a href="{ADMIN_HOME_NEWUSERS_URL}">{PHP.L.home_newusers}</a></td>
				<td class="textcenter width20">{ADMIN_HOME_NEWUSERS}</td>
			</tr>
			<tr>
				<td><a href="{ADMIN_HOME_NEWPAGES_URL}">{PHP.L.home_newpages}</a></td>
				<td>{ADMIN_HOME_NEWPAGES}</td>
			</tr>
            <!-- IF {PHP.cot_modules.forums} -->
			<tr>
				<td><a href="{ADMIN_HOME_NEWTOPICS_URL}">{PHP.L.home_newtopics}</a></td>
				<td>{ADMIN_HOME_NEWTOPICS}</td>
			</tr>
			<tr>
				<td><a href="{ADMIN_HOME_NEWPOSTS_URL}">{PHP.L.home_newposts}</a></td>
				<td>{ADMIN_HOME_NEWPOSTS}</td>
			</tr>
            <!-- ENDIF -->
            <!-- IF {PHP.cot_modules.pm} -->
			<tr>
				<td>{PHP.L.home_newpms}</td>
				<td>{ADMIN_HOME_NEWPMS}</td>
			</tr>
            <!-- ENDIF -->
            </tbody>
		</table>
	</div>
    <!-- END: ACTIVITY -->

<!-- END: MAIN -->