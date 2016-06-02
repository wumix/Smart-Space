{include file="overall_header.tpl"}


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
	<th colspan="2">{$LNG.log_cat}</th>
</tr>
<tr>
	<td width="50%"><a href="?page=log&amp;type=planet">{$LNG.log_planet}</a></td>
	<td width="50%"><a href="?page=log&amp;type=player">{$LNG.log_player}</a></td>
</tr>
<tr>
	<td><a href="?page=log&amp;type=settings">{$LNG.log_settings}</a></td>
	<td><a href="?page=log&amp;type=present">{$LNG.log_present}</a></td>
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


{include file="overall_footer.tpl"}