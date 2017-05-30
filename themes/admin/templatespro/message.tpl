<!-- BEGIN: MAIN -->
<div class="uk-alert uk-alert-warning" uk-alert>
  <h1 class="uk-margin-remove">{MESSAGE_TITLE}</h1>
  <div>
    <div>{MESSAGE_BODY}</div>
    <!-- BEGIN: MESSAGE_CONFIRM -->
    <div class="uk-text-center">
      <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="uk-button"> {PHP.L.Yes}</a>
      <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="uk-button"> {PHP.L.No}</a>
    </div>
    <!-- END: MESSAGE_CONFIRM -->
  </div>
</div>
<!-- END: MAIN -->