{include file="overall_header.tpl"}
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
      <th colspan="2">{$cs_title}</th>
    </tr>
	<tr>
      <td>{$cs_point_per_resources_used} ({$cs_resources})</td>
      <td><input type="text" name="stat_settings" value="{$stat_settings}"></td>
    </tr>
    <tr>
      <td>{$cs_points_to_zero}</td>
      <td>{html_options name=stat options=$Selector selected=$stat}</td>
    </tr>
    <tr>
      <td>{$cs_access_lvl}</td>
      <td><input type="text" name="stat_level" value="{$stat_level}"></td>
    </tr>
	<tr>
      <td colspan="2"><a href="admin.php?page=cronjob">{$cs_time_between_updates}</a></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" value="{$cs_save_changes}"></td>
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