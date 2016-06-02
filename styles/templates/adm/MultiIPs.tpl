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
		<th>{$mip_ip}</th>
		<th>{$LNG.se_id_owner}</th>
		<th>{$LNG.se_name}</th>
		<th>{$LNG.se_email}</th>
		<th>{$LNG.ac_register_time}</th>
		<th>{$LNG.ac_act_time}</th>
		<th>{$LNG.mip_known}</th>
	</tr>
	{foreach $multiGroups as $IP => $Users}
	<tr>
		<td rowspan="{count($Users)}">{$IP}</td>
		{foreach $Users as $ID => $User}
		<td class="left" style="padding:3px;">{$ID}</td>
		<td class="left" style="padding:3px;"><a href="admin.php?page=accountdata&id_u={$ID}">{$User.username} (?)</a></td>
		<td class="left" style="padding:3px;">{$User.email}</td>
		<td class="left" style="padding:3px;">{$User.register_time}</td>
		<td class="left" style="padding:3px;">{$User.onlinetime}</td>
		<td class="center" style="padding:3px;">{if ($User.isKnown != 0)}<a href="admin.php?page=multiips&amp;action=unknown&amp;id={$ID}"><img src="styles/resource/images/true.png"></a>{else}<a href="admin.php?page=multiips&amp;action=known&amp;id={$ID}"><img src="styles/resource/images/false.png"></a>{/if}</td>
		</tr>{if !$User@last}<tr>{/if}
		{/foreach}
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