<!-- BEGIN: MAIN -->

<div class="uk-button-group uk-margin-bottom">
	<a href="{PHP|cot_url('admin', 'm=cwsender&n=lists')}" class="uk-button uk-button-default<!-- IF {PHP.n} == 'lists' --> special<!-- ENDIF -->">{PHP.L.cwsender_lists_title}</a>
	<a href="{PHP|cot_url('admin', 'm=cwsender&n=letters')}" class="uk-button uk-button-default<!-- IF {PHP.n} == 'letters' -->uk-active special<!-- ENDIF -->">{PHP.L.cwsender_letters_title}</a>
</div>

<div class="uk-card uk-card-default uk-card-body">
<!-- BEGIN: LISTS -->
<table class="uk-table uk-table-small">
    <thead>
        <tr>
            <th>{PHP.L.cwsender_lists_title}</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
    </thead>
	<!-- BEGIN: LIST_ROW -->
	<tr>
		<td class="uk-text-bold">{LIST_ROW_ID}</td>
		<td>{LIST_ROW_TITLE}</td>
		<td>{LIST_ROW_TYPE}</td>
		<td><span class="uk-label">{LIST_ROW_SETTING}</span></td>
		<td><a class="uk-text-danger" uk-icon="icon: trash" href="{LIST_ROW_DELETE_URL}" title="{PHP.L.Delete}" uk-tooltip></a></td>
	</tr>
	<!-- END: LIST_ROW -->
</table>
		
<!-- BEGIN: ADDFORM -->

<script>
	
	$(function () {
		$('input[type=radio]').hide();
	});

	function CollapseListType(obj)
	{
		$('#listtypes').find('div').hide();
		$('#listtypes label').removeClass('special');
		$('#listtypes label').removeClass('active');
		$('#' + obj).show();
		$('.' + obj).addClass('special');
		$('.' + obj).addClass('active');
	}
</script>
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="uk-text-center uk-text-uppercase uk-text-success uk-margin">
{PHP.L.cwsender_lists_add_title}
</div>
<form action="{ADDFORM_ACTION}" method="post" class="customform uk-form-horizontal uk-margin-large">
    <div class="uk-margin">
        <label class="uk-form-label">{PHP.L.cwsender_lists_form_title}</label>
        <div class="uk-form-controls">
            {ADDFORM_TITLE}
        </div>
    </div>
    <div class="uk-margin">
        <label class="uk-form-label">{PHP.L.cwsender_lists_form_recipients}</label>
        <div class="uk-form-controls">
            <div id="listtypes">
				<label class="type1 uk-button uk-button-default<!-- IF {PHP.type} == 'text' --> active special<!-- ENDIF -->" onClick="CollapseListType('type1');">
					<input type="radio" name="rtype" value="text" <!-- IF {PHP.type} == 'text' -->checked<!-- ENDIF -->/> {PHP.L.cwsender_lists_form_type_text_title}
				</label>
				<label class="type2 uk-button uk-button-default<!-- IF {PHP.type} == 'groups' --> active special<!-- ENDIF -->" onClick="CollapseListType('type2');">
					<input type="radio" name="rtype" value="groups" <!-- IF {PHP.type} == 'groups' -->checked<!-- ENDIF -->/> {PHP.L.cwsender_lists_form_type_groups_title}
				</label>
				<label class="type3 uk-button uk-button-default<!-- IF {PHP.type} == 'subs' --> active special<!-- ENDIF -->" onClick="CollapseListType('type3');">
					<input type="radio" name="rtype" value="subs" <!-- IF {PHP.type} == 'subs' -->checked<!-- ENDIF -->/> {PHP.L.cwsender_lists_form_type_subs_title}
				</label>
				<label style="display: none;" class="type4 uk-button uk-button-default<!-- IF {PHP.type} == 'mysql' --> active special<!-- ENDIF -->" onClick="CollapseListType('type4');">
					<input type="radio" name="rtype" value="mysql" <!-- IF {PHP.type} == 'mysql' -->checked<!-- ENDIF -->/> {PHP.L.cwsender_lists_form_type_mysql_title}
				</label>
				<p>&nbsp;</p>	
				<div id="type1"<!-- IF {PHP.type} != 'text' --> style="display:none;"<!-- ENDIF -->>
					<textarea class="uk-textarea"  name="rtext" cols="80" rows="15">{PHP.setting.text}</textarea>
					<p>{PHP.L.cwsender_lists_form_type_text_desc}</p>
				</div>
				<div id="type2"<!-- IF {PHP.type} != 'groups' --> style="display:none;"<!-- ENDIF -->>

					<script>
						$(function () {
							$('#type2 input[type=checkbox]:disabled').parent('li').hide();
						});
					</script>

					{ADDFORM_RECIPIENTS}
                    <style>
                        li{list-style: none;}
                    </style>
				</div>
				<div id="type3"<!-- IF {PHP.type} != 'subs' --> style="display:none;"<!-- ENDIF -->>
					{PHP.L.cwsender_lists_form_type_subs_desc}
				</div>
				<div id="type4"<!-- IF {PHP.type} != 'mysql' --> style="display:none;"<!-- ENDIF -->>
					<textarea class="uk-textarea" name="rquery" cols="80" rows="15">{PHP.setting.mysql}</textarea>
						<p>{PHP.L.cwsender_lists_form_type_mysql_desc}</p>
				</div>
			</div>

    		<tr>
    			<td></td>
    			<td><button type="submit" class="uk-button uk-button-default uk-margin">{PHP.L.cwsender_lists_add_button}</button></td>
    		</tr>
        </div>
    </div>
    </div>
