{block name="title" prepend}{$LNG.lm_fleet}{/block}
{block name="content"}

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
															<li class="active" data-target="#step2">
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
<form action="game.php?page=fleetStep2" method="post" onsubmit="return CheckTarget()" id="form">
	<input type="hidden" name="token" value="{$token}">
	<input type="hidden" name="fleet_group" value="0">
	<input type="hidden" name="target_mission" value="{$mission}">
	
<tr style="height:20px;">
			<td style="width:50%">{$LNG.fl_destiny}</td>
			<td>
				<font color="black"><input type="text" id="galaxy" name="galaxy" size="3" maxlength="2" onkeyup="updateVars()" value="{$galaxy}">
				<font color="black"><input type="text" id="system" name="system" size="3" maxlength="3" onkeyup="updateVars()" value="{$system}">
				<font color="black"><input type="text" id="planet" name="planet" size="3" maxlength="2" onkeyup="updateVars()" value="{$planet}">
				<select id="type" name="type" onchange="updateVars()">
					{html_options options=$typeSelect selected=$type}
				</select>
			</td>
		</tr>
		<tr style="height:20px;">
			<td>{$LNG.fl_fleet_speed}</td>
			<td>
				<select id="speed" name="speed" onChange="updateVars()">
					{html_options options=$speedSelect}
				</select> %
			</td>
		</tr>
		<tr style="height:20px;">
			<td>{$LNG.fl_distance}</td>
			<td id="distance">-</td>
		</tr>
		<tr style="height:20px;">
			<td>{$LNG.fl_flying_time}</th>
			<td id="duration">-</td>
		</tr>
		<tr style="height:20px;">
			<td>{$LNG.fl_flying_arrival}</th>
			<td id="arrival">-</td>
		</tr>
		<tr style="height:20px;">
			<td>{$LNG.fl_flying_return}</th>
			<td id="return">-</td>
		</tr>
		<tr style="height:20px;">
			<td>{$LNG.fl_fuel_consumption}</td>
			<td id="consumption">-</td>
		</tr>
		<tr style="height:20px;">
			<td>{$LNG.fl_max_speed}</td>
			<td id="maxspeed">-</td>
		</tr>
		<tr style="height:20px;">
			<td>{$LNG.fl_cargo_capacity}</td>
			<td id="storage">-</td>
		</tr>
											</tbody>
										</table>
								
	<table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
	
<tr style="height:20px;">
		<tr style="height:20px;">
		{foreach $colonyList as $ColonyRow}
		{if ($ColonyRow@iteration % $themeSettings.COLONY_ROWS_ON_FLEET1) === 1}<tr style="height:20px;">{/if}
		<td>
			<a href="javascript:setTarget({$ColonyRow.galaxy},{$ColonyRow.system},{$ColonyRow.planet},{$ColonyRow.type});updateVars();">{$ColonyRow.name}{if $ColonyRow.type == 3}{$LNG.fl_moon_shortcut}{/if} [{$ColonyRow.galaxy}:{$ColonyRow.system}:{$ColonyRow.planet}]</a>
		</td>
		{if $ColonyRow@last && ($ColonyRow@iteration % $themeSettings.COLONY_ROWS_ON_FLEET1) !== 0}
		{$to = $themeSettings.COLONY_ROWS_ON_FLEET1 - ($ColonyRow@iteration % $themeSettings.COLONY_ROWS_ON_FLEET1)}
		{for $foo=1 to $to}<td>&nbsp;</td>{/for}
		{/if}
		{if ($ColonyRow@iteration % $themeSettings.COLONY_ROWS_ON_FLEET1) === 0}</tr>{/if}
		{foreachelse}
		<tr style="height:20px;">
			<td colspan="{$themeSettings.COLONY_ROWS_ON_FLEET1}">{$LNG.fl_no_colony}</td>
		</tr>
		{/foreach}	
		</tr>
											</tbody>
										</table>
				
															</div>
				
															
				
														</div>
														
				
														<div class="form-actions">
															<div class="row">
																<div class="col-sm-12">
																	<ul class="pager wizard no-margin">
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
										
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
								
				
							</div>
							<!-- end widget -->


<script type="text/javascript">
data			= {$fleetdata|json};
shortCutRows	= {$themeSettings.SHORTCUT_ROWS_ON_FLEET1};
fl_no_shortcuts	= '{$LNG.fl_no_shortcuts}';
</script>
{/block}