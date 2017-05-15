<!-- BEGIN: MAIN -->

<!-- Пользователи -->

<div class="c-user">
	<div class="container">
		<div class="row">

			<div class="col-md-offset-1 col-md-2 col-sm-4 col-xs-6">
				<!-- IF {INDEX_COUNT_USR_ALL} -->
				<i class="fa fa-users" aria-hidden="true"></i>
				<div class="numeral">
					{INDEX_COUNT_USR_ALL}
				</div>
				<div class="c-user-text">
					{PHP.L.fr_users_title}
				</div>
				<!-- ENDIF -->
			</div>

<!-- Авторы -->

			<div class="col-md-2 col-sm-4 col-xs-6">
				<!-- IF {INDEX_COUNT_USR_4} -->
				<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
				<div class="numeral">
					{INDEX_COUNT_USR_4}
				</div>
				<div class="c-user-text">
					{PHP.L.fr_freelancers_title}
				</div>
				<!-- ENDIF -->
			</div>

<!-- Работодателей	 -->

			<div class="col-md-2 col-sm-4 col-xs-6">
				<!-- IF {INDEX_COUNT_USR_7} -->
				<i class="fa fa-handshake-o" aria-hidden="true"></i>
				<div class="numeral">
					{INDEX_COUNT_USR_7}
				</div>
				<div class="c-user-text">
					{PHP.L.fr_employers_title}
				</div>
				<!-- ENDIF -->
			</div>

<!-- Открытых проектов -->

			<div class="col-md-2 col-sm-4 col-xs-6">
				<!-- IF {INDEX_COUNT_PRJ_0} -->
				<i class="fa fa-folder-open-o" aria-hidden="true"></i>
				<div class="numeral">
					{INDEX_COUNT_PRJ_0}
				</div>
				<div class="c-user-text">
					{PHP.L.fr_projects_title}
				</div>
				<!-- ENDIF -->
			</div>

<!-- Проектов за последнее время -->

			<div class="col-md-2 col-sm-4 col-xs-6">
				<!-- IF !{INDEX_COUNT_PRJ_OPENFROM} == '' -->
				<i class="fa fa-clipboard" aria-hidden="true"></i>
				<div class="numeral">
					{INDEX_COUNT_PRJ_OPENFROM}
				</div>
				<div class="c-user-text">
					{PHP.L.fr_projects_from_title}
				</div>
				<!-- ENDIF -->
			</div>

<!-- Товаров -->


		</div>
	</div>
</div>

<!-- END: MAIN -->
