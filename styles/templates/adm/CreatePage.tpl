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
   	<td><a href="?page=create&amp;mode=user"><img src="./styles/resource/images/admin/arrowright.png" width="16" height="10"> {$new_creator_title_u}</a></td>
   	<td><a href="?page=create&amp;mode=planet"><img src="./styles/resource/images/admin/arrowright.png" width="16" height="10"> {$new_creator_title_p}</a></td>
   	<td><a href="?page=create&amp;mode=moon"><img src="./styles/resource/images/admin/arrowright.png" width="16" height="10"> {$new_creator_title_l}</a></td>
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