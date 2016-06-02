{block name="title" prepend}{$LNG.lm_info}{/block}
{block name="content"}

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
											<table class="table table-bordered">
												<thead>
				<tr>
					<td><p><img width="120" height="120" src="{$dpath}gebaeude/{$elementID}.{if $elementID >=600 && $elementID <= 699}jpg{else}gif{/if}" alt=""> {$LNG.longDescription.$elementID}</p>
					{if !empty($Bonus)}<p>
					<b>{$LNG.in_bonus}</b><br>
					{foreach $Bonus as $BonusName => $elementBouns}{if $elementBouns[0] < 0}-{else}+{/if}{if $elementBouns[1] == 0}{abs($elementBouns[0] * 100)}%{else}{floatval($elementBouns[0])}{/if} {$LNG.bonus.$BonusName}<br>{/foreach}
					</p>{/if}	
					{if !empty($FleetInfo)}
					{if !empty($FleetInfo.rapidfire.to)}<p>
					{foreach $FleetInfo.rapidfire.to as $rapidfireID => $shoots}
					{$LNG.in_rf_again} {$LNG.tech.$rapidfireID}: <span style="color:#00ff00">{$shoots|number}</span><br>
					{/foreach}
					</p>{/if}
					{if !empty($FleetInfo.rapidfire.from)}<p>
					{foreach $FleetInfo.rapidfire.from as $rapidfireID => $shoots}
					{$LNG.in_rf_from} {$LNG.tech.$rapidfireID}: <span style="color:#ff0000">{$shoots|number}</span><br>
					{/foreach}
					</p>{/if}
					{/if}				
					</td>
				</tr>
			</thead>
			</table>

											<table class="table table-bordered">
												<thead>
{if !empty($productionTable.production)}
{include file="shared.information.production.tpl"}
{/if}
{if !empty($productionTable.storage)}
{include file="shared.information.storage.tpl"}
{/if}
{if !empty($FleetInfo)}
{include file="shared.information.shipInfo.tpl"}
{/if}
{if !empty($gateData)}
{include file="shared.information.gate.tpl"}
{/if}
{if !empty($MissileList)}
{include file="shared.information.missiles.tpl"}
{/if}
</thead>
</table>
												
												
												</thead>
											</table>
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->

	
	
{/block}