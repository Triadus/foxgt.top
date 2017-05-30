<!-- BEGIN: MAIN -->
<h2 class="uk-heading-primary uk-text-center uk-text-uppercase">Карма</h2>
<hr class="uk-divider-icon">
<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
<table class="uk-table uk-table-small">
	<tr>
		<th class="uk-width-1-4@m">Дата</th>
		<th class="uk-width-1-2@m">Кому</th>
		<th class="uk-width-1-2@m">От</th>
		<th>Оценка</th>
		<th>Модуль</th>
		<th>Код</th>
		<th class="uk-text-center">Управление</th>
	</tr>
	<!-- BEGIN: UKARMA_ROW -->
	<tr>
		<td>{UKARMA_ROW_DATE|cot_date('d.m.Y H:i', $this)}</td>
		<td>{UKARMA_ROW_TOUSER_NAME}</td>
		<td>{UKARMA_ROW_FROMUSER_NAME}</td>
		<td><span class="uk-label<!-- IF {UKARMA_ROW_VALUE} == 1 --> uk-label-success<!-- ELSE --> uk-label-danger<!-- ENDIF -->">{UKARMA_ROW_VALUE}</span></td>
		<td>{UKARMA_ROW_AREA}</td>
		<td>{UKARMA_ROW_CODE}</td>
		<td class="uk-text-center"><a class="uk-text-danger" uk-icon="icon: trash" href="{UKARMA_ROW_DELETE_URL}" title="{PHP.L.Delete}" uk-tooltip></a></td>
	</tr>
	<!-- END: UKARMA_ROW -->
</table>
</div>

<ul class="uk-pagination uk-margin-top">{ADMIN_PAGE_PAGNAV}</ul>
<!-- END: MAIN -->