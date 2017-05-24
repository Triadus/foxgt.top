<!-- BEGIN: MAIN -->

<div class="container">
	<div class="breadcrumb">
		<a href="{USERS_DETAILS_USERSELECTED_GROUP_URL}">{USERS_DETAILS_USERSELECTED_GROUP_NAME}</a>
	 / {USERS_DETAILS_NICKNAME}
	</div>

	<div class="card">
		<div class="card-header">
			<div class="media avtors-wrapp">
				{USERS_DETAILS_AVATAR}
				<div class="media-body ml-2">
					<div class="row">
						<div class="col-lg-2">
							<!-- IF {USERS_DETAILS_ISPRO} -->
							<span class="badge badge-pill badge-danger pro">PRO</span>
							<!-- ENDIF -->
							<span class="badge badge-pill badge-warning points">{USERS_DETAILS_USERPOINTS}</span>
						</div>
						<div class="col-lg-10 text-right">
							<!-- IF {PHP.cot_plugins_active.paypro} && {PHP.usr.id} > 0 AND {PHP.usr.id} != {USERS_DETAILS_ID} -->
							<a class="btn btn-warning" href="<!-- IF {PHP.usr.isadmin} -->{USERS_DETAILS_ID|cot_url('admin', 'm=other&p=paypro&id='$this)}<!-- ELSE -->{USERS_DETAILS_ID|cot_url('paypro', 'id='$this)}<!-- ENDIF -->">{PHP.L.paypro_giftpro}</a>
							<!-- ENDIF -->
							<!-- BEGIN: USERS_DETAILS_ADMIN -->
							<span class="btn btn-warning">{USERS_DETAILS_ADMIN_EDIT}</span>
							<!-- END: USERS_DETAILS_ADMIN -->
						</div>
					</div>

					<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
					<a href="{PHP|cot_url('users', 'm=profile')}" class="btn btn-warning">{PHP.L.Edit}</a>
					<!-- ENDIF -->
				</div>
			</div>
		</div>
		<div class="card-block">
			<div class="tabbable">
				<ul class="nav nav-tabs">
					<li<!-- IF !{PHP.tab} --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_DETAILSLINK}#tab_info" data-toggle="tab">{PHP.L.Main}</a></li>
					<!-- IF {PHP.cot_modules.folio} -->
					<li<!-- IF {PHP.tab} == 'portfolio' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_FOLIO_URL}#tab_portfolio" data-toggle="tab">{PHP.L.folio} {USERS_DETAILS_FOLIO_COUNT}</a></li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_modules.market} -->
					<li<!-- IF {PHP.tab} == 'market' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_MARKET_URL}#tab_market" data-toggle="tab">{PHP.L.market} {USERS_DETAILS_MARKET_COUNT}</a></li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_modules.projects} -->
					<li<!-- IF {PHP.tab} == 'projects' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_PROJECTS_URL}#tab_projects" data-toggle="tab">{PHP.L.projects_projects} {USERS_DETAILS_PROJECTS_COUNT}</a></li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_plugins_active.reviews} -->
					<li<!-- IF {PHP.tab} == 'reviews' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_REVIEWS_URL}#tab_reviews" data-toggle="tab">{PHP.L.reviews_reviews} {USERS_DETAILS_REVIEWS_COUNT}</a></li>
					<!-- ENDIF -->
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane<!-- IF !{PHP.tab} --> active<!-- ENDIF -->" id="tab_info">

					<table class="table">
		<!-- IF {PHP.cot_modules.pm} -->
						<tr>
							<td>{PHP.L.users_sendpm}:</td>
							<td>{USERS_DETAILS_PM}</td>
						</tr>
		<!-- ENDIF -->
						<tr>
							<td width="220">{PHP.L.Country}:</td>
							<td>{USERS_DETAILS_COUNTRYFLAG} {USERS_DETAILS_COUNTRY}</td>
						</tr>
						<tr>
							<td width="170">{PHP.L.Location}:</td>
							<td>{USERS_DETAILS_REGION} {USERS_DETAILS_CITY}</td>
						</tr>
						<tr>
							<td>{PHP.L.Timezone}:</td>
							<td>{USERS_DETAILS_TIMEZONE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Birthdate}:</td>
							<td>{USERS_DETAILS_BIRTHDATE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Age}:</td>
							<td>{USERS_DETAILS_AGE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Gender}:</td>
							<td>{USERS_DETAILS_GENDER}</td>
						</tr>
						<tr>
							<td>{PHP.L.Registered}:</td>
							<td>{USERS_DETAILS_REGDATE}</td>
						</tr>
					</table>

				</div>
				<div class="tab-pane<!-- IF {PHP.tab} == 'portfolio' --> active<!-- ENDIF -->" id="tab_portfolio">
					{PORTFOLIO}
				</div>
				<div class="tab-pane<!-- IF {PHP.tab} == 'market' --> active<!-- ENDIF -->" id="tab_market">
					{MARKET}
				</div>
				<div class="tab-pane<!-- IF {PHP.tab} == 'projects' --> active<!-- ENDIF -->" id="tab_projects">
					{PROJECTS}
				</div>
				<div class="tab-pane<!-- IF {PHP.tab} == 'reviews' --> active<!-- ENDIF -->" id="tab_reviews">
					{REVIEWS}
				</div>
			</div>
		</div>



	</div>
</div>

<!-- END: MAIN -->
