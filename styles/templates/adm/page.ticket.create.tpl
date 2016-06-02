{include file="overall_header.tpl"}
<form action="admin.php?page=support&amp;mode=send" method="post" id="form">
<input type="hidden" name="id" value="0">


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
		<td><input class="validate[required]" type="text" id="subject" name="subject" size="40" maxlength="255"></td>
	</tr>
	<tr>
		<td><label for="message">{$LNG.ti_message}</label></td>
		<td><textarea class="validate[required]" id="message" name="message" row="60" cols="8" style="height:100px;"></textarea></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="{$LNG.ti_submit}"></td>
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