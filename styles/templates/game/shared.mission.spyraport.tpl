<div class="spyRaport">
	<div class="spyRaportHead">
		<a href="game.php?page=galaxy&amp;galaxy={$targetPlanet.galaxy}&amp;system={$targetPlanet.system}">{$title}</a>
	</div>
	{foreach $classIDs as $Class => $elementIDs}
	<div class="spyRaportContainer">
    <div class="clear"></div>
	<div class="spyRaportContainerHead">{$LNG.tech.$Class}</div>
	{foreach $elementIDs as $elementID}

    {if $Class == 100}
    	{if $targetUser[$resource[$elementID]] !=0}
		<div class="spyRaportContainerCellImg">
        	<a href="#" onclick="return Dialog.info({$elementID})" title="{$LNG.tech.$elementID}">
            	<img alt="{$LNG.tech.$elementID}"  title="{$LNG.tech.$elementID}" src="styles/gebaeude/{$elementID}.gif" width="45" height="45">
            </a>
        </div>
        <div class="spyRaportContainerCell"> 
       	 	{$targetUser[$resource[$elementID]]|number}
        </div>
		{/if}
            
    {else}
    	{if $targetPlanet[$resource[$elementID]]!=0}
		<div class="spyRaportContainerCellImg">
        	<a href="#" onclick="return Dialog.info({$elementID})" title="{$LNG.tech.$elementID}">
            	<img alt="{$LNG.tech.$elementID}" title="{$LNG.tech.$elementID}" src="styles/gebaeude/{$elementID}.gif" width="45" height="45">
            </a>
        </div>
        <div class="spyRaportContainerCell">
        	{$targetPlanet[$resource[$elementID]]|number}
        </div>
		
		{/if}
            
    {/if}

	{/foreach}
    <div class="clear"></div>
	</div>
	{/foreach}
	<div class="spyRaportFooter">
		<a href="game.php?page=fleetTable&amp;galaxy={$targetPlanet.galaxy}&amp;system={$targetPlanet.system}&amp;planet={$targetPlanet.planet}&amp;planettype={$targetPlanet.planet_type}&amp;target_mission=1">{$LNG.type_mission.1}</a>
		<br>{if $targetChance >= $spyChance}{$LNG.sys_mess_spy_destroyed}{else}{sprintf($LNG.sys_mess_spy_lostproba, $targetChance)}{/if}
		{if $isBattleSim}<br><a href="game.php?page=battleSimulator{foreach $classIDs as $Class => $elementIDs}{foreach $elementIDs as $elementID}&amp;im[{$elementID}]={if $Class == 100}{round($targetUser[$resource[$elementID]])}{else}{round($targetPlanet[$resource[$elementID]])}{/if}{/foreach}{/foreach}">{$LNG.fl_simulate}</a>{/if}
	</div>
</div>