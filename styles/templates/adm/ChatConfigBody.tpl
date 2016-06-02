{include file="overall_header.tpl"}
<form action="" method="post">
<input type="hidden" name="opt_save" value="1">


							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-table"></i> </span>
									<h2>&nbsp</h2>

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
										<form action="" method="post" name="countt">
											<table class="table table-bordered">
												<thead>
												
												
<tr>
	<th colspan="2">{$se_server_parameters}</th>
	<th>(?)</th>
</tr><tr>
	<td>{$ch_channelname}</td>
	<td><input name="chat_channelname" value="{$chat_channelname}" type="text"></td>
	<td>&nbsp;</td>
</tr><tr>
	<td>{$ch_botname}</td>
	<td><input name="chat_botname" value="{$chat_botname}" type="text"></td>
	<td>&nbsp;</td>
</tr><tr>
	<td>{$ch_nickchange}</td>
	<td><input name="chat_nickchange"{if $chat_nickchange == '1'} checked="checked"{/if} type="checkbox"></td>
	<td>&nbsp;</td>
</tr><tr>
	<td>{$ch_logmessage}</td>
	<td><input name="chat_logmessage"{if $chat_logmessage == '1'} checked="checked"{/if} type="checkbox"></td>
	<td>&nbsp;</td>
</tr><tr>
	<td>{$ch_allowmes}</td>
	<td><input name="chat_allowmes"{if $chat_allowmes == '1'} checked="checked"{/if} type="checkbox"></td>
	<td>&nbsp;</td>
</tr><tr>
	<td>{$ch_allowchan}</td>
	<td><input name="chat_allowchan"{if $chat_allowchan == '1'} checked="checked"{/if} type="checkbox"></td>
	<td>&nbsp;</td>
</tr><tr>
	<td>{$ch_closed}</td>
	<td><input name="chat_closed"{if $chat_closed == '1'} checked="checked"{/if} type="checkbox"></td>
	<td>&nbsp;</td>
</tr>
<tr>
	<td colspan="3"><input value="{$se_save_parameters}" type="submit"></td>
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
{include file="overall_footer.tpl"}