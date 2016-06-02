{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-inbox"></i> </span>
									<h2>{$LNG.lm_messages}</h2>

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
<form action="game.php?page=messages" method="post">
<input type="hidden" name="mode" value="action">
<input type="hidden" name="ajax" value="1">
<input type="hidden" name="messcat" value="{$MessID}">
<input type="hidden" name="side" value="{$page}">
	<tr>
		<th colspan="4">{$LNG.mg_message_title}</th>
	</tr>
	{if $MessID != 999}
	<tr>
		<td colspan="4">
			<a href="game.php?page=messages&action=delete"><button class="btn btn-primary">Delete all messages</button></a>
		</td>
	</tr>
	</form>

	{/if}
	<tr style="height: 20px;">
		<td class="right" colspan="4">{$LNG.mg_page}: {if $page != 1}<a href="#" onclick="Message.getMessages({$MessID}, {$page - 1});return false;">&laquo;</a>&nbsp;{/if}{for $site=1 to $maxPage}<a href="#" onclick="Message.getMessages({$MessID}, {$site});return false;">{if $site == $page}<b>[{$site}]</b>{else}[{$site}]{/if}</a>{if $site != $maxPage}&nbsp;{/if}{/for}{if $page != $maxPage}&nbsp;<a href="#" onclick="Message.getMessages({$MessID}, {$page + 1});return false;">&raquo;</a>{/if}</td>
	</tr>
	<tr style="height: 20px;">
		<td>{$LNG.mg_action}</td>
		<td>{$LNG.mg_date}</td>
		<td>{if $MessID != 999}{$LNG.mg_from}{else}{$LNG.mg_to}{/if}</td>
		<td>{$LNG.mg_subject}</td>
	</tr>
	{foreach $MessageList as $Message}
	<tr id="message_{$Message.id}" class="message_head{if $MessID != 999 && $Message.unread == 1} mes_unread{/if}">
		<td style="width:40px;" rowspan="2">
		{if $MessID != 999}<input name="messageID[{$Message.id}]" value="1" type="checkbox">{/if}
		</td>
		<td>{$Message.time}</td>
		<td>{$Message.from}</td>
		<td>{$Message.subject}
		{if $Message.type == 1 && $MessID != 999}
		<a href="#" onclick="return Dialog.PM({$Message.sender}, Message.CreateAnswer('{$Message.subject}'));" title="{$LNG.mg_answer_to} {strip_tags($Message.from)}"><img src="{$dpath}img/m.gif" border="0"></a>
		{/if}
		</td>
	</tr>
	<tr class="messages_body">
		<td colspan="3" class="left">
		<table class="table table-bordered"><tbody><tr>
		{$Message.text}
		</tr><tbody></table>
		</td>
	</tr>
	{/foreach}
	<tr style="height: 20px;">
		<td class="right" colspan="4">{$LNG.mg_page}: {if $page != 1}<a href="#" onclick="Message.getMessages({$MessID}, 1);return false;">&laquo;</a>&nbsp;{/if}{for $site=1 to $maxPage}<a href="#" onclick="Message.getMessages({$MessID}, {$site});return false;">{if $site == $page}<b>[{$site}]</b>{else}[{$site}]{/if}</a>{if $site != $maxPage}&nbsp;{/if}{/for}{if $page != $maxPage}&nbsp;<a href="#" onclick="Message.getMessages({$MessID}, {$maxPage});return false;">&raquo;</a>{/if}</td>
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


{/block}