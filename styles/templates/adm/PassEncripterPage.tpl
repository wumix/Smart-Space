{include file="overall_header.tpl"}
<center>
<form method="post" action="">


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
	<th colspan="2">{$et_md5_encripter}</th>
</tr>
<tr>
	<td>{$et_pass}</td>
	<td><input type="text" name="md5q" size="45" value="{$md5_md5}"></td>
</tr><tr>
	<td>{$et_result}</td>
	<td><input type="text" name="md5w" size="45" value="{$md5_enc}"></td>
</tr><tr>
	<td colspan="2"><input type="submit" value="{$et_encript}"></td>
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
</center>
{include file="overall_footer.tpl"}