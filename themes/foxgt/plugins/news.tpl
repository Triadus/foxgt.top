<!-- BEGIN: NEWS -->

<!-- BEGIN: PAGE_ROW -->
		<div class="row">

		</div>
	<h4><a href="{PAGE_ROW_URL}" title="{PAGE_ROW_SHORTTITLE}">{PAGE_ROW_SHORTTITLE}</a></h4>
	<!-- IF {PAGE_ROW_DESC} --><p class="small">{PAGE_ROW_DESC}</p><!-- ENDIF -->
	<div class="clear">
		<p class="small">
			{PAGE_ROW_DATE} | {PAGE_ROW_CATPATH} {PAGE_ROW_COMMENTS}
		</p>
		<p>
			{PAGE_ROW_TEXT|cot_string_truncate($this, 200)}
		</p>
	</div>
<!-- END: PAGE_ROW -->

<div class="pagination">
	<ul>
		{PAGE_PAGEPREV}{PAGE_PAGENAV}{PAGE_PAGENEXT}
	</ul>
</div>

<!-- END: NEWS -->
