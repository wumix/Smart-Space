{include file="overall_header.tpl"}
<center>


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
    <th colspan="3">{$mod_module}</th>
</tr>
<tr>
    <td colspan="3"><strong>{$mod_info}</strong></td>
</tr>
{foreach key=ID item=Info from=$Modules}
<tr>
	<td>{$Info.name}</td>
	{if $Info.state == 1}
		<td style="color:green"><b>{$mod_active}</b></td>
		<td><a href="?page=module&amp;mode=deaktiv&amp;id={$ID}">{$mod_change_deactive}</a></td>
	{else}
		<td style="color:red"><b>{$mod_deactive}</b></td>
		<td><a href="?page=module&amp;mode=aktiv&amp;id={$ID}">{$mod_change_active}</a></td>
	{/if}
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


</center>
{include file="overall_footer.tpl"}