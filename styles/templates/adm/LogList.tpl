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
	<th>{$log_id}</th>
	<th>{$log_admin}</th>
	<th>{$log_uni}</th>
	<th>{$log_target}</th>
	<th>{$log_time}</th>
	<th>{$log_log}</th>
</tr>
{foreach item=LogInfo from=$LogArray}
<tr>
	<td>{$LogInfo.id}</td>
	<td>{$LogInfo.admin}</td>
	<td>{$LogInfo.target_uni}</td>
	<td>{$LogInfo.target}</td>
	<td>{$LogInfo.time}</td>
	<td><a href='?page=log&type=detail&id={$LogInfo.id}'>{$log_view}</a></td>
</tr>
{/foreach}
												
												
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