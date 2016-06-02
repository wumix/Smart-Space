{block name="title" prepend}{$LNG.lm_fleettrader}{/block}
{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-users"></i> </span>
									<h2>{$LNG.lm_fleettrader}</h2>

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

											<table class="table table-bordered">
												<thead>
													<form action="game.php?page=fleetDealer" method="post">
	<input type="hidden" name="mode" value="send">
        <tr>
			<th>{$LNG.ft_head}</th>
		</tr>
        <tr>
			<td>
				<div class="transparent" style="text-align:left;float:left;"><img id="img" alt="" data-src="styles/gebaeude/"></div>
				<div class="transparent" style="text-align:right;float:right;padding:5px">
					<select name="shipID" id="shipID" onchange="updateVars()">
						{foreach $shipIDs as $shipID}
						<option value="{$shipID}">{$LNG.tech.$shipID}</option>
						{/foreach}
					</select>
				</div>
				<div style="clear:right;margin-top:20px;margin-left:125px;">
					<h2 id="traderHead"></h2>
					<p>{$LNG.ft_count}:  <font color="black"><input type="text" id="count" name="count" onkeyup="Total();"></font><button class="btn btn-primary" onclick="MaxShips();return false;">{$LNG.ft_max}</button></p>
					<p>{$LNG.tech.901}: <span id="metal" style="font-weight:800;"></span> &bull; {$LNG.tech.902}: <span id="crystal" style="font-weight:800;"></span> &bull; {$LNG.tech.903}: <span id="deuterium" style="font-weight:800;"></span> &bull; {$LNG.tech.921}: <span id="darkmatter" style="font-weight:800;"></span></p>
					<p>{$LNG.ft_total}: {$LNG.tech.901}: <span id="total_metal" style="font-weight:800;"></span> &bull; {$LNG.tech.902}: <span id="total_crystal" style="font-weight:800;"></span> &bull; {$LNG.tech.903} <span id="total_deuterium" style="font-weight:800;"></span> &bull; {$LNG.tech.921}: <span id="total_darkmatter" style="font-weight:800;"></span></ü>
					<p><input type="submit" class="btn btn-primary" value="{$LNG.ft_absenden}"></p>
					<p>{$LNG.ft_charge}: {$Charge}%</p>
				</div>
			</td>
		</tr>
	</table>
												</thead>
											</table>
											</form>
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->
{/block}
{block name="script" append}
<script type="text/javascript">
var CostInfo = {$CostInfos|json};
var Charge = {$Charge};
</script>
{/block}