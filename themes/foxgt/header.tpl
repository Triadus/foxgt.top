<!-- BEGIN: HEADER -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>{HEADER_TITLE}</title>
<!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}" /><!-- ENDIF -->
<!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}" /><!-- ENDIF -->
<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
<meta name="generator" content="Cotonti http://www.cotonti.com" />
<link rel="canonical" href="{HEADER_CANONICAL_URL}" />
{HEADER_BASEHREF}
{HEADER_HEAD}
<link rel="shortcut icon" href="favicon.ico" />
<link rel="apple-touch-icon" href="apple-touch-icon.png" />
<link href="https://fonts.googleapis.com/css?family=Comfortaa:400,700|Exo+2|Roboto+Slab:400,700" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

</head>

<body>

<!--Всплывающее окно авторизации  -->

	<!-- IF {PHP.usr.id} == 0 -->
	<div id="AuthModal" class="modal fade">
		<div class="modal-header">
			<h3 id="myModalLabel">{PHP.L.Login}</h3>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" action="{HEADER_GUEST_SEND}" method="post">
					<div class="control-group">
						<label class="control-label" for="inputEmail">{PHP.L.users_nameormail}</label>
						<div class="controls">
							<input type="text" name="rusername" id="inputEmail" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword">{PHP.L.Password}</label>
						<div class="controls">
							<input type="password" name="rpassword" id="inputPassword" /><br/>
							<a rel="nofollow" class="link small" href="{PHP|cot_url('users','m=passrecover')}">{PHP.L.users_lostpass}</a>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<label class="checkbox">
							{HEADER_GUEST_COOKIETTL} {PHP.L.users_rememberme}
							</label><br/>
							<button type="submit" class="btn btn-primary btn-large">{PHP.L.Login}</button>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">{PHP.L.Close}</button>
		</div>
	</div>
	<!-- ENDIF -->

	<div class="support">
		<div class="container">
			<div class="row">
					<div class="col-lg-11 col-md-8 col-sm-8 col-xs-12 phone">
						Поддержка:
						<i class="fa fa-phone" aria-hidden="true"></i>
							+38 048 770 7468 |
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
							fox.gt.sales@gmail.com
					</div>

					<div class="col-lg-1 col-md-4 col-sm-4 hidden-xs translit">
						<!-- BEGIN: I18N_LANG -->
						<!-- BEGIN: I18N_LANG_ROW -->
						<a href="{I18N_LANG_ROW_URL}" class="{I18N_LANG_ROW_CLASS}"><img src="images/flags/{I18N_LANG_ROW_FLAG}.png"/></a>
						<!-- END: I18N_LANG_ROW -->
						<!-- END: I18N_LANG -->
					</div>
			</div>
		</div>
	</div>

