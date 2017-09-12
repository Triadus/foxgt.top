<!-- BEGIN: MAIN -->

<div class="container">
	<div class="breadcrumb">{PHP.L.payments_mybalance}</div>
	<h2>{PHP.L.payments_billing_title}:</h2>

	<div class="row">
		<!-- BEGIN: BILLINGS -->

			<!-- BEGIN: BILL_ROW -->

				<div class="payments">
					<div class="col-md-3">
						<a href="{BILL_ROW_URL}"><img src="{BILL_ROW_ICON}"/></a>
					</div>
				</div>

			<!-- END: BILL_ROW -->

		<!-- END: BILLINGS -->

		<!-- BEGIN: EMPTYBILLINGS -->
			<h4>{PHP.L.payments_billing_title}:</h4>
			<div class="alert alert-danger">{PHP.L.payments_emptybillings}</div>
		<!-- END: EMPTYBILLINGS -->
	</div>

</div>


<!-- END: MAIN -->
