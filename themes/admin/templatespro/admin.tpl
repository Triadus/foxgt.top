<!-- BEGIN: MAIN -->
<div id="ajaxBlock">
<!-- BEGIN: BODY -->	
    <ul class="uk-breadcrumb uk-margin-top uk-margin-bottom">
        {ADMIN_TITLE|ul_transform($this)}
    </ul>
	<div id="main">
		{ADMIN_MAIN}
		<!-- IF {ADMIN_HELP} -->
		<div class="uk-alert-success uk-alert" uk-alert="">
        <a class="uk-alert-close uk-close uk-icon" href="#" uk-close=""></a>
			<p><strong>{PHP.L.Help}!</strong>{ADMIN_HELP}</p>
		</div>
		<!-- ENDIF -->
	</div>
<!-- END: BODY -->
</div>
<!-- END: MAIN -->