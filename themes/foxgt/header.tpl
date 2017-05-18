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


	<!-- IF {PHP.usr.id} == 0 -->
	<div id="AuthModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" >{PHP.L.Authorization}</h3>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form class="form-horizontal" action="{HEADER_GUEST_SEND}" method="post">
							<div class="form-group">
								<div class="row">
									<label for="inputEmail" class="col-lg-4 control-label">{PHP.L.users_nameormail}</label>
									<div class="col-lg-8">
										<input class="form-control" name="rusername" id="inputEmail" placeholder="Login or Email" type="text">
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<label for="inputPassword" class="col-lg-4 control-label">{PHP.L.Password}</label>
									<div class="col-lg-8">
										<input class="form-control" id="inputPassword" name="rpassword" placeholder="Password" type="password">
										<a rel="nofollow" class="link small" href="{PHP|cot_url('users','m=passrecover')}">{PHP.L.users_lostpass}</a>
									</div>
								</div>
							</div>

							<div class="form-group">
									<div class="form-check text-right">
										<label class="form-check-label">
											{HEADER_GUEST_COOKIETTL} {PHP.L.users_rememberme}
										</label>
									</div>
							</div>

								<div class="form-group">
									<div class="row">
										<div class="col-12 text-right">
											<button type="submit" class="btn btn-warning">{PHP.L.Login}</button>
											<button type="button" class="btn btn-secondary" data-dismiss="modal">{PHP.L.Close}</button>
										</div>
									</div>
								</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ENDIF -->

	<div class="support">
		<div class="container">
			<div class="row">
					<div class="col-lg-12 col-md-8 col-sm-8 col-xs-12 phone">
						Поддержка:
						<i class="fa fa-phone" aria-hidden="true"></i>
							+38 048 770 7468 |
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
							fox.gt.sales@gmail.com
							<!-- BEGIN: I18N_LANG -->
							<!-- BEGIN: I18N_LANG_ROW -->
							<a href="{I18N_LANG_ROW_URL}" class="{I18N_LANG_ROW_CLASS} translit"><img src="images/flags/{I18N_LANG_ROW_FLAG}.png"/></a>
							<!-- END: I18N_LANG_ROW -->
							<!-- END: I18N_LANG -->
					</div>

					<div class="col-lg-1 col-md-4 col-sm-4 hidden-xs translit text-right">

					</div>
			</div>
		</div>
	</div>



	<nav class="navbar-inverse bg-inverse navbar-toggleable-md">
		<div class="container-fluid">

			<!-- BEGIN: USER -->

			<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
			  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			  <a class="navbar-brand" href="#">Navbar</a>

			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
			      <li class="nav-item active">
			        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">Link</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link disabled" href="#">Disabled</a>
			      </li>
			    </ul>
			    <form class="form-inline my-2 my-lg-0">
			      <input class="form-control mr-sm-2" type="text" placeholder="Search">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			    </form>
			  </div>
			</nav>


			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">{PHP.usr.name}</a>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">


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
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="logout"><a href="{PHP|cot_url('users', 'm=profile')}">{PHP.L.Profile}</a></li>
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


	<header>
		<div class="container">
			<div class="row">

				<div class="col-lg-2">
					<div class="logo"><a href="{PHP|cot_url('index')}" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}"><img src="themes/{PHP.theme}/img/logo.png"/></a></div>
				</div>

				<div class="col-lg-7">
					<nav class="navbar-toggleable">
						<ul class="nav">
							<li class="nav-item"><a class="nav-link<!-- IF {PHP.env.ext} == 'index' --> active<!-- ENDIF -->" href="{PHP|cot_url('index')}">{PHP.L.Home}</a></li>
							<li class="nav-item"><a class="nav-link<!-- IF {PHP.env.ext} == 'projects' --> active<!-- ENDIF -->" href="{PHP|cot_url('projects')}">{PHP.L.projects_projects}</a></li>
							<li class="nav-item"><a class="nav-link<!-- IF {PHP.env.ext} == 'users' AND ({PHP.group} == {PHP.cot_groups.4.alias} OR {PHP.urr.user_maingrp} == 4) --> active<!-- ENDIF -->" href="{PHP.cot_groups.4.alias|cot_url('users', 'group='$this)}">{PHP.cot_groups.4.name}</a></li>
							<li class="nav-item"><a class="nav-link<!-- IF {PHP.env.ext} == 'users' AND ({PHP.group} == {PHP.cot_groups.7.alias} OR {PHP.urr.user_maingrp} == 7) --> active<!-- ENDIF -->" href="{PHP.cot_groups.7.alias|cot_url('users', 'group='$this)}">{PHP.cot_groups.7.name}</a></li>
							<!-- IF {PHP.cot_modules.market} -->
							<li class="nav-item"><a class="nav-link<!-- IF {PHP.env.ext} == 'market' AND !{PHP.type} --> active<!-- ENDIF -->" href="{PHP|cot_url('market')}">{PHP.L.market}</a></li>
							<!-- ENDIF -->
							<!-- IF {PHP.cot_plugins_active.contact} -->
							<li class="nav-item"><a class="nav-link<!-- IF {PHP.env.ext} == 'contact' --> active<!-- ENDIF -->" href="{PHP|cot_url('contact')}">{PHP.L.Contact}</a></li>
							<!-- ENDIF -->
						</ul>
					</nav>
				</div>

<!-- BEGIN: GUEST -->
					<div class="col-lg-3 register">
						<ul class="nav">
							<li class="nav-item"><a class="btn-warning button-glow" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a></li>
							<li class="nav-item"><a class="btn-warning button-glow" href="{PHP|cot_url('login')}" data-toggle="modal" onclick="$('#AuthModal').modal(); return false;">{PHP.L.Login}</a></li>
						</ul>
					</div>
			</div>
		</div>
<!-- END: GUEST -->
	</header>

	<div class="content">

<!-- END: HEADER -->