</form>
<!-- END: ADDFORM -->

<!-- END: LISTS -->


<!-- BEGIN: LETTERS -->
<div class="uk-text-center uk-margin-large-top">
    <h4 class="uk-text-success uk-text-uppercase">{PHP.L.cwsender_letters_title}</h4>
</div>
<table class="uk-table">
	<!-- IF {LETTERS_ORDER} -->
		<tr>
			<td colspan="5">{LETTERS_ORDER}</td>
		</tr>
	<!-- ENDIF -->
	<!-- BEGIN: LETTER_ROW -->
	<tr>
		<td class="uk-width-1-5"><span class="uk-label uk-label-warning">{LETTER_ROW_DATE|cot_date('d.m.Y H:i', $this)}</span></td>
		<td class="uk-width-1-2">
			<h6 class="uk-text-bold uk-margin-remove">{LETTER_ROW_TITLE}</h6>
            <div class="uk-text-small uk-margin-remove">
			{LETTER_ROW_TEXT}
            </div>
		</td>
		<td>{LETTER_ROW_LIST}</td>
		<td>
			<!-- IF {LETTER_ROW_STATUS} == 'new' -->
			{PHP.L.cwsender_letters_status_ready} <a href="{LETTER_ROW_SEND_URL}" class="uk-button uk-button-default">{PHP.L.Submit}</a>
			<!-- ENDIF -->
			<!-- IF {LETTER_ROW_STATUS} == 'process' -->
			<span class="uk-label uk-label-warning">{PHP.L.cwsender_letters_status_process}</span>
			<!-- ENDIF -->
			<!-- IF {LETTER_ROW_STATUS} == 'done' -->
			<span class="uk-label uk-label-success">{PHP.L.cwsender_letters_status_sent}</span>
			<!-- ENDIF -->
		</td>
		<td><a  class="uk-text-danger" uk-icon="icon: trash" href="{LETTER_ROW_DELETE_URL}" title="{PHP.L.Delete}" uk-tooltip></a></td>
	</tr>
	<!-- END: LETTER_ROW -->
</table>
		
<!-- BEGIN: ADDFORM -->

<script>
	$(function () {
		$('input[type=radio]').hide();
		$('input[type=checkbox]:disabled').parent('li').hide();
	});
</script>
<div class="uk-text-center uk-margin-large-top">
<h4 class="uk-text-success uk-text-uppercase">{PHP.L.cwsender_letters_add_title}</h4>
</div>
<form action="{ADDFORM_ACTION}" method="post" class="customform uk-form-horizontal uk-margin-large">
	<table class="uk-table">
		<tr>
			<td>{PHP.L.cwsender_letters_form_title}</td>
			<td>{ADDFORM_TITLE|cot_inputbox('text', 'rtitle', $this)}</td>
		</tr>
		<tr>
			<td>{PHP.L.cwsender_letters_form_text}</td>
			<td>{ADDFORM_TEXT|cot_textarea('rtext', $this, 25, 120, 'id="formtext"', 'input_textarea_editor')}</td>
		</tr>
		<tr>
			<td>{PHP.L.cwsender_letters_form_list}</td>
			<td>{ADDFORM_RECIPIENTS}</td>
		</tr>
		<tr>
			<td></td>
			<td><button type="submit" class="uk-button uk-button-default uk-margin">{PHP.L.cwsender_letters_add_button}</button></td>
		</tr>
	</table>
</form>
<!-- END: ADDFORM -->

<!-- END: LETTERS -->

<!-- BEGIN: SUBSUSERS -->
<div class="uk-text-center uk-margin-large-top">
    <h4 class="uk-text-success uk-text-uppercase">{PHP.L.cwsender_subsuser_title} ({SUBSUSERS_TITLE})</h4>
</div>
<table class="uk-table">
	<!-- BEGIN: USERS_ROW -->
	<tr>
		<td class="width10">{USERS_ROW_ID}</td>
		<td>{USERS_ROW_NAME}</td>
		<td>{USERS_ROW_EMAIL}</td>
	</tr>
	<!-- END: USERS_ROW -->
</table>

<!-- END: SUBSUSERS -->

</div>
				
<!-- END: MAIN -->