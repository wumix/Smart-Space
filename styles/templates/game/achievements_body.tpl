{block name="title" prepend}{$LNG.achievements_name}{/block}
{block name="content"}
<script type="text/javascript" src="scripts/jQuery.js?v=1829"></script>
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
									<span class="widget-icon"> <i class="fa fa-archive"></i> </span>
									<h2>{$LNG.achievements_name}</h2>
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

										
										<div class="table">
												
											<table class="table table-bordered table-striped">
										
	<thead>
													<tr>
											
			<td colspan=3>{$LNG.achievements_desc}</td>
														</tr>
												</thead>
		
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_mine} - {$mine_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=buildings"><img src="styles/achievements/mines.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_mine_desc} <p> {$LNG.achievements_require} : {$mine_req_1} {$mine_done1} , {$mine_req_2} {$mine_done2} , {$mine_req_3} {$mine_done3}</td>
            </tr>
			
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_research} - {$research_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=research"><img src="styles/achievements/research.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_research_desc} <p> {$LNG.achievements_require} : {$research_req_1} {$research_done1} , {$research_req_2} {$research_done2} , {$research_req_3} {$research_done3}</td>
            </tr>
			
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_battle} - {$battle_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=fleetTable"><img src="styles/achievements/battle.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_battle_desc} <p> {$LNG.achievements_require} : {$battle_req_1} {$battle_done1} , {$battle_req_2} {$battle_done2}</td>
            </tr>
			
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_ship} - {$ship_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=shipyard&mode=fleet"><img src="styles/achievements/ship.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_ship_desc} <p> {$LNG.achievements_require} : {$ship_req_1} {$ship_done1}</td>
            </tr>
			
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_defence} - {$defence_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=shipyard&mode=defense"><img src="styles/achievements/defense.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_defence_desc} <p> {$LNG.achievements_require} : {$defence_req_1} {$defence_done1}</td>
            </tr>
			
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_storage} - {$storage_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=buildings"><img src="styles/achievements/storage.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_storage_desc} <p> {$LNG.achievements_require} : {$storage_req_1} {$storage_done1} , {$storage_req_2} {$storage_done2} {$storage_req_3} {$storage_done3}</td>
            </tr>

		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_moon} - {$moon_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=buildings"><img src="styles/achievements/moon.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_moon_desc} <p> {$LNG.achievements_require} : {$moon_req_1} {$moon_done1} , {$moon_req_2} {$moon_done2} {$moon_req_3} {$moon_done3}</td>
            </tr>
			
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_colony} - {$colony_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=fleetTable"><img src="styles/achievements/colony.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_colony_desc} <p> {$LNG.achievements_require} : {$colony_req_1} {$colony_done1}</td>
            </tr>
			
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_statpoints} - {$statpoints_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=statistics"><img src="styles/achievements/statpoints.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_statpoints_desc} <p> {$LNG.achievements_require} : {$statpoints_req_1} {$statpoints_done1}</td>
            </tr>	
			
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_destroy} - {$destroy_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=galaxy"><img src="styles/achievements/destroy.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_destroy_desc} <p> {$LNG.achievements_require} : {$destroy_req_1} {$destroy_done1}</td>
            </tr>
			
		<tr>
			<th class=kategorie colspan=3>{$LNG.achievements_typ_debris} - {$debris_lvl}</th>
		</tr>
            <tr>
				<td><a href="game.php?page=galaxy"><img src="styles/achievements/debris.png" alt="achievement" width="85" height="85"></a></td>
              <td style="width: 100%;">{$LNG.achievements_debris_desc} <p> {$LNG.achievements_require} : {$debris_req_1} {$debris_done1}</td>
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

{/block}