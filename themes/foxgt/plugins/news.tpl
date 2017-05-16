<!-- BEGIN: NEWS -->

<!-- BEGIN: PAGE_ROW -->
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>
						<a href="{PAGE_ROW_URL}" title="{PAGE_ROW_SHORTTITLE}">{PAGE_ROW_SHORTTITLE}</a>
					</h4>
					<!-- IF {PAGE_ROW_DESC} -->
					<p class="small text-muted">{PAGE_ROW_DESC}</p>
					<!-- ENDIF -->
				</div>
				<div class="panel-body">
						<p class="small date">
							{PAGE_ROW_DATE} | {PAGE_ROW_CATPATH} {PAGE_ROW_COMMENTS}
						</p>
						<p>
							{PAGE_ROW_TEXT|cot_string_truncate($this, 200)}
						</p>
				</div>
			</div>
		</div>

<!-- END: PAGE_ROW -->

<div class="pagination">
	<ul>
		{PAGE_PAGEPREV}{PAGE_PAGENAV}{PAGE_PAGENEXT}
	</ul>
</div>

<!-- END: NEWS -->
