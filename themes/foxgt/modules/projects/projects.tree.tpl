<!-- BEGIN: MAIN -->

<ul<!-- IF {LEVEL} == 0 --> class="nav nav-pills"<!-- ENDIF -->>

	<!-- IF {LEVEL} == 0 -->
	<li class="nav-item">
		<a class="nav-link active" href="{HREF}">{PHP.L.All}</a>
	</li>
	<!-- ENDIF -->

	<!-- BEGIN: CATS -->
	<li <!-- IF {ROW_SELECTED} --> class="nav-item"<!-- ENDIF -->>
		<a class="nav-link" href="{ROW_HREF}">{ROW_TITLE} ({ROW_COUNT})</a>
		<!-- IF {ROW_SUBCAT} -->
		{ROW_SUBCAT}
		<!-- ENDIF -->
	</li>
	<!-- END: CATS -->
</ul>

<!-- END: MAIN -->
