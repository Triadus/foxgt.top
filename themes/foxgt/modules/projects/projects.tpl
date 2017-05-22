<!-- BEGIN: MAIN -->

<div class="container">

	<div class="card projects">
		<div class="card-header card-warning">
			<div class="row">
				<div class="col-lg-6">
					<h4 class="m-t-2">
						{PRJ_SHORTTITLE}
					</h4>
					<!-- IF {PRJ_REALIZED} -->
					<div class="label label-info">{PHP.L.projects_isrealized}</div>
					<!-- ENDIF -->
				</div>

				<div class="col-lg-6 text-right">
					<!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_FORPRO} -->
					<span class="badge badge-pill badge-danger">{PHP.L.paypro_forpro}</span>
					<!-- ENDIF -->
					<!-- IF {PRJ_COST} > 0 -->
					<span>{PRJ_COST} {PHP.cfg.payments.valuta}</span>
					<!-- ENDIF -->
				</div>
			</div>
		</div>

		<div class="card-block">
			<div class="row">
				<div class="col-lg-6">
					<div class="media mb-3">
						{PRJ_OWNER_AVATAR}
						<div class="media-body ml-2">
							<p class="zakaz "><span class="name-user">{PRJ_OWNER_NAME}</span> {PRJ_OWNER_FULL_NAME}</p>
							<!-- IF {PRJ_STATE} == 2 -->
							<div class="alert alert-warning">{PHP.L.projects_forreview}</div>
							<!-- ENDIF -->
							<!-- IF {PRJ_STATE} == 1 -->
							<div class="alert alert-warning">{PHP.L.projects_hidden}</div>
							<!-- ENDIF -->

							<!-- IF {PRJ_OWNER_ISPRO} -->
							<span class="badge badge-pill badge-danger pro">PRO</span>
							<!-- ENDIF -->
							<span class="badge badge-pill badge-warning points">{PRJ_OWNER_USERPOINTS}</span>
						</div>
					</div>
				</div>
				<div class="col-lg-6 text-right">
					<p class="zakaz"><span class="text-muted">{PRJ_CATTITLE}</span> | <span class="text-muted"><!-- IF {PRJ_COUNTRY} OR {PRJ_REGION} OR {PRJ_CITY} --> {PRJ_COUNTRY} {PRJ_REGION} {PRJ_CITY}<!-- ENDIF --></span></p>
				</div>
			</div>

			<p class="card-block project-text bg-faded">{PRJ_TEXT}</p>

			<div class="card card-block">
				<!-- IF {PHP.cot_plugins_active.mavatars} -->
					<!-- IF {PRJ_MAVATARCOUNT} -->
						<div class="clearfix"></div>
						<b>{PHP.L.Files}:</b>
						<ol class="files p-l-2">
							<!-- FOR {KEY}, {VALUE} IN {PRJ_MAVATAR} -->
							<li><a href="{VALUE.FILE}">{VALUE.FILENAME}.{VALUE.FILEEXT}</a></li>
							<!-- ENDFOR -->
						</ol>
					<!-- ENDIF -->
				<!-- ENDIF -->
			</div>

			<!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.projects} -->
			<p class="small">{PHP.L.Tags}:
				<!-- BEGIN: PRJ_TAGS_ROW --><!-- IF {PHP.tag_i} > 0 -->, <!-- ENDIF --><a href="{PRJ_TAGS_ROW_URL}" title="{PRJ_TAGS_ROW_TAG}" rel="nofollow">{PRJ_TAGS_ROW_TAG}</a><!-- END: PRJ_TAGS_ROW -->
				<!-- BEGIN: PRJ_NO_TAGS -->{PRJ_NO_TAGS}<!-- END: PRJ_NO_TAGS -->
			</p>
			<!-- ENDIF -->
		</div>

		<div class="card-footer small">
			<div class="pull-xs-left">{PRJ_DATE_STAMP|cot_date('j F Y, H:i', $this)}</div>
			<!-- IF {PRJ_USER_IS_ADMIN} -->
				<div class="pull-xs-right">
				{PRJ_ADMIN_EDIT} &nbsp;
				<!-- IF {PRJ_STATE} != 2 -->
					<a href="{PRJ_HIDEPROJECT_URL}">{PRJ_HIDEPROJECT_TITLE}</a>	&nbsp;
					<!-- IF {PRJ_PERFORMER} -->
					<a href="{PRJ_REALIZEDPROJECT_URL}">{PRJ_REALIZEDPROJECT_TITLE}</a>
					<!-- ENDIF -->
				<!-- ENDIF -->
				</div>
			<!-- ENDIF -->
			<div class="clearfix"></div>
		</div>
	</div>

	{OFFERS}

</div>
<!-- END: MAIN -->
