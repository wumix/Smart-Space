{include file="overall_header.tpl"}
<form action="admin.php?page=support&mode=send" method="post" id="form">
<input type="hidden" name="id" value="{$ticketID}">


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
	{foreach $answerList as $answerID => $answerRow}	
	{if $answerRow@first}
	<tr>
		<th colspan="2"><a href="admin.php?page=support">{$LNG.ti_overview}</a></th>
	</tr>
	<tr>
		<th colspan="2">{$LNG.ti_read} :: {$answerRow.subject}</th>
	</tr>
	{/if}
	<tr>
		<td class="left" colspan="2">
			<p>{if !$answerRow@first}
				<b>{$LNG.ti_subject}: {$answerRow.subject}</b><br>
			{$LNG.ti_responded}: <b>{$answerRow.time}</b> {$LNG.ti_from} <b>{$answerRow.ownerName}</b>
			{/if}
			{if $answerRow@first}
			{$LNG.ti_create}: <b>{$answerRow.time}</b> {$LNG.ti_from} <b>{$answerRow.ownerName}</b>
				<br>{$LNG.ti_category}: {$categoryList[$answerRow.categoryID]}
			{/if}
			</p>
			<hr>
			<p>
				{$answerRow.message}
			</p>
		</td>
	</tr>
	{/foreach}
	<tr>
		<th colspan="2">{$LNG.ti_answer}</th>
	</tr>
	<tr>
		<td style="width:30%"><label for="message">{$LNG.ti_message}</label></td>
		<td style="width:70%"><textarea class="validate[required]" id="message" name="message" row="60" cols="8" style="width:100%;"></textarea></td>
	</tr>
	<tr>
		<td style="width:30%">{if $ticket_status < 2}{$LNG.ti_close}{else}{$LNG.ti_open}{/if}</td>
		<td style="width:70%"><input type="checkbox" name="change_status" value="1"></td>
	</tr>	
	<tr>
		<td colspan="2"><input type="submit" value="{$LNG.ti_submit}" onclick="parent.rightFrame.document.location.reload();"></td>
	</tr>												</thead>
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