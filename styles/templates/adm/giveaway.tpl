{include file="overall_header.tpl"}
<form method="post">
<input type="hidden" name="action" value="send">


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
										<form action="" method="post" name="countt">
											<table class="table table-bordered">
												<thead><table class="table table-bordered"><tr>
        <th colspan="3">{$LNG.ga_definetarget}</th>
</tr>
<tr style="height:26px;">
	<td width="50%">{$LNG.ga_planettypes}:</td>
	<td width="50%">
		<table class="table table-bordered">
			<tr>
				<td class="transparent"><input type="checkbox" name="planet" value="1" checked></td>
				<td class="transparent left">{$LNG.fcm_planet}</td>
			</tr>
			<tr>
				<td class="transparent"><input type="checkbox" name="moon" value="1"></td>
				<td class="transparent left">{$LNG.fcm_moon}</td>
			</tr>
		</table>
	</td>
</tr>
<tr style="height:26px;"><td width="50%">{$LNG.ga_homecoordinates}:</td><td width="50%"><input type="checkbox" name="mainplanet" value="1"></td></tr>
<tr style="height:26px;"><td width="50%">{$LNG.ga_no_inactives}:</td><td width="50%"><input type="checkbox" name="no_inactive" value="1"></td></tr>
</table>


<!-- Rohstoffe -->
<table class="table table-bordered">
<tr>
        <th colspan="2">{$LNG.tech.900}</th>
</tr>
{foreach item=Element from=$reslist.resstype.1}
<tr><td width="50%">{$LNG.tech.{$Element}}:</td><td width="50%"><input type="text" name="element_{$Element}" value="0" pattern="[0-9]*"></td></tr>
{/foreach}
{foreach item=Element from=$reslist.resstype.3}
<tr><td width="50%">{$LNG.tech.{$Element}}:</td><td width="50%"><input type="text" name="element_{$Element}" value="0" pattern="[0-9]*"></td></tr>
{/foreach}
</table>

<!-- Gebäude -->
<table class="table table-bordered">
<tr>
        <th colspan="2">{$LNG.tech.0}</th>
</tr>
{foreach item=Element from=$reslist.build}
<tr><td width="50%">{$LNG.tech.{$Element}}:</td><td width="50%"><input type="text" name="element_{$Element}" value="0" pattern="[0-9]*"></td></tr>
{/foreach}
</table>

<!-- Technologie -->
<table class="table table-bordered">
<tr>
        <th colspan="2">{$LNG.tech.100}</th>
</tr>
{foreach item=Element from=$reslist.tech}
<tr><td width="50%">{$LNG.tech.{$Element}}:</td><td width="50%"><input type="text" name="element_{$Element}" value="0" pattern="[0-9]*"></td></tr>
{/foreach}
</table>

<!-- Schiffe -->
<table class="table table-bordered">
<tr>
        <th colspan="2">{$LNG.tech.200}</th>
</tr>
{foreach item=Element from=$reslist.fleet}
<tr><td width="50%">{$LNG.tech.{$Element}}:</td><td width="50%"><input type="text" name="element_{$Element}" value="0" pattern="[0-9]*"></td></tr>
{/foreach}
</table>

<!-- Verteidigung -->
<table class="table table-bordered">
<tr>
        <th colspan="2">{$LNG.tech.400}</th>
</tr>
{foreach item=Element from=$reslist.defense}
<tr><td width="50%">{$LNG.tech.{$Element}}:</td><td width="50%"><input type="text" name="element_{$Element}" value="0" pattern="[0-9]*"></td></tr>
{/foreach}
</table>

<!-- Offiziere -->
<table class="table table-bordered">
<tr>
        <th colspan="2">{$LNG.tech.600}</th>
</tr>
{foreach item=Element from=$reslist.officier}
<tr><td width="50%">{$LNG.tech.{$Element}}:</td><td width="50%"><input type="text" name="element_{$Element}" value="0" pattern="[0-9]*"></td></tr>
{/foreach}
</table>


<table class="table table-bordered">
<tr>
        <td><input type="submit" value="{$LNG.qe_send}"></td>
</tr>
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



</form>
{include file="overall_footer.tpl"}