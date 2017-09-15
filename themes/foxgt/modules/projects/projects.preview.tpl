<!-- BEGIN: MAIN -->

<div class="container">

		<div class="breadcrumb">{PRJ_TITLE}</div>
		<h2>{PRJ_SHORTTITLE}</h2>
		<!-- IF {PRJ_STATE} == 2 -->
		<div class="alert alert-warning">{PHP.L.projects_forreview}</div>
		<!-- ENDIF -->

		<div class="card mb-3">
			<div class="card-header card-default">
				<a href="{USERS_ROW_DETAILSLINK}">{PRJ_OWNER_NAME}</a>
				<span class="badge badge-pill badge-warning points ml-1"> {PRJ_OWNER_USERPOINTS}</span>
				<!-- IF {USERS_ROW_ISPRO} -->
				<span class="badge badge-pill badge-danger pro ml-1">PRO</span>
				<!-- ENDIF -->
			</div>
			<div class="card-block avtors-wrapp">
				<div class="media">
					<a href="{USERS_ROW_DETAILSLINK}">{PRJ_OWNER_AVATAR}</a>
				</div>
				<div class="media-body">
					<p>{PRJ_OWNER_FULL_NAME}</p>
				</div>
			</div>
		</div>

		<ul class="list-group">
			<li class="list-group-item">
				{PRJ_TEXT}
			</li>
			<li class="list-group-item">
					<div class="col-md-6">
						{PRJ_TRANSLATELANG_1_TITLE}:
					</div>
					<div class="col-md-6">
						<span>{PRJ_TRANSLATELANG_1} <i class="fa fa-refresh" aria-hidden="true"></i> {PRJ_TRANSLATELANG_2}</span>
					</div>
			</li>
		</ul>

		<div class="row">
			<div class="span8">
				<!-- IF {PHP.cot_plugins_active.mavatars} -->
					<!-- IF {PRJ_MAVATARCOUNT} -->
						<div style="clear:both;"></div>
						<h5>{PHP.L.Files}:</h5>
						<ol class="files">
							<!-- FOR {KEY}, {VALUE} IN {PRJ_MAVATAR} -->
							<li><a href="{VALUE.FILE}">{VALUE.FILENAME}.{VALUE.FILEEXT}</a></li>
							<!-- ENDFOR -->
						</ol>
					<!-- ENDIF -->
				<!-- ENDIF -->
			</div>
			<div class="span4">
				<!-- IF {PRJ_COST} > 0 --><p>{PHP.L.offers_budget}: {PRJ_COST} {PHP.cfg.payments.valuta}</p><!-- ENDIF -->
				<p class="cat">{PHP.L.Category} : <a href="{PRJ_CAT|cot_url('projects', 'c='$this)}">{PRJ_CATTITLE}</a></p>
				<p class="small region">{PRJ_COUNTRY} {PRJ_REGION} {PRJ_CITY}</p>
				<p class="date">{PHP.L.Date}: {PRJ_DATE}</p>
			</div>
		</div>
		<a href="{PRJ_SAVE_URL}" class="btn btn-warning"><span>{PHP.L.Publish}</span></a>
		<a href="{PRJ_EDIT_URL}" class="btn btn-secondary"><span>{PHP.L.Edit}</span></a>

</div>
<!-- END: MAIN -->
