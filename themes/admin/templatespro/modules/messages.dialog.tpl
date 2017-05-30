<!-- BEGIN: MAIN -->
<div class="uk-block">
    <div class="uk-container uk-container-center">
        <div class="sw-background-color sw-radius tp-panel-border uk-padding-remove">
            <div class="uk-grid uk-grid-divider chat-height" data-uk-grid-match>
                <div class="uk-width-medium-4-10 uk-padding-right-remove">
                    <!-- IF {DIALOG_COUNT} -->
                    <ul class="uk-list uk-list-line msg-list">
                        <!-- BEGIN: MSG_LIST -->
                        <li class="<!-- IF {MSG_ACTIVE} -->uk-active<!-- ENDIF -->">
                             <!-- IF {MSG_DATE_STAMP} --><div class="uk-panel-badge uk-badge uk-margin-small-top uk-margin-small-right">{MSG_TIME_AGO}</div><!-- ENDIF -->
                            <a href="{MSG_DIAOG_URL}" class="uk-grid">
                                <div class="uk-width-1-4">
                                    <img class="msg-avatar uk-border-circle" src="<!-- IF {MSG_OPPONENT_AVATAR_SRC} -->{MSG_OPPONENT_AVATAR_SRC}<!-- ELSE -->/datas/defaultav/blank.png<!-- ENDIF -->" alt="">
                                </div>
                                <div class="uk-width-3-4">  
                                    <div class="uk-margin-top ti-linck-black">{MSG_OPPONENT_NICKNAME}</div>
                                    <div class="uk-text-muted uk-margin-small-top uk-text-small">{MSG_TEXT}</div>
                                    <div class="tp-uk-badge uk-badge uk-border-circle uk-float-right  <!-- IF !{MSG_NEW} -->uk-hidden<!-- ENDIF -->" data-id="{MSG_ID}">&nbsp;</div>  
                                </div> 
                            </a>
                        </li>
                        <!-- END: MSG_LIST -->
                    </ul>
                    <!-- ELSE -->
                    <div class="uk-vertical-align uk-text-center uk-height-1-1">
                        <div class="uk-vertical-align-middle">
                            <i class="uk-icon-users msg-no-dialog-icon"></i>
                            <p class="uk-text-muted">Cписок пользователей<br> скем видеться переписка</p>
                        </div>
                        
                    </div>
                    <!-- ENDIF -->
                </div>
                <div class="uk-width-medium-3-5 uk-padding-left-remove">
                    <!-- IF  {DIALOG_ID} -->
                    <div id="scroll" class="msg-scroll">       
                        <div id="formsg">
                            <!-- BEGIN: MSG_ROW -->
                            <div id="{MSG_ROW_ID}" class="uk-grid">
                                <div class="uk-width-2-10 uk-text-center uk-padding-remove">
                                    <img class="msg-avatar uk-border-circle" src="<!-- IF {MSG_ROW_USER_AVATAR_SRC} -->{MSG_ROW_USER_AVATAR_SRC}<!-- ELSE -->/datas/defaultav/blank.png<!-- ENDIF -->" alt="">
                                </div>
                                <div class="uk-width-8-10 uk-padding-remove">  
                                    <div class="uk-margin-top ti-linck-black">{MSG_ROW_USER_NAME} <div class="uk-float-right"><span class="uk-text-small uk-text-success">{MSG_ROW_DATE}</span></div></div>
                                    <div class="uk-text-muted uk-margin-small-top">{MSG_ROW_TEXT}</div>
                                </div> 
                            </div>
                            <!-- END: MSG_ROW -->
                        </div>       
                    </div>
                    <form action="{MSG_FORM_SEND}" method="post" id="dialogform" data-dialog-id="{DIALOG_ID}" class="uk-form uk-margin-right uk-margin-left uk-margin-top uk-position-relative">
                        {MSG_FORM_TEXT}
                        <button id="dialogbutton" type="submit" class="uk-button uk-button-success uk-margin-small-top tp-button-absal"><i class="uk-icon-paper-plane"></i></button>
                    </form>    
                    <!-- ELSE -->
                    <div class="uk-vertical-align uk-text-center uk-height-1-1">
                        <div class="uk-vertical-align-middle" id="create-dialog-form" style="display: none;">
                            <form class="uk-form" id="search" data-uk-autocomplete="{method: 'GET', source:'/{PHP|cot_url("messages", "m=search")}'}">
                                <input type="text" class="uk-form-large" id="usersearch" name="usersearch" placeholder="Поиск пользователя">
                                <script type="text/autocomplete">
                            <ul id="tmp-search-results">
                                {{~items}}
                                <li data-value="{{ $item.value }}" class="uk-margin-bottom">
                                    <a href="{{ $item.url }}" class="uk-grid ti-linck-black">
                                        <div class="uk-width-1-4">
                                            <img class="msg-avatar uk-border-circle" src="{{{ $item.avatar }}}" alt="">
                                    </div>
                                        <div class="uk-width-3-4 tp-box-mgs uk-text-left">  
                                            <div class="uk-margin-top">{{ $item.title }}</div>
                                            <div class="uk-text-muted uk-margin-small-top uk-text-small">{{ $item.text }}</div>
                                    </div>
                                    </a>
                                    </li>
                                {{/items}}
                                    </ul>
                                </script>
                            </form>
                            <ul class="uk-list uk-nav-autocomplete uk-autocomplete-results" id="search-results" style="display: none;"></ul>
                        </div>
                        <div class="uk-vertical-align-middle" id="create-dialog-message">
                            <i class="uk-icon-commenting-o msg-no-dialog-icon"></i>
                            <div class="uk-margin-large-top">
                                <span class="uk-text-muted">{PHP.L.msg_please_select_dialog}</span> <a href="#" data-search="users">{PHP.L.msg_create_dialog}</a>
                            </div>
                        </div>
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->
