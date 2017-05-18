<!-- BEGIN: MAIN -->

<div class="news-wrapp">

<div class="container">
	<div class="breadcrumb">{LIST_CATPATH}</div>
	<h2>{LIST_CATTITLE}</h2>
		<!-- BEGIN: LIST_ROWCAT -->

			<div class="card-header card-warning">
				<h4><a href="{LIST_ROWCAT_URL}" title="{LIST_ROWCAT_TITLE}">{LIST_ROWCAT_TITLE}</a> ({LIST_ROWCAT_COUNT})</h4>
				<!-- IF {LIST_ROWCAT_DESC} -->
				<p class="small">{LIST_ROWCAT_DESC}</p>
				<!-- ENDIF -->
			</div>

		<!-- END: LIST_ROWCAT -->


	<!-- BEGIN: LIST_ROW -->
	<div class="card">
		<div class="card-header card-warning">
			<h4><a href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a></h4>
			<!-- IF {LIST_ROW_DESC} --><p class="small">{LIST_ROW_DESC}</p><!-- ENDIF -->
		</div>
		<div class="card-block">
			<p class="small date">
				{LIST_ROW_COMMENTS} {LIST_ROW_DATE} {LIST_ROW_CATPATH}
			</p>
			<!-- IF {PHP.usr.isadmin} --><p class="small text">{LIST_ROW_ADMIN} ({LIST_ROW_COUNT})</p><!-- ENDIF -->
			<p>
				{LIST_ROW_TEXT_CUT}
				<!-- IF {LIST_ROW_TEXT_IS_CUT} -->{LIST_ROW_MORE}<!-- ENDIF -->
			</p>
		</div>
	</div>
	<!-- END: LIST_ROW -->

			<!-- IF {LIST_TOP_PAGINATION} -->
			<div class="pagination">
				<ul>
					{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}
				</ul>
			</div>
			<!-- ENDIF -->

		<div class="span3">
			<!-- IF {PHP.usr.auth_write} -->
			<div class="block">
				<div class="mboxHD admin">{PHP.L.Admin}</div>
				<ul class="nav nav-tabs nav-stacked">
					<!-- IF {PHP.usr.isadmin} -->
					<li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
					<!-- ENDIF -->
					<li>{LIST_SUBMITNEWPAGE}</li>
				</ul>
			</div>
			<!-- ENDIF -->
			<!-- IF {PHP.cot_plugins_active.tags} -->
			<div class="block">
				<div class="mboxHD tags">{PHP.L.Tags}</div>
				{LIST_TAG_CLOUD}
			</div>
			<!-- ENDIF -->
		</div>
</div>

<!-- END: MAIN -->
