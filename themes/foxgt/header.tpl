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
<link rel="shortcut icon" href="favicon.png" />
<link rel="apple-touch-icon" href="apple-touch-icon.png" />
<link href="https://fonts.googleapis.com/css?family=Comfortaa:400,700|Exo+2|Roboto+Slab:400,700" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

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

							<div class="form-group text-right">
								<label class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input">
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">{PHP.L.users_rememberme}</span>
								</label>
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
					<span class="pr-5">{HEADER_WHOSONLINE}</span>
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
			</div>
		</div>
	</div>

<!-- BEGIN: USER -->
	<div class="container-flex">
		<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse">
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">{PHP.usr.name}</a>

			<div class="collapse navbar-collapse" id="nav-content">
				<ul class="navbar-nav mr-auto">
					<!-- IF {PHP.cot_modules.payments} AND {PHP.cfg.payments.balance_enabled} -->
					<li class="nav-item">
						<a class="nav-link" href="{HEADER_USER_BALANCE_URL}">{PHP.L.payments_mybalance}: {HEADER_USER_BALANCE|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</a>
					</li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_modules.projects} -->
					<li class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" id="Preview" role="button" aria-expanded="false">{PHP.L.projects_projects}</a>
							<div class="dropdown-menu" aria-labelledby="Preview">
								<a class="dropdown-item" href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=projects')}">{PHP.L.projects_myprojects}</a>
								<!-- IF {PHP.cot_plugins_active.sbr} -->
								<a class="dropdown-item" href="{PHP|cot_url('sbr')}">{PHP.L.sbr_mydeals}</a>
								<!-- ENDIF -->
								<!-- IF {PHP|cot_auth('projects', 'any', '1')} -->
								<a class="dropdown-item" href="{PHP|cot_url('projects', 'm=useroffers')}">{PHP.L.offers_useroffers}</a>
								<!-- ENDIF -->
							</div>
					</li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_modules.market} -->
					<li class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" id="Preview-2" role="button" aria-expanded="false">{PHP.L.market}</a>
							<div class="dropdown-menu" aria-labelledby="Preview-2">
								<a class="dropdown-item" href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=market')}">{PHP.L.market_myproducts}</a>
								<!-- IF {PHP.cot_plugins_active.marketorders} -->
								<a class="dropdown-item" href="{PHP|cot_url('marketorders', 'm=sales')}">{PHP.L.marketorders_mysales}</a>
								<a class="dropdown-item" href="{PHP|cot_url('marketorders', 'm=purchases')}">{PHP.L.marketorders_mypurchases}</a>
								<!-- ENDIF -->
						</div>
					</li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_plugins_active.paypro} -->
					<li class="nav-item">
						<!-- IF {HEADER_USER_PROEXPIRE} -->
						<a class="nav-link" href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_extend}">{PHP.L.paypro_header_expire_short} {HEADER_USER_PROEXPIRE|cot_date('d.m.Y', $this)}</a>
						<!-- ELSE -->
						<a class="nav-link" href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_buy}">{PHP.L.paypro_header_buy}</a>
						<!-- ENDIF -->
					</li>
					<!-- ENDIF -->
						<!-- IF {HEADER_USER_PMREMINDER} -->
						<li class="nav-item nav-link logout">
							{HEADER_USER_PMREMINDER}
						</li>
						<!-- ENDIF -->
						<!-- IF {HEADER_NOTICES} -->
						<li class="nav-item dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" id="Preview-3" role="button" aria-expanded="false">{PHP.L.header_notice}</a>
								<div class="dropdown-menu" aria-labelledby="Preview-3">
									<a class="dropdown-item" href="#">{HEADER_NOTICES}</a>
								</div>
						</li>
						<!-- ENDIF -->
						<li class="nav-item nav-link logout">
							<a href="{PHP|cot_url('users', 'm=profile')}">{PHP.L.Profile}</a>
						</li>
						<li class="nav-item nav-link logout">
							{HEADER_USER_ADMINPANEL}
						</li>
						<li class="nav-item nav-link logout">
							{HEADER_USER_LOGINOUT}
						</li>
				</ul>
			</div>
		</nav>
	</div>
<!-- END: USER -->


	<header>
		<div class="container">
			<div class="row">

				<div class="col-lg-2 hidden-md-down">
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
