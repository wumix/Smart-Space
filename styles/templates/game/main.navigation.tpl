		
		<!-- Note: This width of the aside area can be adjusted through LESS variables -->
<aside id="left-panel">

    <!-- NAVIGATION : This navigation is also responsive-->
    <nav>
        <ul>
            {if $authlevel > 0}
                <li class=""><a href="admin.php" style="color: #00ff00;"><i class="fa fa-lg fa-fw fa-empire"></i> <span
                                class="menu-item-parent">Admin Panel</span></a></li>
            {/if}
			<li class=""><a href="game.php?page=overview" title="{$LNG.lm_overview}"><i
                                    class="fa fa-lg fa-fw fa-home"></i> <span
                                    class="menu-item-parent">{$LNG.lm_overview}</span></a>
			</li>
			<li class=""><a href="game.php?page=galaxy" title="{$LNG.lm_galaxy}"><i
                            class="fa fa-lg fa-fw fa-binoculars"></i> <span
                            class="menu-item-parent">{$LNG.lm_galaxy}</span></a></li>

			
			<li class=""><a href="game.php?page=donate" title="Premium"><i class="fa fa-lg fa-fw fa-paypal"></i> <span
                                    class="menu-item-parent">Premium & Donate</span></a></li>		
			
			<li class=""><a href="?page=achievement" title="Archif"><i class="fa fa-lg fa-fw fa-archive"></i> <span
                                    class="menu-item-parent">{$LNG.lm_achievements}</a></li>
				
                    <li class=""><a href="game.php?page=research" title="{$LNG.lm_research}"><i
                                    class="fa fa-lg fa-fw fa-cogs"></i> <span
                                    class="menu-item-parent">{$LNG.lm_research}</span></a>
                    </li>
                    <li class=""><a href="game.php?page=buildings" title="{$LNG.lm_buildings}"><i
                                    class="fa fa-lg fa-fw fa-home"></i> <span
                                    class="menu-item-parent">{$LNG.lm_buildings}</span></a></li>
                    <li class=""><a href="game.php?page=shipyard&amp;mode=fleet" title="{$LNG.lm_shipshard}"><i
                                    class="fa fa-lg fa-fw fa-plane"></i> <span
                                    class="menu-item-parent">{$LNG.lm_shipshard}</span></a></li>
                    <li class=""><a href="game.php?page=shipyard&amp;mode=defense" title="{$LNG.lm_defenses}"><i
                                    class="fa fa-lg fa-fw fa-cubes"></i> <span
                                    class="menu-item-parent">{$LNG.lm_defenses}</span></a></li>
                    <li class=""><a href="game.php?page=officier" title="{$LNG.lm_officiers}"><i
                                    class="fa fa-lg fa-fw fa-bolt"></i> <span
                                    class="menu-item-parent">{$LNG.lm_officiers}</span></a></li>
                    <li class=""><a href="game.php?page=trader" title="{$LNG.lm_trader}"><i
                                    class="fa fa-lg fa-fw fa-arrows-h"></i> <span
                                    class="menu-item-parent">{$LNG.lm_trader}</span></a></li>
                    <li class=""><a href="game.php?page=resources" title="{$LNG.lm_resources}"><i
                                    class="fa fa-lg fa-fw fa-sliders"></i> <span
                                    class="menu-item-parent">{$LNG.lm_resources}</span></a></li>

			<li class=""><a href="game.php?page=fleetTable" title="{$LNG.lm_fleet}"><i
                                    class="fa fa-lg fa-fw fa-anchor"></i> <span
                                    class="menu-item-parent">{$LNG.lm_fleet}</span></a>
                    </li>
			<li class=""><a href="game.php?page=techtree" title="{$LNG.lm_technology}"><i
                                    class="fa fa-lg fa-fw fa-sitemap"></i> <span
                                    class="menu-item-parent">{$LNG.lm_technology}</span></a></li>
            
            <li class=""><a href="game.php?page=alliance" title="{$LNG.lm_alliance}"><i
                            class="fa fa-lg fa-fw fa-users"></i> <span
                            class="menu-item-parent">{$LNG.lm_alliance}</span></a></li>
            <li class=""><a href="game.php?page=statistics" title="{$LNG.lm_statistics}"><i
                            class="fa fa-lg fa-fw fa-sort-numeric-asc"></i> <span
                            class="menu-item-parent">{$LNG.lm_statistics}</span></a></li>
            
        </ul>
    </nav>
			<span class="minifyme" data-action="minifyMenu"> 
				<i class="fa fa-arrow-circle-left hit"></i> 
			</span>

</aside>
<!-- END NAVIGATION -->
		


		
