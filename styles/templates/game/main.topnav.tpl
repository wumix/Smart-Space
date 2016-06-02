
		<!-- HEADER -->
		<header id="header">
			<div id="logo-group">
			<span style="width:20px;">&nbsp</span>
						<div class="project-context">
			
			<h5><a href="game.php?page=messages"> Inbox <span class="txt-color-yellow"><i class="fa fa-inbox"></i></span>&nbsp;{if $new_message > 0}<font color="lime">NEW MESSAGE</font>{else}NO MESSAGE{/if}</a></span></h5>

			</div>
<!-- 
				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="game.php?page=settings"><i class="fa fa-cogs"></i></a> </span>
				</div>
				
				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="game.php?page=messages">{if $new_message > 0}<font color="lime">{else}{/if}<i class="fa fa-envelope "></i></font></a> </span>
				</div>

				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="game.php?page=records"><i class="fa fa-trophy"></i></a> </span>
				</div>
			-->
			</div> 
			
						

			
			<div class="project-context hidden-xs hidden-sm hidden-md">

			<h5> {$LNG.type_planet.1} <span class="txt-color-purple"><i class="fa fa-bullseye"></i>&nbsp;{if $inc_attacks > 0}<font color="red">WARNING</font>{else}<font color="lime">SAFE</font>{/if}</span></h5>

			</div>
			
			<div class="project-context hidden-xs  hidden-sm hidden-md">

			<h5> {$LNG.type_planet.3} <span class="txt-color-purple"><i class="fa fa-moon-o"></i>&nbsp;{if $inc_destruction > 0}<font color="red">WARNING</font>{else}<font color="lime">SAFE</font>{/if}</span></h5>

			</div>
			
			<div class="project-context hidden-xs  hidden-sm hidden-md">

			<h5> {$LNG.type_mission.6} <span class="txt-color-purple"><i class="fa fa-eye-slash"></i>&nbsp;{if $inc_spy > 0}<font color="red">WARNING</font>{else}<font color="lime">SAFE</font>{/if}</span></h5>

			</div>
			
			<div class="project-context hidden-xs  hidden-sm hidden-md">

			<h5> {$LNG.type_mission.10} <span class="txt-color-greenDark"><i class="fa fa-rocket"></i>&nbsp;{if $inc_rockets > 0}<font color="red">WARNING</font>{else}<font color="lime">SAFE</font>{/if}</span></h5>

			</div>

			<!-- <div class="project-context hidden-xs">

				<span class="label">Planets</span>
				<select id="planetSelector">
				{html_options options=$PlanetSelect selected=$current_pid}
				</select>

			</div> -->
			<!-- end projects dropdown -->
			
			<!-- <div class="project-context hidden-xs">
				<span class="label">{$LNG.tech.901}</span>
				<div class="progress active progress-striped" style="width:135px;">
				<div class="progress-bar bg-color-redLight" role="progressbar" style="width: {$proc_metal}%"></div>
				<div style="position:absolute; left:25%;">{shortly_number($metal)}</div></div>
				<img src="styles/theme/gow/images/metal.gif" style="width: 21px;height: 21px;border: 1px solid #000;position: absolute;background-color: #000;left: 0;top: 22px; -moz-border-radius: 11px; -webkit-border-radius: 11px; border-radius: 11px;    z-index: 2;" />
			</div>
			
			<div class="project-context hidden-xs">
				<span class="label">{$LNG.tech.902}</span>
				<div class="progress active progress-striped" style="width:135px;">
				<div class="progress-bar bg-color-teal" role="progressbar" style="width: {$proc_cri}%"></div>
				<div style="position:absolute; left:25%;">{shortly_number($crystal)}</div></div>
				<img src="styles/theme/gow/images/crystal.gif" style="width: 21px;height: 21px;border: 1px solid #000;position: absolute;background-color: #000;left: 0;top: 22px; -moz-border-radius: 11px; -webkit-border-radius: 11px; border-radius: 11px;    z-index: 2;" />	
			</div>

			<div class="project-context hidden-xs">
				<span class="label">{$LNG.tech.903}</span>
				<div class="progress active progress-striped" style="width:135px;">
				<div class="progress-bar bg-color-greenLight" role="progressbar" style="width: {$proc_dei}%"></div>
				<div style="position:absolute; left:25%;">{shortly_number($deuterium)}</div></div>
				<img src="styles/theme/gow/images/deuterium.gif" style="width: 21px;height: 21px;border: 1px solid #000;position: absolute;background-color: #000;left: 0;top: 22px; -moz-border-radius: 11px; -webkit-border-radius: 11px; border-radius: 11px;    z-index: 2;" />	
			</div>

			<div class="project-context hidden-xs">
				<span class="label">{$LNG.tech.911}</span>
				<div class="progress active progress-striped" style="width:135px;">
				<div class="progress-bar {if ($energy_used + $energy)>0}bg-color-magenta{else}bg-color-red{/if}" role="progressbar" style="width: {$proc_nrg}%"></div>
				<div style="position:absolute; left:25%;">{shortly_number($energy_used)} | {shortly_number($energy)}</div></div>
				<img src="styles/theme/gow/images/energy.gif" style="width: 21px;height: 21px;border: 1px solid #000;position: absolute;background-color: #000;left: 0;top: 22px; -moz-border-radius: 11px; -webkit-border-radius: 11px; border-radius: 11px;    z-index: 2;" />	
			</div>

			<div class="project-context hidden-xs">
				<span class="label">{$LNG.tech.921}</span>
				<div class="progress active progress-striped" style="width:135px;">
				<div class="progress-bar bg-color-blue" role="progressbar" style="width: 100%"></div>
				<div style="position:absolute; left:25%;">{$darkmatter}</div></div>
				<img src="styles/theme/gow/images/darkmatter.gif" style="width: 21px;height: 21px;border: 1px solid #000;position: absolute;background-color: #000;left: 0;top: 22px; -moz-border-radius: 11px; -webkit-border-radius: 11px; border-radius: 11px;    z-index: 2;" />	
			</div> -->


			<!-- pulled right: nav area -->
			<div class="pull-right">
				
				<!-- collapse menu button -->
				<div id="hide-menu" class="btn-header pull-right">
					<span> <a href="javascript:void(0);" data-action="toggleMenu" title="Collapse Menu"><i class="fa fa-reorder"></i></a> </span>
				</div>
				<!-- end collapse menu -->


				<!-- logout button -->
				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="game.php?page=logout" rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Sign Out" data-action="userLogout" data-logout-msg="Are you sure that you want to quit from the game?"><i class="fa fa-sign-out"></i></a> </span>
				</div>
				<!-- end logout button -->


				<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right">
					<span> <a href="javascript:void(0);" data-action="launchFullscreen"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Full Screen"><i class="fa fa-arrows-alt"></i></a> </span>
				</div>
				<!-- end fullscreen button -->
				
				
				<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right">
					<span> <a href="game.php?page=settings"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="{$LNG.lm_options}"><i class="fa fa-cog fa-spin"></i></a> </span>
				</div>
				<!-- end fullscreen button -->



				<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right hidden-xs">
					<span> <a href="game.php?page=ticket"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Support"><i class="fa fa-support"></i></a> </span>
				</div>
				<!-- end fullscreen button -->



				<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right hidden-xs">
					<span> <a href="game.php?page=buddyList" rel="tooltip" data-html="true" data-placement="bottom" data-original-title="{$LNG.lm_buddylist}"><i class="fa fa-users"></i></a> </span>
				</div>
				<!-- end fullscreen button -->

				<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right hidden-xs">
					<span> <a href="game.php?page=banList"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="{$LNG.lm_banned}"><i class="fa fa-lock"></i></a> </span>
				</div>
				<!-- end fullscreen button -->
				
			<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right hidden-xs">
					<span> <a href="game.php?page=battleHall"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="{$LNG.lm_topkb}"><i class="fa fa-trophy "></i></a> </span>
				</div>
				<!-- end fullscreen button -->		
				
			<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right hidden-xs">
					<span> <a href="game.php?page=chat"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="{$LNG.lm_chat}"><i class="fa fa-weixin"></i></a> </span>
				</div>
				<!-- end fullscreen button -->
				
			<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right hidden-xs">
					<span> <a href="game.php?page=battleSimulator"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="{$LNG.lm_battlesim}"><i class="fa fa-bomb"></i></a> </span>
				</div>
				<!-- end fullscreen button -->
				
			<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right hidden-xs">
					<span> <a href="game.php?page=messages"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Messages"><i class="fa fa-envelope"></i></a> </span>
				</div>
				<!-- end fullscreen button -->
				
			<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right hidden-xs">
					<span> <a href="game.php?page=imperium"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="{$LNG.lm_empire}"><i class="fa fa-empire"></i></a> </span>
				</div>
				<!-- end fullscreen button -->
				
				
				<!-- fullscreen button -->
				<div id="fullscreen" class="btn-header transparent pull-right hidden-xs">
					<span> <a href="game.php?page=rules"  style="font-size:11px;" rel="tooltip" data-html="true" onclick="return Dialog.open(this.href, 1000, 500);" data-placement="bottom" data-original-title="Rules">Rules</a> </span>
				</div>
				<!-- end fullscreen button -->

			</div>
			<!-- end pulled right: nav area -->

		</header>
		<!-- END HEADER -->
		
				<!-- MAIN PANEL -->
		<div id="main" role="main">

			<!-- MAIN CONTENT -->
			
			
						
			<div class="row">
				
				</div>
