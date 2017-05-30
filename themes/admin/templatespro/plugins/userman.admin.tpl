<!-- BEGIN: MAIN -->
<div class="row-fluid">
	<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<script type="text/javascript">
			//<![CDATA[
			$(document).ready(function(){
				$('input[type=text], input[type=password], select, textarea').addClass('form-control');
				$('.table select').css('display','inline-block');
			});
			//]]>
		</script>
            <!-- BEGIN: CREATE -->
			<div class="row">
				<div class="col-md-12">
                    <!-- BEGIN: UM_AJAXBLOCK -->
					<div id="MyajaxBlock">
					<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
						<h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.um_usermanager}</h4>
							<div class="uk-button-group uk-margin-bottom">
								<a href="{PHP|cot_url('admin','m=other&p=userman&a=profile')}" class="uk-button uk-button-default">{PHP.L.Profile}</a>
								<a href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=users')}" class="uk-button uk-button-default">{PHP.L.um_settings}</a>
								<a href="{PHP|cot_url('admin','m=rightsbyitem&ic=users&io=a')}" class="uk-button uk-button-default">{PHP.L.um_userrights}</a>
								<a href="{PHP|cot_url('admin','m=extrafields&n=cot_users')}" class="uk-button uk-button-default">{PHP.L.um_extrafields}</a>
							</div>
							<table class="uk-table uk-table-small">    
								<thead>
									<tr>
										<th>PM</th>
										<th>TGA</th>
										<th>{UM_TOP_NAME}</th>
										<th>{PHP.L.Email}</th>
										<th>{UM_TOP_GRPTITLE}</th>
										<th>{UM_TOP_GRPLEVEL}</th>
										<th>{UM_TOP_REGDATE}</th>
										<th>{PHP.L.Action}</th>
									</tr>
								</thead>
                                <!-- BEGIN: UM_ROW -->
								<tr>
									<td class="uk-text-center">{UM_ROW_PM}</td>
									<td class="uk-text-center">{UM_ROW_ACCESS}</td>
									<td class="uk-text-center">{UM_ROW_NAME}</td>
									<td class="uk-text-center">{UM_ROW_EMAIL}</td>
									<td class="uk-text-center">{UM_ROW_MAINGRP}</td>
									<td class="uk-text-center">{UM_ROW_MAINGRPSTARS}</td>
									<td class="uk-text-center">{UM_ROW_REGDATE}</td>
									<td class="action uk-text-center">
										<ul class="uk-iconnav">
											<li><a  class="uk-text-warning uk-marhin-right" uk-icon="icon: file-edit" href="{PHP.id|cot_url('admin','m=other&p=userman&a=edit&id=$this')}" title="{PHP.L.Edit}" uk-tooltip></a></li>
											<li><a class="uk-text-primary uk-marhin-right" uk-icon="icon: folder"  href="{PHP.id|cot_url('admin','m=other&p=userman&a=access&id=$this')}" title="TGA" uk-tooltip> </a></li>
											<li><a class="uk-text-danger" uk-icon="icon: trash" href="{PHP.url_del}" title=" {PHP.L.Delete}" uk-tooltip></i></a></li>
										</ul>
									</td>
								</tr>
                                <!-- END: UM_ROW -->
							</table>

					</div>
                    <!-- BEGIN: UM_PAGENAV -->						
					<div class="uk-margin-top">
						<ul class="uk-pagination">{UM_TOP_PAGEPREV}{UM_TOP_PAGNAV}{UM_TOP_PAGENEXT}</ul>
					</div>
                    <!-- END: UM_PAGENAV -->						
					</div>
                <!-- END: UM_AJAXBLOCK -->
				</div>
			</div>
            <div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
			<div uk-grid>
                <div class="uk-width-auto">
                <h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.um_adduser}</h4>
				<form action="{UM_USERS_CREATE_SEND}" method="post" name="um_useredit" enctype="multipart/form-data" class="uk-form-horizontal uk-margin-large">							
				<input type="hidden" name="id" value="{UM_USERS_CREATE_ID}" />
				<table class="table table-bordered">
					<tr>
						<td class="width20">{PHP.L.Username}</td>
						<td class="width80">{UM_NAME}</td>
					</tr>
					<tr>
						<td>{PHP.L.Email}:</td>
						<td>{UM_USERS_CREATE_EMAIL}</td>
					</tr>
					<tr>
						<td class="usergrouplist">{PHP.L.Maingroup}:</td>
						<td class="usergrouplist">{UM_USERS_CREATE_GROUPS}</td>
					</tr>
                    <!-- IF {UM_USERS_CREATE_SIGNATURE} -->	
					<tr>
						<td>{PHP.L.Signature}:</td>
						<td class="uk-margin-top">{UM_USERS_CREATE_SIGNATURE}</td>
					</tr>
                    <style>
                        li{list-style: none;}
                    </style>							
                    <!-- ENDIF -->
					<tr>
						<td>{PHP.L.users_newpass}:</td>
						<td>
							{UM_USERS_DEFAULT_PASS}
							<p class="uk-text-small">{UM_USERS_HELPPASS}</p>
						</td>
					</tr>
					<tr>
						<td>{PHP.L.users_confirmpass}:</td>
						<td>{UM_USERS_PASSWORDREPEAT}</td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="uk-button uk-button-default uk-margin-top">{PHP.L.um_createuser}</button></td>
					</tr>
				</table>
				</form>
                </div>
                <div class="uk-width-expand">
                <h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.Filters}</h4>
        			<div class="wrapper">
        				<form action="{UM_TOP_FILTER_ACTION}" method="post">
        					<p>{UM_TOP_FILTERS_COUNTRY}</p>
        					<p>{UM_TOP_FILTERS_MAINGROUP}</p>
        					<p>{UM_TOP_FILTERS_GROUP}</p>
        					<p>{UM_TOP_FILTERS_SEARCH}</p>
        					<p><button type="submit" class="uk-button uk-button-default">{PHP.L.Submit}</button></p>
        				</form>
        			</div>
                </div>
			</div>
            </div>
            <!-- END: CREATE -->
            
            <!-- BEGIN: UM_EDIT -->
			<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
				<h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.um_edituser}</h4>
				<div class="uk-button-group">
					<a href="{PHP|cot_url('admin','m=other&p=userman')}" class="uk-button uk-button-default">{PHP.L.um_usermanager}</a>
					<a href="{UM_EDIT_ID|cot_url('admin','m=other&p=userman&a=access&id=$this')}" class="uk-button uk-button-default">TGA</a>
				</div>
				<form action="{UM_EDIT_SEND}" method="post" name="um_edit" enctype="multipart/form-data" class="uk-form-horizontal uk-margin-large">
					<input type="hidden" name="id" value="{UM_EDIT_ID}" />
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.users_id}:</label>
                        <div class="uk-form-controls">
                            {UM_EDIT_ID}
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Username}</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_NAME}
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Groupsmembership}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_GROUPS}
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Country}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_COUNTRY}
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Timezone}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_TIMEZONE}
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Theme}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_THEME}
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Language}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_LANG}
                        </div>
                    </div>
                    <!-- IF {UM_EDIT_AVATAR} -->
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Avatar}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_AVATAR}
                        </div>
                    </div>
                    <!-- ENDIF -->
                    <!-- IF {UM_EDIT_SIGNATURE} -->
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Signature}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_SIGNATURE}
                        </div>
                    </div>
                    <!-- ENDIF -->
                    <!-- IF {UM_EDIT_PHOTO} -->
                     <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Photo}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_PHOTO}
                        </div>
                    </div>
                    <!-- ENDIF -->
                     <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.users_newpass}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_NEWPASS}
					   <p class="uk-text-small">{PHP.L.users_newpasshint1}</p>
                        </div>
                    </div>
                     <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Email}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_EMAIL}
                        </div>
                    </div>
                     <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.users_hideemail}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_HIDEEMAIL}
                        </div>
                    </div>
                    <!-- IF {PHP.cot_modules.pm} -->
                     <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.users_pmnotify}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_PMNOTIFY}
                        <p class="uk-text-small">{PHP.themelang.usersedit.PMnotifyhint}</p>
                        </div>
                    </div>
                     <!-- ENDIF -->
                     <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Birthdate}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_BIRTHDATE}
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Gender}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_GENDER}
                        </div>
                    </div>
                     <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Signature}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_TEXT}
                        </div>
                    </div>
                     <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Registered}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_REGDATE}
                        </div>
                    </div>
                     <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.Lastlogged}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_LASTLOG}
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.users_lastip}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_LASTIP}
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.users_logcounter}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_LOGCOUNT}
                        </div>
                    </div>
					<div class="uk-margin">
                        <label class="uk-form-label">{PHP.L.users_deleteuser}:</label>
                        <div class="uk-form-controls">
                        {UM_EDIT_DELETE}
                        </div>
                    </div>
                    <div class="uk-margin">
					<button type="submit" class="uk-button uk-button-default">{PHP.L.Update}</button>
                    </div>
				</form>
			</div>
            <!-- END: UM_EDIT -->

            <!-- BEGIN: UM_PROFILE -->
			<div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
			<h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.Profile}</h4>
				<div class="btn-group item-control">
					<a href="{PHP|cot_url('admin','m=other&p=userman')}" class="btn btn-primary"><i class="fa fa-users"></i> {PHP.L.um_usermanager}</a>
				</div>
				<form action="{UM_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile">
					<input type="hidden" name="userid" value="{UM_PROFILE_ID}" />
					<table class="uk-table uk-table-small">
						<tr>
							<td class="width30">{PHP.L.Username}:</td>
							<td class="width70">{UM_PROFILE_NAME}</td>
						</tr>
						<tr>
							<td>{PHP.L.Groupsmembership}:</td>
							<td>
								<div class="usergrouplist">
									{UM_PROFILE_GROUPS}
								</div>
							</td>
						</tr>
						<tr>
							<td>{PHP.L.Registered}:</td>
							<td>{UM_PROFILE_REGDATE}</td>
						</tr>
                        <!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
						<tr>
							<td>{PHP.L.Email}:</td>
							<td id="emailtd">
								<div class="width50 floatleft">
									{PHP.L.Email}:<br />{UM_PROFILE_EMAIL}
								</div>
                                <!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
								<script type="text/javascript">
									//<![CDATA[
									$(document).ready(function(){
										$("#emailnotes").hide();
										$("#emailtd").click(function(){$("#emailnotes").slideDown();});
									});
									//]]>
								</script>
								<div>
									{PHP.themelang.usersprofile.Emailpassword}:<br />{UM_PROFILE_EMAILPASS}
								</div>
								<div class="small" id="emailnotes">{PHP.themelang.usersprofile.Emailnotes}</div>
                            <!-- END: USERS_PROFILE_EMAILPROTECTION -->
							</td>
						</tr>
                        <!-- END: USERS_PROFILE_EMAILCHANGE -->
						<tr>
							<td>{PHP.L.users_hideemail}:</td>
							<td>{UM_PROFILE_HIDEEMAIL}</td>
						</tr>
                        <!-- IF {PHP.cot_modules.pm} -->
						<tr>
							<td>{PHP.L.users_pmnotify}:</td>
							<td>
								{UM_PROFILE_PMNOTIFY}
								<p class="small">{PHP.L.users_pmnotifyhint}</p>
							</td>
						</tr>
                        <!-- ENDIF -->
						<tr>
							<td>{PHP.L.Theme}:</td>
							<td>{UM_PROFILE_THEME}</td>
						</tr>
						<tr>
							<td>{PHP.L.Language}:</td>
							<td>{UM_PROFILE_LANG}</td>
						</tr>
						<tr>
							<td>{PHP.L.Timezone}:</td>
							<td>{UM_PROFILE_TIMEZONE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Country}:</td>
							<td>{UM_PROFILE_COUNTRY}</td>
						</tr>
						<tr>
							<td>{PHP.L.Birthdate}:</td>
							<td>{UM_PROFILE_BIRTHDATE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Gender}:</td>
							<td>{UM_PROFILE_GENDER}</td>
						</tr>
                        <!-- IF {UM_PROFILE_AVATAR} -->
						<tr>
							<td>{PHP.L.Avatar}:</td>
							<td>{UM_PROFILE_AVATAR}</td>
						</tr>
                        <!-- ENDIF -->
                        <!-- IF {UM_PROFILE_PHOTO} -->
						<tr>
							<td>{PHP.L.Photo}:</td>
							<td>{UM_PROFILE_PHOTO}</td>
						</tr>
                        <!-- ENDIF -->
						<tr>
							<td>{PHP.L.Signature}:</td>
							<td>{UM_PROFILE_TEXT}</td>
						</tr>
						<tr>
							<td>
								<p>
									{PHP.L.users_newpass}:
									<span class="small">{PHP.L.users_newpasshint1}</span>
								</p>
							</td>
							<td>
								<p>
									{UM_PROFILE_OLDPASS}
									<span class="small">{PHP.L.users_oldpasshint}</span>
								</p>
								<p>
									{UM_PROFILE_NEWPASS1}
								</p>
								<p>
									{UM_PROFILE_NEWPASS2}
									<span class="small">{PHP.L.users_newpasshint2}</span>
								</p>
							</td>
						</tr>
						<tr>
							<td colspan="2" class="valid">
								<button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
            <!-- END: UM_PROFILE -->

        <!-- BEGIN: UM_TIME_ACCESS -->  
	       <div class="uk-card uk-card-default uk-card-hover uk-card-body uk-margin-top">
			<h4 class="uk-text-small uk-text-muted uk-text-uppercase">{PHP.L.um_tga}</h4>
				<div class="uk-button-group">
					<a href="{PHP|cot_url('admin','m=other&p=userman')}" class="uk-button uk-button-default"> {PHP.L.um_usermanager}</a>
					<a href="{UM_ACCESS_ID|cot_url('admin','m=other&p=userman&a=edit&id=$this')}" class="uk-button uk-button-default"> {PHP.L.um_edituser}</a>
				</div>
				<form action="{UM_TIME_ACCESS_SEND}" method="post" name="um_useredit" enctype="multipart/form-data" class="uk-form-horizontal uk-margin-large">
					<input type="hidden" name="id" value="{UM_ACCESS_ID}" />
						<div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.users_id}:</label>
                            <div class="uk-form-controls">
                                #{UM_ACCESS_ID}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.Username}:</label>
                            <div class="uk-form-controls">
                                {UM_ACCESS_NAME}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.Email}:</label>
                            <div class="uk-form-controls">
                                {UM_ACCESS_EMAIL}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.Maingroup}:</label>
                            <div class="uk-form-controls usergrouplist">
                                {UM_ACCESS_GROUPS}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.um_access_start}</label>
                            <div class="uk-form-controls">
                                {UM_ACCESS_START}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.um_access_start_reason}</label>
                            <div class="uk-form-controls">
                                {UM_ACCESS_START_REASON}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.um_access_stop}</label>
                            <div class="uk-form-controls">
                                {UM_ACCESS_STOP}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.um_access_stop_reason}</label>
                            <div class="uk-form-controls">
                                {UM_ACCESS_STOP_REASON}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.Lastlogged}:</label>
                            <div class="uk-form-controls">
                                {UM_ACCESS_LASTDATE}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label">{PHP.L.um_active}</label>
                            <div class="uk-form-controls">
                                {UM_ACCESS_ACTIVE}
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label"></label>
                            <div class="uk-form-controls">
                                
                            </div>
                        </div>
					   <button type="submit" class="uk-button uk-button-default">{PHP.L.Update}</button>
				</form>
		</div>
        <!-- END: UM_TIME_ACCESS -->  
	</div>
</div>

<!-- END: MAIN -->