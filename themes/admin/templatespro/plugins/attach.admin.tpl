<!-- BEGIN: MAIN -->
<script src="{PHP.cfg.plugins_dir}/attach/assets/js/attach.admin.js" type="text/javascript"></script>	

<div id="catgenerator" style="display:none">
    <div class="uk-overflow-auto">
    <table class="uk-table uk-table-hover">
        <tr>
            <th>{PHP.L.Extension}</th>
            <th>{PHP.L.Category}</th>
            <th>{PHP.L.Path}</th>
            <th>{PHP.L.att_req}</th>
            <th>{PHP.L.att_fileext}</th>
            <th>{PHP.L.att_size}</th>
            <th>&nbsp;</th>
        </tr>
        <tr class="newscat" style="display: none;">
            <td><input type="text" class="text ca_ext uk-input" name="ca_ext" value="" size="12" maxlength="255" /></td>
            <td><input type="text" class="text ca_cat uk-input" name="ca_cat" value="" size="12" maxlength="255" /></td>
            <td><input type="text" class="text ca_path uk-input" name="ca_path" value="" size="12" maxlength="255" /></td>
            <td class="uk-text-center"><input type="checkbox" class="ca_req" name="ca_req" value=""/></td>
            <td>
                <select class="text ca_fileext uk-select" name="ca_ext">
                    <option value="">Все файлы</option>
                    <option value="image/*">Только картинки</option>
                    <option value="application/x-rar-compressed,application/zip, application/octet-stream">Только Архивы</option>
                    <option value="application/msword,application/pdf,application/mspowerpoint,application/powerpoint,application/mspowerpoint,application/octet-stream,text/plain">Только Документы</option>
                </select>
            </td>
            <td><input type="text" class="text ca_size  uk-input" name="ca_size" value="" size="2" maxlength="255" /></td>
            <td><a href="#" class="deloption negative uk-button uk-button-default uk-text-danger" style="display:none" title="{PHP.L.Delete}" uk-tooltip>{PHP.L.Delete}</a></td>
        </tr>
        <!-- BEGIN: ADDITIONAL -->
        <tr class="newscat">
            <td><input type="text" class="text ca_ext uk-input" name="ca_ext" value="{ADDMODULE}" size="12" maxlength="255" /></td>
            <td><input type="text" class="text ca_cat uk-input" name="ca_cat" value="{ADDCATEGORY}" size="12" maxlength="255" /></td>
            <td><input type="text" class="text ca_path uk-input" name="ca_path" value="{ADDPATH}" size="12" maxlength="255" /></td>
            <td class="uk-text-center"><input type="checkbox" class="ca_req" name="ca_req" value="{ADDREQ}" <!-- IF {ADDREQ} -->checked="checked"<!-- ENDIF --> /></td>
            <td>
                <select class="text ca_fileext uk-select" name="ca_ext">
                    <option value="" <!-- IF !{ADDEXT} -->selected<!-- ENDIF -->>Все файлы</option>
                    <option value="image/*" <!-- IF {ADDEXT} == "image/*" -->selected<!-- ENDIF -->>Только картинки</option>
                    <option value="application/x-rar-compressed,application/zip, application/octet-stream" <!-- IF {ADDEXT} == "application/x-rar-compressed,application/zip, application/octet-stream" -->selected<!-- ENDIF -->>Только Архивы</option>
                    <option value="application/msword,application/pdf,application/mspowerpoint,application/powerpoint,application/mspowerpoint,application/octet-stream,text/plain" <!-- IF {ADDEXT} == "application/msword,application/pdf,application/mspowerpoint,application/powerpoint,application/mspowerpoint,application/octet-stream,text/plain" -->selected<!-- ENDIF -->>Только Документы</option>
                </select>
            </td>
            <td><input type="text" class="text ca_size uk-input" name="ca_size" value="{ADDMAX}" size="2" maxlength="255" /></td>
            <td><a href="#" class="deloption negative uk-button uk-button-default uk-text-danger" style="display:none" title="{PHP.L.Delete}" uk-tooltip>{PHP.L.Delete}</a></td>
        </tr>
        <!-- END: ADDITIONAL -->
        <tr id="addtr">
            <td class="valid" colspan="8"><button class="uk-button uk-button-default" name="addoption" id="addoption" type="button">{PHP.L.Add}</button></td>
        </tr>
    </table>
    </div>
</div>
<!-- END: MAIN -->