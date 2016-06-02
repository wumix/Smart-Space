{block name="title" prepend}Premium{/block}
{block name="content"}


						<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-paypal"></i> </span>
									<h2>Premium</h2>
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
											<table class="table table-bordered" >
												<thead>
												<form name="one" action="?page=paypal" method="post"> 
			<tr>
				<th colspan="2"> Purchase darkmatter</th>
			</tr>
			<tr> 
				<td> Quantity purchased darkmatter </td> 
				<td> <font color="black"><input type="text" class="input" id="amount" maxlength="7" name="amount" onkeyup="calculation();" onchange="calculation();" value="0"></font> minimum 10.000 </td> 
			</tr> 
			<tr> 
				<td> You will receive <span id="count" name="count" style="color:#F00; font-weight:bold;">0</span> <font color="yellow"><b></b></font> darkmatter </td> 
				<th style="text-align:center; border:0;"> <input type="submit" name="process" class="btn btn-primary" value="Checkout with Paypal"> </th> 
			</tr> 
	</form> 
										</thead>										
												<thead>
			<tr> 
				<td><span style="color:yellow;"><span id="cosr_usd" name="cosr_usd">0</span> $ </span>[USD]</td> 
				<td><span style="color:yellow;"><span id="cosr_eur" name="cosr_eur">0</span> &euro;</span> [EUR]</td> 
			</tr> 
			</thead>																					
												<thead>
			<tr> 
				<td colspan="2"><font color="white">The Purchase of Dark Matter is a <b>free option</b>.<br>Remember we offer free Dark Matter on weekends, or in event time, so everyone can be balanced without any unfair situation. Consider purchase of Dark Matter as an act of donation to support the Server and keep the game online, once we use a dedicated server. Thanks for your support, not only by purchasing DM (donating), but also, by playing the game.</font></td> 
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
						</article>		
						
						
						
						<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-paypal"></i> </span>
									<h2>Premium</h2>
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
										
											<table class="table table-bordered" >
												<thead>
  <tr>
            <th colspan="3" style="border-left:0; padding-left:15px; text-align:left;">{$timeleft}</th>
        </tr>
        <form action="game.php?page=donate" method="post">
        <input type="hidden" name="mode" value="send" >
		
 
<tr>
<td style="text-align:right;width:25%">Production Bonus</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusResource}" id="bonusResource" name="bonusResource" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 1500 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Bonus Attack</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusAttack}" id="bonusAttack" name="bonusAttack" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 150 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Bonus Defensive</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusDefensive}" id="bonusDefensive" name="bonusDefensive" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 150 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Bonus Shield</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusShield}" id="bonusShield" name="bonusShield" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 150 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Reduce Building Time</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusBuildTime}" id="bonusBuildTime" name="bonusBuildTime" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 75 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Reduce Research Build Time</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusResearchTime}" id="bonusResearchTime" name="bonusResearchTime" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 50 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Reduce Ship Build Time</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusShipTime}" id="bonusShipTime" name="bonusShipTime" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 50 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Reduce Defensive Build Time</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusDefensiveTime}" id="bonusDefensiveTime" name="bonusDefensiveTime" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 75 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Energy Production Bonus</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusEnergy}" id="bonusEnergy" name="bonusEnergy" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 100 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Bonus Storage on Planets</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusResourceStorage}" id="bonusResourceStorage" name="bonusResourceStorage" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 200 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Bonus Storage on Ships</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusShipStorage}" id="bonusShipStorage" name="bonusShipStorage" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 200 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Reduce Fly Time</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusFlyTime}" id="bonusFlyTime" name="bonusFlyTime" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 50 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">More Fleet Slots</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusFleetSlots}" id="bonusFleetSlots" name="bonusFleetSlots" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">There's no max unit. You can select as many you wish
<tr>
<td style="text-align:right;width:25%">Spy Bonus</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusSpyPower}" id="bonusSpyPower" name="bonusSpyPower" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 50 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Bonus of Expedition Reward</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusExpedition}" id="bonusExpedition" name="bonusExpedition" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 200 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Reduce Cooldown of Jumpgate</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusGateCoolTime}" id="bonusGateCoolTime" name="bonusGateCoolTime" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 50 | One unit = 1% Bonus
</tr>
<tr>
<td style="text-align:right;width:25%">Bonus of DM Found on Expeditions</td>
<td style="width:10%;">
<font color="black"><input style="width:50px;" type="text" value="{$bonusMoreFound}" id="bonusMoreFound" name="bonusMoreFound" onkeyup="Total();" {if $st_out>0}disabled{/if}></font>
</td>
<td style="width:65%;">Max unit you can enter: 200 | One unit = 1% Bonus
</tr>

                {if $st_out<0}
                <tr>
					<th style="text-align:center; border:0;"><input type="submit"  class="btn btn-primary" value="{$LNG.prem27}"></th>
                	<th colspan="2" style="text-align:left; border:0;">
						It will cost <span style="color:#090;" id="cost_prem">0</span>, Dark Matter for
                		<font color="black"><input style="width:50px;" type="text" size="3" value="1" maxlength="3" id="count_day" name="count_day" onkeyup="Total();"></font> days
					</th>
                </tr>
                {else}
                <tr>
                    <th style="border:0;" colspan="3">
                    <form action="game.php?page=donate" method="post">
                        <input type="hidden" name="mode" value="premreset">       
                        <input class="btn btn-primary" type="submit" value="Cancel Premium (You will get {$prem_waste} DM)">
                    </form>
					</th>
                </tr>				
                {/if}
                </form>
												</thead>
												
											</table>
											
										</div>
										</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->

	
						</article>

						<script type=text/javascript>
	v = new Date();
	var brpstats = document.getElementById('brpstats');
	function tstats(){
	n  = new Date();
	ss = {$st_out};
	s  = ss - Math.round( (n.getTime() - v.getTime()) / 1000.);
	m  = 0;
	h  = 0;
	d  = 0;
	mo = 0;
	if ( s < 0 ) {
		   var zeit = new Date();
		var ende = zeit.getTime();
		ende = ende + 100;
	
		function countdown() {
	
			var zeit2 = new Date();
			var jetzt = zeit2.getTime();
	
			if(jetzt >= ende) {
	
			  brpstats.innerHTML = '<blink><b><font color=red>...</font></b></blink>';
	
			}
	
		}
	
		setInterval(countdown, 1000);
	} else {
		   if ( s > 59 ) { m = Math.floor( s / 60 ); s = s - m * 60; }
		   if ( m > 59 ) { h = Math.floor( m / 60 ); m = m - h * 60; }
		   if ( h > 24 ) { d = Math.floor( h / 24 ); h = h - d * 24; }
		   if ( d > 31 ) { mo = Math.floor( d / 31 ); d = d - mo * 31; }
		   if ( s < 10 ) { s = '0' + s }
		   if ( m < 10 ) { m = '0' + m }
		   if ( h < 10 ) { h = '' + h }
		   if ( s >= 0 ) { s = s + 'с' }
		   if ( m > 0 ) { m = m + 'м' }  else m = '';
		   if ( m == 0 && h > 0 ) { m = '0' + m + 'm'}
		   if ( h > 0 ) { h = h + 'ч' }  else h = '';
		   if ( d > 0 ) { d = d + 'д' }  else d = '';
		   if ( mo > 0 ) { mo = mo + 'мес.' }  else mo = '';
	
		   brpstats.innerHTML = ' <b>'+ mo + ' ' + d + ' ' + h + ' ' + m + ' ' + s + '</b>';
	}
	window.setTimeout('tstats();',999);
	}
	window.onload=tstats();
	
	</script>

{/block}

