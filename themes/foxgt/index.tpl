<!-- BEGIN: MAIN -->

		<div class="slider">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h1>Биржа копирайтинга</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<p>Копирайтинг</p>
					</div>
					<div class="col-lg-3 col-md-6">
						<p>Рерайтинг</p>
					</div>
					<div class="col-lg-3 col-md-6">
						<p>SEO копирайтинг</p>
					</div>
					<div class="col-lg-3 col-md-6">
						<p>Перевод</p>
					</div>
				</div>
			</div>
		</div>

		<div class="count">
			{INDEX_COUNTER_TAG}
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

		<div class="projects projects-wrapp">
			<div class="container">
				<h2 class="text-center">{PHP.L.projects_lastprojects}</h2>
					{PROJECTS}
			</div>
		</div>

<!-- ТОП-АВТОРОВ -->

		<!-- IF {PHP.cot_plugins_active.userpoints} -->
	<div class="topusers">
		<div class="top-authors">
			<div class="container">
				<h2 class="text-center">
					{PHP.L.userpoints_topfreelancers}
				</h2>
				{PHP|cot_get_topusers (4, 5)}
			</div>
		</div>

		<div class="top-employers">
			<div class="container">
				<h2 class="text-center">
					{PHP.L.userpoints_topemployers}
				</h2>
				{PHP|cot_get_topusers (7, 5)}
			</div>
		</div>
	</div>
		<!-- ENDIF -->

		<!-- IF {INDEX_NEWS} -->
		<div class="news">
			<div class="container">
				<h2 class="text-center">{PHP.L.index_news}</h2>
				{INDEX_NEWS}
			</div>
		</div>
		<!-- ENDIF -->

<!-- END: MAIN -->
