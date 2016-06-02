{block name="title" prepend}{$LNG.lm_buddylist}{/block}
{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-empire"></i> </span>
									<h2>{$LNG.lm_buddylist}</h2>

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
<form name="buddy" id="buddy" action="game.php?page=buddyList&amp;mode=send&amp;ajax=1" method="post">
<input type="hidden" name="id" value="{$id}">
    <tr>
        <th colspan="2">{$LNG.bu_request_message}</th>
    </tr>
	<tr style="height:20px;">
        <td>{$LNG.bu_player}</td>
        <td><input type="text" value="{$username} [{$galaxy}:{$system}:{$planet}]" size="40" readonly></td>
    </tr>
	<tr>
        <td>{$LNG.bu_request_text}(<span id="cntChars">0</span> / 5000 {$LNG.bu_characters})</td>
        <td><textarea name="text" id="text" cols="40" rows="10" size="100" onkeyup="$('#cntChars').text($(this).val().length);"></textarea></td>
    </tr>
	<tr>
        <td colspan="2"><input type="submit" value="{$LNG.bu_send}"></td>
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