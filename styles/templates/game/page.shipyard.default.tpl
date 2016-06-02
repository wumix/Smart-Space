{block name="title" prepend}{if $mode == "defense"}{$LNG.lm_defenses}{else}{$LNG.lm_shipshard}{/if}{/block}
{block name="content"}
{if !$NotBuilding}
<div class="alert alert-danger fade in">
<i class="fa-fw fa fa-times"></i>
<strong>Error!</strong> {$LNG.bd_building_shipyard}.
</div>
{/if}

{if !empty($BuildList)}
<div class="alert alert-info alert-block">
			<div id="bx" class="z"></div>	
			<form action="game.php?page=shipyard&amp;mode={$mode}" method="post">
			<input type="hidden" name="action" value="delete">
			<div class="col-md-3"><select name="auftr[]" id="auftr" size="2" multiple style="width:100%"><option>&nbsp;</option></select>
			</div>
			<div class="col-md-3"><input type="submit" value="{$LNG.bd_cancel_send}" class="btn btn-default btn-block">
			</div>
			<div class="col-md-6">{$LNG.bd_cancel_warning} (<span id="timeleft"></span>)</div>
			</form>
			<br><br>
</div>
{/if}

<form action="game.php?page=shipyard&amp;mode={$mode}" method="post">

	{foreach $elementList as $ID => $Element}
	
	<div class="col-md-4">
	<div class="jarviswidget jarviswidget-color-darkBlue jarviswidget-sortable" id="wid-id-6" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false" role="widget" style="">
	<header role="heading">
	<h2><a href="#" onclick="return Dialog.info({$ID})">{$LNG.tech.{$ID}}</a><span id="val_{$ID}">{if $Element.available != 0} ({$LNG.bd_available} {$Element.available|number}){/if}</h2>		
								<span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span></header>

								<!-- widget div-->
								<div role="content" style="height:200px;">
								
								<div style="height: 75px;width: 75px;padding-right: 9px;margin-bottom: 4px;float: left;overflow: hidden;">
					<a href="#" onclick="return Dialog.info({$ID})">
					<img src="styles/gebaeude/{$ID}.gif" alt="{$LNG.tech.{$ID}}" width="60" height="60">
					</a>
								</div>
								
								<div style="float: left;width: 200px;line-height: 18px;">
								{foreach $Element.costRessources as $RessID => $RessAmount}
								<img src="styles/gebaeude/{$RessID}.gif" style="width: 14px;height: 14px;border: 1px solid #000;position:  -moz-border-radius: 11px; -webkit-border-radius: 11px; border-radius: 11px;    z-index: 2;">
								<span style="color:{if $Element.costOverflow[$RessID] == 0}lime{else}red{/if}; top:2px">{$RessAmount|number}</span>
								
								{/foreach}<br><br>
								
								{$LNG.fgf_time}: {$Element.elementTime|time}
								</div>
								
								<div class="row" style="margin: 100px 0px 0px 0px;">
					{if $Element.AlreadyBuild}<button type="submit" class="btn btn-block btn-danger disabled">{$LNG.bd_protection_shield_only_one}</button>
					{elseif $NotBuilding && $Element.buyable}
					<font color="black"><input type="text" name="fmenge[{$ID}]" id="input_{$ID}" size="{$maxlength}" maxlength="{$maxlength}" value="0" tabindex="{$smarty.foreach.FleetList.iteration} placeholder="Place your fleet amount here" style="width:60%"></font>
					<input type="button" class="btn btn-primary" value="{$LNG.bd_max_ships}" onclick="$('#input_{$ID}').val('{$Element.maxBuildable}')">
					<input type="submit" class="btn btn-primary" value="{$LNG.bd_build_ships}">
					{/if}
						</div>
										
									
								</div>
								<!-- end widget div -->
								
							</div>
							</div>
	
	{/foreach}
	
</form>
<script type="text/javascript">
data			= {$BuildList|json};
bd_operating	= '{$LNG.bd_operating}';
bd_available	= '{$LNG.bd_available}';
</script>
{/block}