<!-- BEGIN: MAIN -->

	<div class="row">
		<!-- BEGIN: TOP_ROW -->
		<div class="col-lg-3 col-sm-6">
			<div class="media">
					<a href="{TOP_ROW_DETAILSLINK}">{TOP_ROW_AVATAR}</a>
				<div class="media-body text-right">
					<div class="media-heading">
						<a href="{TOP_ROW_DETAILSLINK}">{TOP_ROW_FULL_NAME}</a>
					</div>
					<p>
						<!-- IF {TOP_ROW_ISPRO} -->
						<span class="badge badge-pill badge-danger pro">PRO</span>
						<!-- ENDIF -->
						<span class="badge badge-pill badge-warning points">{TOP_ROW_USERPOINTS}</span>
					</p>
					<!-- IF {SBR_COUNTERS.done} -->
					<p class="zakaz">
					</p>
					<!-- END: IF -->
				</div>
			</div>
		</div>
		<!-- END: TOP_ROW -->
	</div>


<!-- END: MAIN -->
