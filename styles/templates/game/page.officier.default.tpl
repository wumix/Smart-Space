{block name="title" prepend}{$LNG.lm_officiers}{/block}
{block name="content"}

{if !empty($darkmatterList)}
{foreach $darkmatterList as $ID => $Element}
<div class="col-md-4">
	<div class="jarviswidget jarviswidget-color-darkBlue jarviswidget-sortable" id="wid-id-6" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false" role="widget" style="">
	<header role="heading">
	<h2><a href="#" onclick="return Dialog.info({$ID})">{$LNG.tech.{$ID}}</a></h2>		
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
								
								{/foreach}<br>
								
								{foreach $Element.elementBonus as $BonusName => $Bonus}{if $Bonus@iteration % 3 === 1}<p>{/if}{if $Bonus[0] < 0}-{else}+{/if}{if $Bonus[1] == 0}{abs($Bonus[0] * 100)}%{else}{$Bonus[0]}{/if} {$LNG.bonus.$BonusName}{if $Bonus@iteration % 3 === 0 || $Bonus@last}</p>{else}&nbsp;{/if}{/foreach}<br>
								{$LNG.fgf_time}: {$Element.time|time}
								</div>
								
								<div style="margin: 100px 0px 0px 0px;">
					{if $Element.timeLeft > 0}
							<span id="time_{$ID}">-</span>
							
							{if $Element.buyable}
							<form action="game.php?page=officier" method="post" class="build_form">
								<input type="hidden" name="id" value="{$ID}">
								<button type="submit" class="btn btn-block btn-primary" >{$LNG.of_recruit}</button>
							</form>
							{/if}
						{elseif $Element.buyable}
						<form action="game.php?page=officier" method="post" class="build_form">
							<input type="hidden" name="id" value="{$ID}">
							<button type="submit" class="btn btn-block btn-primary" >{$LNG.of_recruit}</button>
						</form>
						{else}
						<button type="submit" class="btn btn-block btn-danger disabled">{$LNG.of_recruit}</button>
						{/if}
						</div>
										
									
								</div>
								<!-- end widget div -->
								
							</div>
							</div>
{/foreach}{/if}

{if $officierList}
{foreach $officierList as $ID => $Element}
<div class="col-md-4">
	<div class="jarviswidget jarviswidget-color-darkBlue jarviswidget-sortable" id="wid-id-6" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false" role="widget" style="">
	<header role="heading">
	<h2><a href="#" onclick="return Dialog.info({$ID})">{$LNG.tech.{$ID}}</a> ({$LNG.of_lvl} {$Element.level})</h2>		
								<span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span></header>

								<!-- widget div-->
								<div role="content" style="height:200px;">
								
								<div style="height: 75px;width: 75px;padding-right: 9px;margin-bottom: 4px;float: left;overflow: hidden;">
					<a href="#" onclick="return Dialog.info({$ID})">
					<img src="styles/gebaeude/{$ID}.jpg" alt="{$LNG.tech.{$ID}}" width="60" height="60">
					</a>
								</div>
								
								<div style="float: left;width: 200px;line-height: 18px;">
								{foreach $Element.costRessources as $RessID => $RessAmount}
								<img src="styles/gebaeude/{$RessID}.gif" style="width: 14px;height: 14px;border: 1px solid #000;position:  -moz-border-radius: 11px; -webkit-border-radius: 11px; border-radius: 11px;    z-index: 2;">
								<span style="color:{if $Element.costOverflow[$RessID] == 0}lime{else}red{/if}; top:2px">{$RessAmount|number}</span>
								{/foreach}<br>
								
								{foreach $Element.elementBonus as $BonusName => $Bonus}{if $Bonus@iteration % 3 === 1}<p>{/if}{if $Bonus[0] < 0}-{else}+{/if}{if $Bonus[1] == 0}{abs($Bonus[0] * 100)}%{else}{$Bonus[0]}{/if} {$LNG.bonus.$BonusName}{if $Bonus@iteration % 3 === 0 || $Bonus@last}</p>{else}&nbsp;{/if}{/foreach}
								</div>
								
								<div style="margin: 100px 0px 0px 0px;">
					{if $Element.maxLevel <= $Element.level}
							<button type="submit" class="btn btn-block btn-warning disabled">{$LNG.bd_maxlevel}</button>
						{elseif $Element.buyable}
							<form action="game.php?page=officier" method="post" class="build_form">
								<input type="hidden" name="id" value="{$ID}">
								<button type="submit" class="btn btn-primary btn-block" class="btn btn-block btn-primary">{$LNG.of_recruit}</button>
							</form>
						{else}
							<button type="submit" class="btn btn-block btn-danger disabled">{$LNG.of_recruit}</button>
						{/if}
						</div>
										
									
								</div>
								<!-- end widget div -->
								
							</div>
							</div>
{/foreach}{/if}


{/block}