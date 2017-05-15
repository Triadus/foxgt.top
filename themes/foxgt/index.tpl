<!-- BEGIN: MAIN -->

		<div class="slider">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Биржа копирайтинга</h1>
					</div>
					<div class="row">
						<div class="col-md-3">
							<p>Копирайтинг</p>
						</div>
						<div class="col-md-3">
							<p>Рерайтинг</p>
						</div>
						<div class="col-md-3">
							<p>SEO копирайтинг</p>
						</div>
						<div class="col-md-3">
							<p>Перевод</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="count">
			<div class="container">
				<div class="row">
					{INDEX_COUNTER_TAG}
				</div>
			</div>
		</div>

<!-- Место для рекламмы PAYTOP -->

<!-- IF {PHP.cot_plugins_active.paytop} -->
<!-- {PHP|cot_get_paytop ('top')} -->
<!-- ENDIF -->

<!-- Каталог проектов -->

<!-- {PROJECTS_CATALOG} -->

<!-- ПОИСК ПРОЕКТОВ -->

<!-- {PROJECTS_SEARCH} -->

<!-- ОГРАНИЧЕНИЯ ПО ПРОЕКТУ -->
	<!-- IF {PHP.cot_plugins_active.paypro} -->
		<!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.projectslimit} > 0 AND {PHP.cfg.plugin.paypro.projectslimit} <= {PHP.usr.id|cot_getcountprjofuser($this)} -->
		<div class="alert alert-warning">{PHP.L.paypro_warning_projectslimit_empty}</div>
		<!-- ENDIF -->
		<!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.offerslimit} > 0 AND {PHP.cfg.plugin.paypro.offerslimit} <= {PHP.usr.id|cot_getcountoffersofuser($this)} -->
		<div class="alert alert-warning">{PHP.L.paypro_warning_offerslimit_empty}</div>
		<!-- ENDIF -->
	<!-- ENDIF -->

<!-- ПРОЕКТЫ -->

<div class="projects">
	<div class="container">
		<h2 class="text-center">{PHP.L.projects_lastprojects}</h2>
		<div class="row">
			<div class="col-lg-12">
				{PROJECTS}
			</div>
		</div>
	</div>
</div>


<div class="row">
	<div class="span3">

		<!-- IF {PHP.cot_plugins_active.userpoints} -->
		<h4 class="mboxHD">{PHP.L.userpoints_topfreelancers}</h4>
		{PHP|cot_get_topusers (4, 5)}
		<br/>
		<br/>
		<h4 class="mboxHD">{PHP.L.userpoints_topemployers}</h4>
		{PHP|cot_get_topusers (7, 5)}
		<!-- ENDIF -->

		<!-- IF {INDEX_NEWS} -->
		<br/>
		<br/>
		<div class="block">
			{INDEX_NEWS}
		</div>
		<!-- ENDIF -->
	</div>

</div>

<!-- END: MAIN -->
