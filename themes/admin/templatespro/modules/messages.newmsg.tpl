<!-- BEGIN: MAIN -->
<!-- BEGIN: INBOX -->
<div id="{MSG_ROW_ID}" class="uk-grid">
    <div class="uk-width-2-10 uk-text-center  uk-padding-remove">
        <img class="msg-avatar uk-border-circle" src="<!-- IF {MSG_ROW_USER_AVATAR_SRC} -->{MSG_ROW_USER_AVATAR_SRC}<!-- ELSE -->/datas/defaultav/blank.png<!-- ENDIF -->" alt="">
    </div>
    <div class="uk-width-8-10 uk-padding-remove">  
        <div class="uk-margin-top ti-linck-black">{MSG_ROW_USER_NAME} <div class="uk-float-right"><span class="uk-text-small uk-text-success">{MSG_ROW_DATE}</span></div></div>
        <div class="uk-text-muted uk-margin-small-top">{MSG_ROW_TEXT}</div>
    </div> 
</div>
<!-- END: INBOX -->

<!-- BEGIN: OUTBOX -->
<div id="{MSG_ROW_ID}" class="uk-grid">
    <div class="uk-width-2-10 uk-text-center  uk-padding-remove">
        <img class="msg-avatar uk-border-circle" src="<!-- IF {MSG_ROW_USER_AVATAR_SRC} -->{MSG_ROW_USER_AVATAR_SRC}<!-- ELSE -->/datas/defaultav/blank.png<!-- ENDIF -->" alt="">
    </div>
    <div class="uk-width-8-10 uk-padding-remove">  
        <div class="uk-margin-top ti-linck-black">{MSG_ROW_USER_NAME} <div class="uk-float-right"><span class="uk-text-small uk-text-success">{MSG_ROW_DATE}</span></div></div>
        <div class="uk-text-muted uk-margin-small-top">{MSG_ROW_TEXT}</div>
    </div> 
</div>
<!-- END: OUTBOX -->

<!-- BEGIN: ERROR -->
<div class="uk-alert uk-alert-danger" style="display:none" id="error" data-uk-alert>
    <a href="" class="uk-alert-close uk-close"></a>
    {ERROR_MSG}
</div>
<!-- END: ERROR -->

<!-- END: MAIN -->