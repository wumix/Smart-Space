{block name="title" prepend}{$LNG.ti_create_head} - {$LNG.lm_support}{/block}
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
<input type="hidden" name="id" value="0">
	<tr>
		<th colspan="2">{$LNG.ti_create_head}</th>
	</tr>
	<tr>
		<td colspan="2" class="left">{$LNG.ti_create_info}</td>
	</tr>
	<tr>
		<td style="width:30%"><label for="category">{$LNG.ti_category}</label></td>
		<td style="width:70%"><select id="category" name="category">{html_options options=$categoryList}</select></td>
	</tr>
	<tr>
		<td><label for="subject">{$LNG.ti_subject}</label></td>
		<td><font color="black"><input class="validate[required]" type="text" id="subject" name="subject" size="40" maxlength="255"></td>
	</tr>
	<tr>
		<td><label for="message">{$LNG.ti_message}</label></td>
		<td><textarea class="validate[required]" id="message" name="message" row="60" cols="8" style="width:100%;"></textarea></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" class="btn btn-primary" value="{$LNG.ti_submit}"></td>
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