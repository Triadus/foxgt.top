<!-- BEGIN: MAIN -->



<div class="container">
	<div class="breadcrumb">{PHP.L.projects_add_project_title}</div>

	<h2>{PHP.L.projects_add_project_title}</h2>

	<div class="card mb-5">
		<div class="card-block publ-proj">
			{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
			<form action="{PRJADD_FORM_SEND}" method="post" name="newadv" enctype="multipart/form-data" class="form-horizontal">
				<!-- IF {PHP.projects_types} -->
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.Type}:</label>
					<div class="col-md-9">{PRJADD_FORM_TYPE}</div>
				</div>
				<!-- ENDIF -->
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.Category}:</label>
					<div class="col-md-9">{PRJADD_FORM_CAT}</div>
				</div>
				<!-- <div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.Location}:</label>
					<div class="col-md-9">{PRJADD_FORM_LOCATION}</div>
				</div> -->
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.Title}:</label>
					<div class="col-md-9">{PRJADD_FORM_TITLE}</div>
				</div>
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PRJADD_FORM_TIMEPROJ_TITLE}:</label>
					<div class="col-md-9">{PRJADD_FORM_TIMEPROJ}</div>
				</div>
				<div class="form-group row<!-- IF !{PHP.usr.isadmin} --> sr-only<!-- ENDIF -->">
					<label class="col-md-3 form-control-label">{PHP.L.Parser}:</label>
					<div class="col-md-9">{PRJADD_FORM_PARSER}</div>
				</div>
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.Text}:</label>
					<div class="col-md-9">{PRJADD_FORM_TEXT}</div>
				</div>
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PRJADD_FORM_TRANSLATELANG_1_TITLE}</label>
					<div class="col-md-9">{PRJADD_FORM_TRANSLATELANG_1}</div>
				</div>
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PRJADD_FORM_TRANSLATELANG_2_TITLE}</label>
					<div class="col-md-9">{PRJADD_FORM_TRANSLATELANG_2}</div>
				</div>


				<!-- BEGIN: TAGS -->
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PRJADD_FORM_TAGS_TITLE}:</label>
					<div class="col-md-9">{PRJADD_FORM_TAGS} ({PRJADD_FORM_TAGS_HINT})</div>
				</div>
				<!-- END: TAGS -->

				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.projects_price}:</label>
					<div class="col-md-9">
						<div class="input-group">{PRJADD_FORM_COST}<span class="input-group-addon">{PHP.cfg.payments.valuta}</span></div>
					</div>
				</div>
				<!-- IF {PHP.cot_plugins_active.mavatars} -->
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.Files}:</label>
					<div class="col-md-9">
						{PRJADD_FORM_MAVATAR}
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {PHP.cot_plugins_active.paypro} -->
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.paypro_forpro}:</label>
					<div class="col-md-9">
						<span class="badge badge-danger pro">
							{PRJADD_FORM_FORPRO}
						</span>
					</div>
				</div>
				<!-- ENDIF -->
				<button class="btn btn-warning" type="submit" name="button">{PHP.L.projects_next}</button>
			</form>
		</div>
	</div>
</div>


<!-- END: MAIN -->
