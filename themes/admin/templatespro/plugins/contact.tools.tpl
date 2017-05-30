<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<div class="uk-card uk-card-default uk-card-body uk-margin-top">
	<h5 class="uk-text-muted uk-text-uppercase">{PHP.L.contact_title}</h5>
	<table class="uk-table uk-table-hover">
		<tr>
			<th>{PHP.L.Date}</th>
			<th>{PHP.L.User}</th>
			<th>{PHP.L.Message}</th>
			<th>{PHP.L.Action}</th>
		 </tr>
<!-- BEGIN: DATA -->
		 <tr>
			<td class="{CONTACT_ODDEVEN}">{CONTACT_DATE}<!-- IF {CONTACT_VAL} == val --><br /><span class="uk-label uk-label-success">{PHP.L.contact_shortnew}</span><!-- ENDIF --></td>
			<td class="{CONTACT_ODDEVEN}">{CONTACT_USER}<br />{CONTACT_EMAIL}</td>
			<td class="{CONTACT_ODDEVEN}">{CONTACT_TEXTSHORT}</td>
			<td class="{CONTACT_ODDEVEN}">
            <a href="{CONTACT_VIEWLINK}" title="{PHP.L.View}" class="uk-button uk-button-default">{PHP.L.short_open}</a>
            <!-- IF {CONTACT_VAL} == val -->
            <a href="{CONTACT_READLINK}" title="{PHP.L.contact_markread}" class="uk-button uk-button-default confirm">{PHP.L.contact_read}</a>
            <!-- ELSE -->
            <a href="{CONTACT_UNREADLINK}" title="{PHP.L.contact_markunread}" class="uk-button uk-button-default">{PHP.L.contact_unread}</a>
            <!-- ENDIF -->
            <a class="uk-text-danger" uk-icon="icon: trash" href="{CONTACT_DELLINK}" title="{PHP.L.Delete}"  uk-tooltip></a>
			</td>
		 </tr>
<!-- END: DATA -->
	</table>
	<p class="paging">{CONTACT_PREV}{CONTACT_PAGINATION}{CONTACT_NEXT}</p>
</div>
	<!-- BEGIN: VIEW -->
 <div class="uk-card uk-card-default uk-card-body uk-margin-top">
	<a name="view"></a>
    <h5 class="uk-text-muted uk-text-uppercase">{PHP.L.contact_view} #{CONTACT_ID} (<!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}<!-- ELSE -->{PHP.L.contact_nosubject}<!-- ENDIF -->)</h5>
	<form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">
		<table class="uk-table">
			<tr>
				<td>{PHP.L.Username}:</td>
				<td>{CONTACT_USER}</td>
			</tr>
			<tr>
				<td>{PHP.L.Date}:</td>
				<td>{CONTACT_DATE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Email}:</td>
				<td>{CONTACT_EMAIL} </td>
			</tr>
			<tr>
				<td>{PHP.L.Subject}:</td>
				<td><!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}<!-- ELSE -->{PHP.L.contact_nosubject}<!-- ENDIF --></td>
			</tr>
			<tr>
				<td>{PHP.L.Message}:</td>
				<td>{CONTACT_TEXT}</td>
			</tr>
			<!-- BEGIN: EXTRAFLD -->
			<tr>
				<td>{CONTACT_EXTRAFLD_TITLE}</td>
				<td>{CONTACT_EXTRAFLD}</td>
			</tr>
			<!-- END: EXTRAFLD -->
<!-- IF {CONTACT_REPLY} --><tr style="color:#900;">
				<td>{PHP.L.contact_sent}:</td>
				<td>{CONTACT_REPLY}</td>
			</tr><!-- ENDIF -->
			<tr>
				<td>{PHP.L.Reply}:</td>
				<td>{CONTACT_FORM_TEXT}</td>
			</tr>
			<tr>
				<td colspan="2" class="uk-text-center"><button type="submit" class="uk-button uk-button-default">{PHP.L.Submit}</button></td>
			</tr>
		</table>
	 </form>
	<!-- END: VIEW -->
</div>
<!-- END: MAIN -->