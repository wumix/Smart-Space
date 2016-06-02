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
															<li class="active" data-target="#step3">
																<a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title"><font color="white">Mission</font></span> </a>
															</li>
															<li class="active" data-target="#step4">
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
	<tbody>
	<tr style="height:20px">
		<th colspan="2" class="success">{$LNG.fl_fleet_sended}</span></th>
	</tr>
    <tr style="height:20px">
        <td>{$LNG.fl_mission}</td>
        <td>{$LNG.type_mission.{$targetMission}}</td>
	</tr>
    <tr style="height:20px">
        <td>{$LNG.fl_distance}</td>
        <td>{$distance|number}</td>
    </tr>
    <tr style="height:20px">
        <td>{$LNG.fl_fleet_speed}</td>
        <td>{$MaxFleetSpeed|number}</td>
    </tr>
    <tr style="height:20px">
        <td>{$LNG.fl_fuel_consumption}</td>
        <td>{$consumption|number}</td>
    </tr>
    <tr style="height:20px">
        <td>{$LNG.fl_from}</td>
        <td>{$from}</td>
    </tr>
    <tr style="height:20px">
        <td>{$LNG.fl_destiny}</td>
        <td>{$destination}</td>
    </tr>
    <tr style="height:20px">
        <td>{$LNG.fl_arrival_time}</td>
        <td>{$fleetStartTime}</td>
    </tr>
    <tr style="height:20px">
        <td>{$LNG.fl_return_time}</td>
        <td>{$fleetEndTime}</td>
    </tr>
											</tbody>
										</table>
								
	<table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
    <tr style="height:20px">
        <th colspan="2">{$LNG.fl_fleet}</th>
    </tr>	
	{foreach $FleetList as $ShipID => $ShipCount}
	<tr>
		<td>{$LNG.tech.{$ShipID}}</td>
		<td>{$ShipCount|number}</td>
	</tr>
	{/foreach}
											</tbody>
										</table>
				
															</div>
				
															
				
														</div>
														
				
				

														</div>
												</div>
												
										</div>
										
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
								
				
							</div>
							<!-- end widget -->{/block}