<!-- BEGIN: MAIN -->

<div class="container">
	<div class="breadcrumb">{USERS_TITLE}</div>
		<h2>
		<!-- IF {PHP.cat} -->
			{CATTITLE}
		<!-- ELSE -->
			{USERS_TITLE}
		<!-- ENDIF -->
	</h2>

	<div class="row justify-content-center">
		<div class="register-wrapp">
			<form class="form-inline" action="{SEARCH_ACTION_URL}" method="get">
				<input type="hidden" name="f" value="search" />
				<input type="hidden" name="e" value="users" />
				<input type="hidden" name="group" value="{PHP.group}" />
				<input type="hidden" name="cat" value="{PHP.cat}" />
				<input type="hidden" name="l" value="{PHP.lang}" />

				<div class="form-group mr-2">
					<label class="mr-3">{PHP.L.Search}:</label>
					<div class="mr-3">
						<input type="text" name="sq" value="{PHP.sq|htmlspecialchars($this)}"/>
					</div>
				</div>

				<div class="form-group mr-2">
					<label class="mr-3">{PHP.L.Category}:</label>
					<div class="mr-3">
						{SEARCH_CAT}
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-warning">{PHP.L.Search}</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div>{USERCATEGORIES_CATALOG}</div>

	<!-- BEGIN: USERS_ROW -->
	<div class="card">
		<div class="card-block">
			<div class="media">
				<a href="{USERS_ROW_DETAILSLINK}">{USERS_ROW_AVATAR}</a>
				<span class="label label-info">{USERS_ROW_NAME} {USERS_ROW_USERPOINTS}</span>
			</div>
			<div class="media-body">
				<div class="text-right">

				</div>
				<div class="media-heading"><a href="{USERS_ROW_DETAILSLINK}">{USERS_ROW_FULL_NAME}</a></div>
				<p class="text-muted">{USERS_ROW_COUNTRY} {USERS_ROW_REGION} {USERS_ROW_CITY}</p>
				<!-- IF {USERS_ROW_ISPRO} --><span class="label label-success">PRO</span><!-- ENDIF -->
			</div>
		</div>
	</div>
	<!-- END: USERS_ROW -->

	<!-- IF {USERS_TOP_TOTALUSERS} > 0 -->
	<div class="pagination"><ul>{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}</ul></div>
	<!-- ELSE -->
	<div class="alert">{PHP.L.Noitemsfound}</div>
	<!-- ENDIF -->
</div>


<!-- END: MAIN -->
