{block name="title" prepend}{$LNG.write_message}{/block}
{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-inbox"></i> </span>
									<h2>{$LNG.write_message}</h2>

								</header>

								<!-- widget div-->
								<div>

									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->

									</div>
									<!-- end widget edit box -->

									<!-- widget content -->
									<div class="widget-body">
										
										<div class="table-responsive">
										
											<table class="table table-bordered">
												<thead>
													<tr><form name="message" id="message" action="">
		<tr>
			<th colspan="2">{$LNG.mg_send_new}</th>
		</tr><tr>
			<td style="width:30%">{$LNG.mg_send_to}</td>
			<td style="width:70%"><font color="black"><input type="text" name="to" size="40" value="{$OwnerRecord.username} [{$OwnerRecord.galaxy}:{$OwnerRecord.system}:{$OwnerRecord.planet}]"></td>
		</tr><tr>
			<td style="width:30%">{$LNG.mg_subject}</td>
			<td style="width:70%"><font color="black"><input type="text" name="subject" id="subject" size="40" maxlength="40" value="{if !empty($subject)}{$subject}{else}{$LNG.mg_no_subject}{/if}"></td>
		</tr><tr>
			<td style="width:30%">{$LNG.mg_message}<br>(<span id="cntChars">0</span>&nbsp;/&nbsp;5.000&nbsp;{$LNG.mg_characters})</th>
			<td style="width:70%"><textarea name="text" id="text" cols="40" rows="10" onkeyup="$('#cntChars').text($(this).val().length);"></textarea></td>
		</tr><tr>
			<td colspan="2"><input id="submit" class="btn btn-block btn-primary" type="button" onClick="check();" name="button" value="{$LNG.mg_send}"></td>
		</tr>
</form>
												</thead>
											</table>
											
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->

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