{block name="title" prepend}{$LNG.lm_resources}{/block}
{block name="content"}
<form action="?page=resources" method="post">
<input type="hidden" name="mode" value="send">

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-darken" id="wid-id-1" data-widget-editbutton="false">
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
									<h2>{$header}</h2>
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

										<div class="table-responsive">
												
											<table class="table table-bordered table-striped">
												<thead>
													<tr>
	<th style="width:40%">&nbsp;</th>
	<th style="width:10%">{$LNG.tech.901}</th>
	<th style="width:10%">{$LNG.tech.902}</th>
	<th style="width:10%">{$LNG.tech.903}</th>
	<th style="width:10%">{$LNG.tech.911}</th>
	<th style="width:10%"></th>
													</tr>
												</thead>
												<tbody>
												
<tr style="height:22px">
	<td>{$LNG.rs_basic_income}</td>
	<td>{$basicProduction.901|number}</td>
	<td>{$basicProduction.902|number}</td>
	<td>{$basicProduction.903|number}</td>
	<td>{$basicProduction.911|number}</td>
	<td></td>
</tr>

{foreach $productionList as $productionID => $productionRow}
<tr style="height:22px">
	<td>{$LNG.tech.$productionID } ({if $productionID  > 200}{$LNG.rs_amount}{else}{$LNG.rs_lvl}{/if} {$productionRow.elementLevel})</td>
	<td><span style="color:{if $productionRow.production.901 > 0}lime{elseif $productionRow.production.901 < 0}red{else}white{/if}">{$productionRow.production.901|number}</span></td>
	<td><span style="color:{if $productionRow.production.902 > 0}lime{elseif $productionRow.production.902 < 0}red{else}white{/if}">{$productionRow.production.902|number}</span></td>
	<td><span style="color:{if $productionRow.production.903 > 0}lime{elseif $productionRow.production.903 < 0}red{else}white{/if}">{$productionRow.production.903|number}</span></td>
	<td><span style="color:{if $productionRow.production.911 > 0}lime{elseif $productionRow.production.911 < 0}red{else}white{/if}">{$productionRow.production.911|number}</span></td>
	<td style="width:10%">
		{html_options name="prod[{$productionID}]" options=$prodSelector selected=$productionRow.prodLevel}
	</td>
</tr>
{/foreach}
<tr style="height:22px">
	<td>{$LNG.rs_ress_bonus}</td>
	<td><span style="color:{if $bonusProduction.901 > 0}lime{elseif $bonusProduction.901 < 0}red{else}white{/if}">{$bonusProduction.901|number}</span></td>
	<td><span style="color:{if $bonusProduction.902 > 0}lime{elseif $bonusProduction.902 < 0}red{else}white{/if}">{$bonusProduction.902|number}</span></td>
	<td><span style="color:{if $bonusProduction.903 > 0}lime{elseif $bonusProduction.903 < 0}red{else}white{/if}">{$bonusProduction.903|number}</span></td>
	<td><span style="color:{if $bonusProduction.911 > 0}lime{elseif $bonusProduction.911 < 0}red{else}white{/if}">{$bonusProduction.911|number}</span></td>
	<td><input value="{$LNG.rs_calculate}" class="btn btn-block btn-primary" type="submit"></td>
</tr>
<tr style="height:22px">
	<td>{$LNG.rs_storage_capacity}</td>
	<td><span style="color:lime;">{$storage.901}</span></td>
	<td><span style="color:lime;">{$storage.902}</span></td>
	<td><span style="color:lime;">{$storage.903}</span></td>
	<td>-</td>
	<td>-</td>
</tr>
<tr style="height:22px">
	<td>{$LNG.rs_sum}:</td>
	<td><span style="color:{if $totalProduction.901 > 0}lime{elseif $totalProduction.901 < 0}red{else}white{/if}">{$totalProduction.901|number}</span></td>
	<td><span style="color:{if $totalProduction.902 > 0}lime{elseif $totalProduction.902 < 0}red{else}white{/if}">{$totalProduction.902|number}</span></td>
	<td><span style="color:{if $totalProduction.903 > 0}lime{elseif $totalProduction.903 < 0}red{else}white{/if}">{$totalProduction.903|number}</span></td>
	<td><span style="color:{if $totalProduction.911 > 0}lime{elseif $totalProduction.911 < 0}red{else}white{/if}">{$totalProduction.911|number}</span></td>
	<td>-</td>
</tr>
<tr style="height:22px">
	<td>{$LNG.rs_daily}</td>
	<td><span style="color:{if $dailyProduction.901 > 0}lime{elseif $dailyProduction.901 < 0}red{else}white{/if}">{$dailyProduction.901|number}</span></td>
	<td><span style="color:{if $dailyProduction.902 > 0}lime{elseif $dailyProduction.902 < 0}red{else}white{/if}">{$dailyProduction.902|number}</span></td>
	<td><span style="color:{if $dailyProduction.903 > 0}lime{elseif $dailyProduction.903 < 0}red{else}white{/if}">{$dailyProduction.903|number}</span></td>
	<td><span style="color:{if $dailyProduction.911 > 0}lime{elseif $dailyProduction.911 < 0}red{else}white{/if}">{$dailyProduction.911|number}</span></td>
	<td>-</td>
</tr>
<tr style="height:22px">
	<td>{$LNG.rs_weekly}</td>
	<td><span style="color:{if $weeklyProduction.901 > 0}lime{elseif $weeklyProduction.901 < 0}red{else}white{/if}">{$weeklyProduction.901|number}</span></td>
	<td><span style="color:{if $weeklyProduction.902 > 0}lime{elseif $weeklyProduction.902 < 0}red{else}white{/if}">{$weeklyProduction.902|number}</span></td>
	<td><span style="color:{if $weeklyProduction.903 > 0}lime{elseif $weeklyProduction.903 < 0}red{else}white{/if}">{$weeklyProduction.903|number}</span></td>
	<td><span style="color:{if $weeklyProduction.911 > 0}lime{elseif $weeklyProduction.911 < 0}red{else}white{/if}">{$weeklyProduction.911|number}</span></td>
	<td>-</td>
</tr>
												</tbody>
											</table>
											
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->

</form>
{/block}