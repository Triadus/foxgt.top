<!-- BEGIN: MAIN -->

<div class="container">
	<div class="breadcrumb">{BREADCRUMBS}</div>
	<div class="row">
		<div class="col-lg-8">
			<h2>
			<!-- IF {PHP.c} -->
				{CATTITLE}
			<!-- ELSE -->
				{PHP.L.projects}
			<!-- ENDIF -->
			<!-- IF {CATDESC} -->
				<div class="text-muted">{CATDESC}</div>
			<!-- ENDIF -->
			</h2>

		</div>
		<div class="col-lg-4 text-right">
		<!-- IF {PHP.usr.auth_write} -->
			<a class="btn btn-warning" rel="nofollow" href="{SUBMITNEWPROJECT_URL}" title="{PHP.L.projects_add_to_catalog}">{PHP.L.projects_add_to_catalog}</a>
		<!-- ENDIF -->
		</div>
	</div>

	<div class="row justify-content-center register-wrapp">
		<form class="form-inline" action="{SEARCH_ACTION_URL}" method="get">
			<input type="hidden" name="e" value="projects" />
			<input type="hidden" name="type" value="{PHP.type}" />
			<input type="hidden" name="l" value="{PHP.lang}" />
			<div class="form-group mr-2">
				<label class="mr-3">
					{PHP.L.SearchName}:
				</label>
				<div class="mr-3">
					{SEARCH_SQ}
				</div>
			</div>

			<div class="form-group mr-2">
				<label class="mr-3">
					{PHP.L.Category}:
				</label>
				<div class="mr-3">
					{SEARCH_CAT}
				</div>
			</div>

			<div class="form-group mr-2">
				<label class="mr-3">
					{PHP.L.Order}:
				</label>
				<div class="mr-3">
					{SEARCH_SORTER}
				</div>
			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-warning">{PHP.L.Search}</button>
			</div>

		</form>
	</div>

	<div class="row">
		<div class="col-lg-9">
			<!-- IF {CATALOG} -->
			<div>{CATALOG}</div>
			<!-- ENDIF -->
		</div>

		<div class="col-lg-3 text-right">
			<!-- BEGIN: PTYPES -->
				<ul class="nav nav-pills m-b-2">
					<li class="nav-item"><a class="nav-link<!-- IF {PTYPE_ALL_ACT} AND !{PHP.forpro} --> active<!-- ENDIF -->" href="{PTYPE_ALL_URL}">{PHP.L.All}</a></li>
					<!-- BEGIN: PTYPES_ROWS -->
					<li class="nav-item"><a class="nav-link<!-- IF {PTYPE_ROW_ACT} --> active<!-- ENDIF -->" href="{PTYPE_ROW_URL}">{PTYPE_ROW_TITLE}</a></li>
					<!-- END: PTYPES_ROWS -->
					<!-- IF {PHP.cot_plugins_active.paypro} -->
					<li class="nav-item"><a class="nav-link<!-- IF {PHP.forpro} --> active<!-- ENDIF -->" href="{FORPRO_URL}">{PHP.L.paypro_forpro}</a></li>
					<!-- ENDIF -->
				</ul>
			<!-- END: PTYPES -->
		</div>
	<!-- IF {PHP.cot_plugins_active.paypro} -->
		<!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.projectslimit} > 0 AND {PHP.cfg.plugin.paypro.projectslimit} <= {PHP.usr.id|cot_getcountprjofuser($this)} -->
		<div class="alert alert-warning">{PHP.L.paypro_warning_projectslimit_empty}</div>
		<!-- ENDIF -->
		<!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.offerslimit} > 0 AND {PHP.cfg.plugin.paypro.offerslimit} <= {PHP.usr.id|cot_getcountoffersofuser($this)} -->
		<div class="alert alert-warning">{PHP.L.paypro_warning_offerslimit_empty}</div>
		<!-- ENDIF -->
	<!-- ENDIF -->
	</div>

	<div class="tags-wrapp">
		<div class="row">
			<!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.projects} -->
			<div class="col-lg-1">
				{PHP.L.Tags}:
			</div>
			<div class="col-lg-10">
				{PRJ_TAG_CLOUD}
			</div>
			<!-- ENDIF -->
		</div>
	</div>

<!-- BEGIN: PRJ_ROWS -->
		<div class="card projects<!-- IF {PRJ_ROW_ISBOLD} --> <!-- ENDIF --><!-- IF {PRJ_ROW_ISTOP} --> <!-- ENDIF -->">
			<div class="card-header card-warning">
				<div class="row">
					<div class="col-lg-6">
						<h4>
							<a href="{PRJ_ROW_URL}">{PRJ_ROW_SHORTTITLE}</a>
						</h4>
					</div>
					<div class="col-lg-6 text-right">
						<!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_ROW_FORPRO} -->
						<span class="badge badge-pill badge-danger">{PHP.L.paypro_forpro}</span>
						<!-- ENDIF -->
						<!-- IF {PRJ_ROW_COST} > 0 -->
						<span>{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span>
						<!-- ENDIF -->
					</div>
				</div>
			</div>
			<div class="card-block">
				<p class="zakaz"><span class="name-user">{PRJ_ROW_OWNER_NAME}</span> | <span class="text-muted date">{PRJ_ROW_DATE_STAMP|cot_date('j F Y', $this)}</span> | <span class="text-muted region">{PRJ_ROW_COUNTRY} {PRJ_ROW_REGION} {PRJ_ROW_CITY}</span>{PRJ_ROW_EDIT_URL}</p>
				<p class="text project-text">{PRJ_ROW_SHORTTEXT}</p>

				<!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.projects} -->
				<p class="small">{PHP.L.Tags}:
					<!-- BEGIN: PRJ_ROW_TAGS_ROW --><!-- IF {PHP.tag_i} > 0 -->, <!-- ENDIF -->
					<a href="{PRJ_ROW_TAGS_ROW_URL}" title="{PRJ_ROW_TAGS_ROW_TAG}" rel="nofollow">{PRJ_ROW_TAGS_ROW_TAG}</a><!-- END: PRJ_ROW_TAGS_ROW -->
					<!-- BEGIN: PRJ_ROW_NO_TAGS -->{PRJ_ROW_NO_TAGS}<!-- END: PRJ_ROW_NO_TAGS -->
				</p>
				<!-- ENDIF -->

				<div class="pull-right offers"><a class="btn btn-secondary" href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">{PHP.L.offers_add_offer} ({PRJ_ROW_OFFERS_COUNT})</a></div>
				<div class="type">
					<!-- IF {PRJ_ROW_TYPE} -->{PRJ_ROW_TYPE} / <!-- ENDIF -->
					<a href="{PRJ_ROW_CATURL}">{PRJ_ROW_CATTITLE}</a>
				</div>
			</div>
		</div>
<!-- END: PRJ_ROWS -->


	<!-- IF {PAGENAV_COUNT} > 0 -->
	<div class="pagination"><ul>{PAGENAV_PAGES}</ul></div>
	<!-- ELSE -->
	<div class="alert">{PHP.L.projects_notfound}</div>
	<!-- ENDIF -->

</div>
<!-- END: MAIN -->
