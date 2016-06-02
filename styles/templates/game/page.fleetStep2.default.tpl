{block name="title" prepend}{$LNG.lm_fleet}{/block}
{block name="content"}

<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false" data-widget-deletebutton="false">

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
															<li class="active" data-target="#step3">
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
<form action="game.php?page=fleetStep3" method="post">
<input type="hidden" name="token" value="{$token}">
        <tr>
        	<th colspan="2">{$galaxy}:{$system}:{$planet} - {$LNG.type_planet.{$type}}</th>
        </tr>
		<tr>
			<th>{$LNG.fl_mission}</th>
        	<th>{$LNG.fl_resources}</th>
        </tr>
		<tr>
			<td class="left top" style="width:50%;margin:0;padding:0;"{if $StaySelector} rowspan="3"{/if}>
        		<table border="0" cellpadding="0" cellspacing="0" width="259" style="margin:0;padding:0;">
        			{foreach $MissionSelector as $MissionID} 
					<tr style="height:20px;">
						<td class="transparent left">
						<input id="radio_{$MissionID}" type="radio" name="mission" value="{$MissionID}" {if $mission == $MissionID}checked="checked"{/if} style="width:60px;"><label for="radio_{$MissionID}">{$LNG.type_mission.{$MissionID}}</label><br>
							{if $MissionID == 15}<br><div style="color:red;padding-left:13px;">{$LNG.fl_expedition_alert_message}</div><br>{/if}
							{if $MissionID == 11}<br><div style="color:red;padding-left:13px;">{$LNG.fl_dm_alert_message}</div><br>{/if}
						</td>
					</tr>
					{/foreach}
        		</table>
        	</td>
        	<td class="top">
				<table border="0" cellpadding="0" cellspacing="0" width="259">
                    <tr style="height:20px;">
        				<td class="transparent">{$LNG.tech.901}</td>
        				<td class="transparent"><font color="black"><input name="metal" size="10" onchange="calculateTransportCapacity();" type="text"></td>
        			</tr>
                    <tr style="height:20px;">
        				<td class="transparent">{$LNG.tech.902}</td>
        				<td class="transparent"><font color="black"><input name="crystal" size="10" onchange="calculateTransportCapacity();" type="text"></td>
        			</tr>
                    <tr style="height:20px;">
        				<td class="transparent">{$LNG.tech.903}</td>
        				<td class="transparent"><font color="black"><input name="deuterium" size="10" onchange="calculateTransportCapacity();" type="text"></td>
        			</tr>
                    <tr style="height:20px;">
        				<td class="transparent">{$LNG.fl_resources_left}</td>
        				<td class="transparent" colspan="2" id="remainingresources">-</td>
        			</tr>
                    <tr style="height:20px;">
        				<td class="transparent" colspan="3"><a class="btn btn-primary" href="javascript:maxResources()">{$LNG.fl_all_resources}</a></td>
        			</tr>
                    <tr style="height:20px;">
        				<td class="transparent" colspan="3">{$LNG.fl_fuel_consumption}: <span id="consumption" class="consumption">{$consumption}</span></td>
        			</tr>
				</table>
			</td>
		</tr>
		{if $StaySelector}
		<tr style="height:20px;">
			<th>{$LNG.fl_hold_time}</th>
		</tr>
		<tr style="height:20px;">
			<td>
			{html_options name=staytime options=$StaySelector} {$LNG.fl_hours}
			</td>
		</tr>
		{/if}

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
																</div></form>
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
data	= {$fleetdata|json};
</script>
{/block}