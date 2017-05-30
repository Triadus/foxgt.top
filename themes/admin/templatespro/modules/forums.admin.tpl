<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">{PHP.L.Forums}</h2>
<hr class="uk-divider-icon">

<div class="uk-button-group">
	<a title="{PHP.L.Configuration}" href="{ADMIN_FORUMS_URL_CONFIG}" class="uk-button uk-button-default">{PHP.L.Configuration}</a>
	<a href="{ADMIN_FORUMS_URL_STRUCTURE}" class="uk-button uk-button-default">{PHP.L.Categories}</a>
</div>

<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
 <h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.Statistics}</h4>
	<table class="uk-table uk-table-small">
		<tr>
			<td>{PHP.L.forums_topics}:</td>
			<td class="uk-text-center">{ADMIN_FORUMS_TOTALTOPICS}</td>
		</tr>
		<tr>
			<td>{PHP.L.forums_posts}:</td>
			<td class="uk-text-center">{ADMIN_FORUMS_TOTALPOSTS}</td>
		</tr>
		<tr>
			<td>{PHP.L.Views}:</td>
			<td class="uk-text-center">{ADMIN_FORUMS_TOTALVIEWS}</td>
		</tr>
	</table>
</div>

<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
	 <h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.home_newtopics}</h4>
	<table class="uk-table uk-table-small">
<!-- BEGIN: ADMIN_FORUMS_ROW_USER -->
		<tr>
			<td class="uk-text-center">{ADMIN_FORUMS_ROW_II}.</td>
			<td class="width85">{ADMIN_FORUMS_ROW_FORUMS} {PHP.cfg.separator} <a href="{ADMIN_FORUMS_ROW_URL}">{ADMIN_FORUMS_ROW_TITLE}</a></td>
			<td class="uk-text-center">{ADMIN_FORUMS_ROW_POSTCOUNT}</td>
		</tr>
<!-- END: ADMIN_FORUMS_ROW_USER -->
	</table>
</div>
<!-- END: MAIN -->