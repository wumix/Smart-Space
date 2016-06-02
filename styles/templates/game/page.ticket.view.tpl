{block name="title" prepend}{$LNG.ti_read} - {$LNG.lm_support}{/block}
{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-support"></i> </span>
									<h2>{$LNG.lm_support}</h2>

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
<form action="game.php?page=ticket&mode=send" method="post" id="form">
<input type="hidden" name="id" value="{$ticketID}">
	{foreach $answerList as $answerID => $answerRow}	
	{if $answerRow@first}
	<tr>
		<th colspan="2">{$LNG.ti_read} :: {$answerRow.subject}</th>
	</tr>
	{/if}
	<tr>
		<td class="left" colspan="2">
			{$LNG.ti_msgtime} <b>{$answerRow.time}</b> {$LNG.ti_from} <b>{$answerRow.ownerName}</b>
			{if $answerRow@first}
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
		<td colspan="2"><input class="btn btn-primary" type="submit" value="{$LNG.ti_submit}"></td>
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
<script>
$(document).ready(function() {
	$("#form").validationEngine('attach');
});
</script>
{/block}