{block name="title" prepend}{$LNG.write_message}{/block}
{block name="content"}
                                        <!-- widget edit box -->
                                        <div class="jarviswidget-editbox">
                                                <!-- This area used as dropdown edit box -->

                                        </div>
                                        <!-- end widget edit box -->

                                        <!-- widget content -->
                                        <div class="widget-body no-padding">

<form name="message" id="message" action="" class="smart-form">

                                                        <header>{$LNG.write_message}</header>

                                                        <fieldset>
                                                                <div class="row">
                                                                        <section class="col col-6">
                                                                                <label class="label">{$LNG.mg_send_to}</label>
                                                                                <label class="input">
                                                                                        <i class="icon-append fa fa-user"></i>
                                                                                        <input type="text" name="to" value="{$OwnerRecord.username} [{$OwnerRecord.galaxy}:{$OwnerRecord.system}:{$OwnerRecord.planet}]" id="named">
                                                                                </label>
                                                                        </section>
                                                                </div>

                                                                <section>
                                                                        <label class="label">{$LNG.mg_subject}</label>
                                                                        <label class="input">
                                                                                <i class="icon-append fa fa-tag"></i>
                                                                                <input type="text" name="subject" id="subject" size="40" maxlength="40" value="{if !empty($subject)}{$subject}{else}{$LNG.mg_no_subject}{/if}">
                                                                        </label>
                                                                </section>

                                                                <section>
                                                                        <label class="label">{$LNG.mg_message}<br>(<span id="cntChars">0</span>&nbsp;/&nbsp;5.000&nbsp;{$LNG.mg_characters})</label>
                                                                        <label class="textarea">
                                                                                <i class="icon-append fa fa-comment"></i>
                                                                                <textarea name="text" id="text" cols="40" rows="10" onkeyup="$('#cntChars').text($(this).val().length);"></textarea>
                                                                        </label>
                                                                </section>
                                                        </fieldset>

                                                        <footer>
           <input id="submit" class="btn btn-block btn-primary" type="button" onClick="check();" name="button" value="{$LNG.mg_send}">
                                                        </footer>

                                                        <div class="message">
                                                                <i class="fa fa-thumbs-up"></i>
                                                                <p>Your message was successfully sent! <br>Deine Nachricht wurde erfolgreich verwendet
           </p>
                                                        </div>
                                                </form>

                                        </div>
                                        <!-- end widget content -->

                                </div>
                                <!-- end widget div -->

                        </div>
                        <!-- end widget -->


                </article>
                <!-- END COL -->

        </div>

        <!-- END ROW -->

</section>
<!-- end widget grid -->
<br>
<br>
{/block}
{block name="script" append}
<script type="text/javascript">
function check(){
        if($('#text').val().length == 0) {
                alert('{$LNG.mg_empty_text}');
                return false;
        } else {
                $('submit').attr('disabled','disabled');
                $.post('game.php?page=messages&mode=send&id={$id}&ajax=1', $('#message').serialize(), function(data) {
                        alert(data);
                        parent.$.fancybox.close();
                        return true;
                }, 'json');
        }
}
</script>
{/block}