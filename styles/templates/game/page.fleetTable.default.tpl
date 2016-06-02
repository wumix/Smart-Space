{block name="title" prepend}{$LNG.lm_fleet}{/block}
{block name="content"}

{if !empty($acsData)}
{include file="shared.fleetTable.acsTable.tpl"}
{/if}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-table"></i> </span>
									<h2>{$LNG.fl_fleets} {$activeFleetSlots} / {$maxFleetSlots} | {$activeExpedition} / {$maxExpedition} {$LNG.fl_expeditions}</h2>
				
								</header>
				
								<!-- widget div-->
								<div>
				
									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->
				
									</div>
									<!-- end widget edit box -->
				
									<!-- widget content -->
									<div class="widget-body no-padding">
				
										<table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
											<thead>			                
												<tr>
		<th>{$LNG.fl_mission}</th>
		<th>{$LNG.fl_beginning}</th>
		<th>{$LNG.fl_destiny}</th>
		<th>{$LNG.fl_objective}</th>
		<th>{$LNG.fl_order}</th>
		</tr>
		</thead>
		<tbody>
											{foreach name=FlyingFleets item=FlyingFleetRow from=$FlyingFleetList}
												<tr>
													<td>{$LNG.type_mission.{$FlyingFleetRow.mission}} {if $FlyingFleetRow.state == 1}
		<a title="{$LNG.fl_returning}">{$LNG.fl_r}</a>
	{else}
		<a title="{$LNG.fl_onway}">{$LNG.fl_a}</a>
	{/if} (<a class="tooltip_sticky" name="<table width='100%'><tr><th colspan='2' style='text-align:center;'>{$LNG.fl_info_detail}</th></tr>{foreach $FlyingFleetRow.FleetList as $shipID => $shipCount}<tr><td class='transparent'>{$LNG.tech.{$shipID}}:</td><td class='transparent'>{$shipCount}</td></tr>{/foreach}</table>">{$FlyingFleetRow.amount}</a>)</td>
													<td><a href="game.php?page=galaxy&amp;galaxy={$FlyingFleetRow.startGalaxy}&amp;system={$FlyingFleetRow.startSystem}">[{$FlyingFleetRow.startGalaxy}:{$FlyingFleetRow.startSystem}:{$FlyingFleetRow.startPlanet}]</a> {$FlyingFleetRow.startTime}</td>
													<td><a href="game.php?page=galaxy&amp;galaxy={$FlyingFleetRow.endGalaxy}&amp;system={$FlyingFleetRow.endSystem}">[{$FlyingFleetRow.endGalaxy}:{$FlyingFleetRow.endSystem}:{$FlyingFleetRow.endPlanet}]</a> {if $FlyingFleetRow.mission == 4}-{else}{$FlyingFleetRow.endTime}{/if}</td>
													<td>{$FlyingFleetRow.backin}</td>
													<td>{if !$isVacation && $FlyingFleetRow.state != 1}
		<form action="game.php?page=fleetTable&amp;action=sendfleetback" method="post">
		<input name="fleetID" value="{$FlyingFleetRow.id}" type="hidden">
		<input value="{$LNG.fl_send_back}" class="btn btn-block btn-danger" type="submit">
		</form>
		{if $FlyingFleetRow.mission == 1}
		<form action="game.php?page=fleetTable&amp;action=acs" method="post">
		<input name="fleetID" value="{$FlyingFleetRow.id}" type="hidden">
		<input value="{$LNG.fl_acs}" class="btn btn-block btn-danger" type="submit">
		</form>
		{/if}
	{else}
	&nbsp;-&nbsp;
	{/if}</td>
												</tr>
												{foreachelse}
													<tr>
													<td colspan="7">-</td>
												</tr>
											{/foreach}
											</tbody>
										</table>

									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
				
							</div>
							<!-- end widget -->
							
							
											
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false" data-widget-deletebutton="false">
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
									<span class="widget-icon"> <i class="fa fa-check"></i> </span>
									<h2>Select Fleet </h2>
				
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
				
										<div class="row">
												<div id="bootstrap-wizard-1" class="col-sm-12">
													<div class="form-bootstrapWizard">
														<ul class="bootstrapWizard form-wizard">
															<li class="active" data-target="#step1">
																<a href="#tab1" data-toggle="tab"> <span class="step">1</span> <span class="title"><font color="white">Select</font></span> </a>
															</li>
															<li data-target="#step2">
																<a href="#tab2" data-toggle="tab"> <span class="step">2</span> <span class="title"><font color="white">Destination</font></span> </a>
															</li>
															<li data-target="#step3">
																<a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title"><font color="white">Mission</font></span> </a>
															</li>
															<li data-target="#step4">
																<a href="#tab4" data-toggle="tab"> <span class="step">4</span> <span class="title"><font color="white">Complete</font></span> </a>
															</li>
														</ul>
														<div class="clearfix"></div>
													</div>
													<div class="tab-content">
														<div class="tab-pane active" id="tab1">
															<br>
															<h3></h3>
				
															<div class="row">
				
	<table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