<!-- ВНУТРЕННЕЕ МЕНЮ -->

	<nav class="navbar-inverse">
		<div class="container">

			<!-- BEGIN: USER -->

			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
				<a class="navbar-brand" href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">{PHP.usr.name}</a>
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
				<ul class="nav navbar-nav">

					<li><a href="{PHP|cot_url('users', 'm=profile')}">{PHP.L.Profile}</a></li>

					<!-- IF {PHP.cot_modules.payments} AND {PHP.cfg.payments.balance_enabled} -->
					<li><a href="{HEADER_USER_BALANCE_URL}">{PHP.L.payments_mybalance}: {HEADER_USER_BALANCE|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</a></li>
					<!-- ENDIF -->

					<!-- IF {PHP.cot_modules.projects} -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{PHP.L.projects_projects} <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">

							<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=projects')}">{PHP.L.projects_myprojects}</a></li>

							<!-- IF {PHP.cot_plugins_active.sbr} -->
							<li><a href="{PHP|cot_url('sbr')}">{PHP.L.sbr_mydeals}</a></li>
							<!-- ENDIF -->

							<!-- IF {PHP|cot_auth('projects', 'any', '1')} -->
							<li><a href="{PHP|cot_url('projects', 'm=useroffers')}">{PHP.L.offers_useroffers}</a></li>
							<!-- ENDIF -->

						</ul>
					</li>
					<!-- ENDIF -->

					<!-- IF {PHP.cot_modules.market} -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{PHP.L.market} <span class="caret"></span></a>
						<ul class="dropdown-menu">

							<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=market')}">{PHP.L.market_myproducts}</a></li>

							<!-- IF {PHP.cot_plugins_active.marketorders} -->
							<li><a href="{PHP|cot_url('marketorders', 'm=sales')}">{PHP.L.marketorders_mysales}</a></li>
							<li><a href="{PHP|cot_url('marketorders', 'm=purchases')}">{PHP.L.marketorders_mypurchases}</a></li>
							<!-- ENDIF -->

						</ul>
					</li>
					<!-- ENDIF -->

					<!-- IF {PHP.cot_plugins_active.paypro} -->
					<li>
						<!-- IF {HEADER_USER_PROEXPIRE} -->
						<a href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_extend}">{PHP.L.paypro_header_expire_short} {HEADER_USER_PROEXPIRE|cot_date('d.m.Y', $this)}</a>
						<!-- ELSE -->
						<a href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_buy}">{PHP.L.paypro_header_buy}</a>
						<!-- ENDIF -->
					</li>
					<!-- ENDIF -->

					<!-- IF {HEADER_USER_PMREMINDER} -->
					<li>{HEADER_USER_PMREMINDER}</li>
					<!-- ENDIF -->

					<!-- IF {HEADER_NOTICES} -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{PHP.L.header_notice} <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li>{HEADER_NOTICES}</li>
						</ul>
					</li>
					<!-- ENDIF -->

					<li class="logout">
						{HEADER_USER_ADMINPANEL}
					</li>
					<li class="logout">
						{HEADER_USER_LOGINOUT}
					</li>

				</ul>
			</div>

			<!-- END: USER -->

		</div>
	</nav>

<!-- Секция HEADER -->

		<div id="header" class="row">
			<div class="span4">
				<div class="logo"><a href="{PHP|cot_url('index')}" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}"><img src="themes/{PHP.theme}/img/logo.png"/></a></div>
			</div>
			<!-- BEGIN: GUEST -->
			<li><a href="{PHP|cot_url('login')}" data-toggle="modal" onclick="$('#AuthModal').modal(); return false;">{PHP.L.Login}</a></li>
			<li><a href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a></li>
			<!-- END: GUEST -->



		</div>

		<div class="navbar">
			<div class="navbar-inner">
				<ul class="nav">

					<li<!-- IF {PHP.env.ext} == 'index' --> class="active"<!-- ENDIF -->>
					<a href="{PHP|cot_url('index')}">{PHP.L.Home}</a>
					</li>

					<!-- IF {PHP.cot_modules.projects} -->
					<li<!-- IF {PHP.env.ext} == 'projects' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('projects')}">{PHP.L.projects_projects}</a></li>
					<!-- ENDIF -->
					<li<!-- IF {PHP.env.ext} == 'users' AND ({PHP.group} == {PHP.cot_groups.4.alias} AND {PHP.m} == 'main' --> class="active"<!-- ENDIF -->><a href="{PHP.cot_groups.4.alias|cot_url('users', 'group='$this)}">{PHP.cot_groups.4.name}</a></li>
					<li<!-- IF {PHP.env.ext} == 'users' AND ({PHP.group} == {PHP.cot_groups.7.alias} AND {PHP.m} == 'main' --> class="active"<!-- ENDIF -->><a href="{PHP.cot_groups.7.alias|cot_url('users', 'group='$this)}">{PHP.cot_groups.7.name}</a></li>
					<!-- IF {PHP.cot_modules.market} -->
					<li<!-- IF {PHP.env.ext} == 'market' AND !{PHP.type} --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('market')}">{PHP.L.market}</a></li>
					<!-- ENDIF -->
				</ul>
			</div>
		</div>

		<div class="content">

<!-- END: HEADER -->
