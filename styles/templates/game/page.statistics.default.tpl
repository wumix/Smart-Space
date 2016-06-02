{block name="title" prepend}{$LNG.lm_statistics}{/block}
{block name="content"}
<!-- Widget ID (each widget will need unique ID)-->
<div class="jarviswidget jarviswidget-color-darken" id="wid-id-1" data-widget-editbutton="false">

	<header>
		<span class="widget-icon"> <i class="fa fa-table"></i> </span>
		<h2>{$LNG.lm_statistics}</h2>
	</header>

	<!-- widget div-->
	<div>


		<!-- widget content -->
		<div class="widget-body no-padding">

			<div class="table-responsive">

				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<form name="stats" id="stats" method="post" action="">
								<th><a href="game.php?page=statistics&who=1" class="tipsy-header" title="{$LNG.st_player}" id="who" onchange="$('#stats').submit();"><img src="styles/img/stats/players.png" /></a></th>
								<th><a href="game.php?page=statistics&who=2" class="tipsy-header" title="{$LNG.st_alliance}" id="who" onchange="$('#stats').submit();"><img src="styles/img/stats/alliance.png" /></a></th>
								<th><a href="game.php?page=statistics&type=5" class="tipsy-header" title="{$LNG.st_defenses}" id="type" onchange="$('#stats').submit();"><img src="styles/img/stats/defense.png" /></a></th>
								<th><a href="game.php?page=statistics&type=4" class="tipsy-header" title="{$LNG.lm_buildings}" id="type" onchange="$('#stats').submit();"><img src="styles/img/stats/builds.png" /></a></th>
								<th><a href="game.php?page=statistics&type=3" class="tipsy-header" title="{$LNG.st_researh}" id="type" onchange="$('#stats').submit();"><img src="styles/img/stats/tech.png" /></a></th>
								<th><a href="game.php?page=statistics&type=2" class="tipsy-header" title="{$LNG.st_fleets}" id="type" onchange="$('#stats').submit();"><img src="styles/img/stats/fleet.png" /></a></th>
								<th colspan="3"><select name="range" id="range" onchange="$('#stats').submit();">{html_options options=$Selectors.range selected=$range}</select></th>
							</form>
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

<!-- Widget ID (each widget will need unique ID)-->
<div class="jarviswidget jarviswidget-color-darken" id="wid-id-1" data-widget-editbutton="false">

	<header>
		<span class="widget-icon"> <i class="fa fa-table"></i> </span>
		<h2>{$LNG.lm_statistics}</h2>
	</header>

	<!-- widget div-->
	<div>


		<!-- widget content -->
		<div class="widget-body no-padding">

			{if $who == 1}
				{include file="shared.statistics.playerTable.tpl"}
			{elseif $who == 2}
				{include file="shared.statistics.allianceTable.tpl"}
			{/if}

		</div>
		<!-- end widget content -->

	</div>
	<!-- end widget div -->

</div>
<!-- end widget -->




{/block}