<!-- BEGIN: MAIN -->

<div class="container">
	<div class="breadcrumb">{BREADCRUMBS}</div>
	<div class="row">
		<div class="col-lg-8">
			<h2>
			<!-- IF {PHP.c} -->
				{CATTITLE}
			<!-- ELSE -->
				{PHP.L.market}
			<!-- ENDIF -->
			<!-- IF {CATDESC} -->
				<div class="text-muted">{CATDESC}</div>
			<!-- ENDIF -->
			</h2>
		</div>
		<div class="col-lg-4 text-right">
		<!-- IF {PHP.usr.auth_write} -->
			<a class="btn btn-warning" rel="nofollow" href="{PHP|cot_url('market', 'm=add')}">{PHP.L.market_add_product}</a>
		<!-- ENDIF -->
		</div>
	</div>

	<div class="row justify-content-center register-wrapp">
		<form class="form-inline" action="{SEARCH_ACTION_URL}" method="get">
			<input type="hidden" name="e" value="market" />
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

	<!-- IF {CATALOG} -->
	<div>{CATALOG}</div>
	<!-- ENDIF -->

	<div class="tags-wrapp">
		<div class="row">
			<!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.market} -->
			<div class="col-lg-1">
				{PHP.L.Tags}:
			</div>
			<div class="col-lg-10">
				{PRD_TAG_CLOUD}
			</div>
			<!-- ENDIF -->
		</div>
	</div>

	<!-- BEGIN: PRD_ROWS -->
	<div class="card projects">
		<div class="card-header card-warning">
			<div class="row">
				<div class="col-lg-6">
					<h4>
						<a href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a>
					</h4>
				</div>
				<div class="col-lg-6 text-right">
					<!-- IF {PRD_ROW_COST} > 0 -->
					<span>{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
					<!-- ENDIF -->
				</div>
			</div>
		</div>

		<div class="card-block">
			<p class="zakaz"><a class="name-user" href="{PRD_ROW_OWNER_DETAILSLINK}">{PRD_ROW_OWNER_FULL_NAME}</a> | <span class="text-muted date">{PRD_ROW_DATE_STAMP|cot_date('j F Y, H:i', $this)}</span> | <a href="{PRD_ROW_CATURL}">{PRD_ROW_CATTITLE}</a> | <span class="text-muted region">{PRD_ROW_COUNTRY} {PRD_ROW_REGION} {PRD_ROW_CITY}</span>{PRD_ROW_EDIT_URL}</p>
			<div class="media">
				<!-- IF {PRD_ROW_MAVATAR.1} -->
					<a href="{PRD_ROW_URL}"><div class="thumbnail"><img src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 120, 120, crop)}" /></div></a>
				<!-- ENDIF -->
				<div class="media-body">
					<p class="text project-text">{PRD_ROW_SHORTTEXT|strip_tags($this)}</p>

				</div>
			</div>
			<!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.folio} -->
			<p class="small">{PHP.L.Tags}:

				<!-- BEGIN: PRD_ROW_TAGS_ROW -->
				<!-- IF {PHP.tag_i} > 0 -->,
				<!-- ENDIF -->
				<a href="{PRD_ROW_TAGS_ROW_URL}" title="{PRD_ROW_TAGS_ROW_TAG}" rel="nofollow">{PRD_ROW_TAGS_ROW_TAG}</a>
				<!-- END: PRD_ROW_TAGS_ROW -->

				<!-- BEGIN: PRD_ROW_NO_TAGS -->
				{PRD_ROW_NO_TAGS}
				<!-- END: PRD_ROW_NO_TAGS -->

			</p>
			<!-- ENDIF -->
		</div>
	</div>
	<!-- END: PRD_ROWS -->

		<!-- IF {PAGENAV_COUNT} > 0 -->
		<nav><ul class="pagination">{PAGENAV_PAGES}</ul></nav>
		<!-- ELSE -->
		<div class="text-muted text-center">{PHP.L.market_notfound}</div>
		<!-- ENDIF -->

</div>
<!-- END: MAIN -->