<form action="?page=fleetStep1" method="post">
    <input type="hidden" name="galaxy" value="{$targetGalaxy}">
    <input type="hidden" name="system" value="{$targetSystem}">
    <input type="hidden" name="planet" value="{$targetPlanet}">
    <input type="hidden" name="type" value="{$targetType}">
    <input type="hidden" name="mission" value="{$targetMission}">
{foreach name=Fleets item=FleetRow from=$FleetsOnPlanet}
	<tr style="height:20px;">
		<td style="width:30px;"  ><a href="#" onclick="return Dialog.info({$FleetRow.id})"><img src="styles/gebaeude/{$FleetRow.id}.gif" alt="{$LNG.tech.{$FleetRow.id}}" width="30" height="30"></a></td>
        <td>{$LNG.tech.{$FleetRow.id}}</td>
		<td id="ship{$FleetRow.id}_value">{$FleetRow.count|number}</td>
		{if $FleetRow.speed != 0}
		<td><a class="btn btn-block btn-danger" href="javascript:maxShip('ship{$FleetRow.id}');">{$LNG.fl_max}</a></td>
		<td><font color="black"><input name="ship{$FleetRow.id}" id="ship{$FleetRow.id}_input" size="5" value="0"></font></td>
		{else}
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		{/if}
	</tr>
	{/foreach}
											</tbody>
										</table>
				
															</div>
				
															
				
														</div>
														
				
														<div class="form-actions">
															<div class="row">
																<div class="col-sm-12">
																	<ul class="pager wizard no-margin">
																		<li class="">
																			<a href="javascript:noShips();" class="btn txt-color-darken btn-primary" style="color:#666;">No ships</a>
																		</li>
																		<li class="">
																			<a href="javascript:maxShips();" class="btn txt-color-darken btn-primary" style="color:#666;">All Ships</a>
																		</li>
																		<li class="next">
																			<input style="" class="btn btn-primary" type="submit" value="Next">
																		</li>
																	</ul>
																</div>
															</div>
														</div>
				</form>
													</div>
												</div>
												
										</div>
										
																	<div class="show-stat-microcharts">
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">

						<div class="easy-pie-chart txt-color-orangeDark" data-percent="0" data-pie-size="50">
							
							<img src="styles/gebaeude/109.gif" height="70" width="70" style="margin:-50px -40px -10px 0px; -moz-border-radius: 35px; -webkit-border-radius: 35px; border-radius: 35px;" alt="">
							
						</div>
						{$LNG.fl_bonus_attack}: +{$bonusAttack} %
						
						<div class="sparkline txt-color-greenLight hidden-sm hidden-md pull-right" data-sparkline-type="line" data-sparkline-height="33px" data-sparkline-width="70px" data-fill-color="transparent"><canvas width="70" height="33" style="display: inline-block; width: 70px; height: 33px; vertical-align: top;"></canvas></div>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">

						<div class="easy-pie-chart txt-color-orangeDark" data-percent="0" data-pie-size="50">
							
							<img src="styles/gebaeude/110.gif" height="70" width="70" style="margin:-50px -40px -10px 0px; -moz-border-radius: 35px; -webkit-border-radius: 35px; border-radius: 35px;" alt="">
							
						</div>
						{$LNG.fl_bonus_defensive}: +{$bonusDefensive} %
						
						<div class="sparkline txt-color-greenLight hidden-sm hidden-md pull-right" data-sparkline-type="line" data-sparkline-height="33px" data-sparkline-width="70px" data-fill-color="transparent"><canvas width="70" height="33" style="display: inline-block; width: 70px; height: 33px; vertical-align: top;"></canvas></div>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">

						<div class="easy-pie-chart txt-color-orangeDark" data-percent="0" data-pie-size="50">
							
							<img src="styles/gebaeude/111.gif" height="70" width="70" style="margin:-50px -40px -10px 0px; -moz-border-radius: 35px; -webkit-border-radius: 35px; border-radius: 35px;" alt="">
							
						</div>
						{$LNG.fl_bonus_shield}: +{$bonusShield} %
						
						<div class="sparkline txt-color-greenLight hidden-sm hidden-md pull-right" data-sparkline-type="line" data-sparkline-height="33px" data-sparkline-width="70px" data-fill-color="transparent"><canvas width="70" height="33" style="display: inline-block; width: 70px; height: 33px; vertical-align: top;"></canvas></div>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">

						<div class="easy-pie-chart txt-color-orangeDark" data-percent="0" data-pie-size="50">
							
							<img src="styles/gebaeude/118.gif" height="70" width="70" style="margin:-50px -40px -10px 0px; -moz-border-radius: 35px; -webkit-border-radius: 35px; border-radius: 35px;" alt="">
							
						</div>
						{$LNG.tech.118}: +{$bonusHyperspace} %
						
						<div class="sparkline txt-color-greenLight hidden-sm hidden-md pull-right" data-sparkline-type="line" data-sparkline-height="33px" data-sparkline-width="70px" data-fill-color="transparent"><canvas width="70" height="33" style="display: inline-block; width: 70px; height: 33px; vertical-align: top;"></canvas></div>
					</div>
										
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
								
				
							</div>
							<!-- end widget -->
							


							



{/block}
{block name="script" append}<script src="scripts/game/fleetTable.js"></script>{/block}