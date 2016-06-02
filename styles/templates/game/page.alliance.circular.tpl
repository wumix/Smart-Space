{block name="title" prepend}{$LNG.lm_alliance}{/block}
{block name="content"}

<form name="message" id="message">
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-users"></i> </span>
									<h2>{$LNG.lm_alliance}</h2>

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
													<tr>
		<td>{$LNG.al_receiver}</td>
		<td>
		{html_options name=rankID options=$RangeList}
		</td>
		<tr>
		<td>{$LNG.mg_subject}</td>
	<td><font color="black"><input type="text" name="subject" id="subject" size="40" maxlength="40" value="{$LNG.mg_no_subject}"></td>
	</tr>
	<tr>
		<td>{$LNG.al_message} (<span id="cntChars">0</span> / 5000 {$LNG.al_characters})</td>
		<td>
			<textarea name="text" cols="60" rows="10" onkeyup="$('#cntChars').text($(this).val().length);"></textarea>
		</td>
	</tr>
	<tr>
		<th style="text-align:center;">
		<input type="reset" class="btn btn-primary" value="{$LNG.al_circular_reset}"></th>
		<th style="text-align:center;"><input class="btn btn-primary" type="button" onClick="return check();" name="button" value="{$LNG.al_circular_send_submit}"></th>
		</th>
	</tr>
													</tr>
												</thead>
											</table>
											
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->
							</form>


{/block}
{block name="script" append}
<script type="text/javascript">
function check(){
	if(document.message.text.value == '') {
		alert('{$LNG.mg_empty_text}');
		return false;
	} else {
		$.post('game.php?page=alliance&mode=circular&action=send&ajax=1', $('#message').serialize(), function(data){
			data = $.parseJSON(data);
			alert(data.message);
			if(!data.error) {
				parent.$.fancybox.close();
			}
		});
		return true;
	}
}
</script>
{/block}