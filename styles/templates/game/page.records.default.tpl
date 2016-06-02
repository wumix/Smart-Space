{block name="title" prepend}{$LNG.lm_records}{/block}
{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-trophy"></i> </span>
									<h2>{$LNG.lm_records}</h2>

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
	<th colspan="4" style="text-align:center;">{$LNG.rec_last_update_on}: {$update}</th>
</tr>
<tr>
	<th colspan="2">{$LNG.tech.0}</th>
	<th width="33%">{$LNG.rec_players}</th>
	<th width="33%">{$LNG.rec_level}</th>
</tr>
{foreach $buildList as $elementID => $elementRow}
<tr>
	<td><img style=" margin-left: auto; margin-right: auto;"src="styles/gebaeude/{$elementID}.gif" width="20" height="20"></td>
	<td>{$LNG.tech.{$elementID}}</td>
	{if !empty($elementRow)}
	<td>{foreach $elementRow as $user}<a href='#' onclick='return Dialog.Playercard({$user.userID});'>{$user.username}</a>{if !$user@last}<br>{/if}{/foreach}</td>
	<td>{$elementRow[0].level|number}</td>
	{else}
	<td>-</td>
	<td>-</td>
	{/if}
</tr>
{/foreach}
<tr>
	<th colspan="2">{$LNG.tech.100}</th>
	<th>{$LNG.rec_players}</th>
	<th>{$LNG.rec_level}</th>
</tr>
{foreach $researchList as $elementID => $elementRow}
<tr>
	<td><img style=" margin-left: auto; margin-right: auto;"src="styles/gebaeude/{$elementID}.gif" width="20" height="20"></td>
	<td>{$LNG.tech.{$elementID}}</td>
	{if !empty($elementRow)}
	<td>{foreach $elementRow as $user}<a href='#' onclick='return Dialog.Playercard({$user.userID});'>{$user.username}</a>{if !$user@last}<br>{/if}{/foreach}</td>
	<td>{$elementRow[0].level|number}</td>
	{else}
	<td>-</td>
	<td>-</td>
	{/if}
</tr>
{/foreach}
<tr>
	<th colspan="2">{$LNG.tech.200}</th>
	<th>{$LNG.rec_players}</th>
	<th>{$LNG.rec_count}</th>
</tr>
{foreach $fleetList as $elementID => $elementRow}
<tr>
	<td><img style=" margin-left: auto; margin-right: auto;"src="styles/gebaeude/{$elementID}.gif" width="20" height="20"></td>
	<td>{$LNG.tech.{$elementID}}</td>
	{if !empty($elementRow)}
	<td>{foreach $elementRow as $user}<a href='#' onclick='return Dialog.Playercard({$user.userID});'>{$user.username}</a>{if !$user@last}<br>{/if}{/foreach}</td>
	<td>{$elementRow[0].level|number}</td>
	{else}
	<td>-</td>
	<td>-</td>
	{/if}
</tr>
{/foreach}
<tr>
	<th colspan="2">{$LNG.tech.400}</th>
	<th>{$LNG.rec_players}</th>
	<th>{$LNG.rec_count}</th>
</tr>
{foreach $defenseList as $elementID => $elementRow}
<tr>
	<td><img style=" margin-left: auto; margin-right: auto;"src="styles/gebaeude/{$elementID}.gif" width="20" height="20"></td>
	<td>{$LNG.tech.{$elementID}}</td>
	{if !empty($elementRow)}
	<td>{foreach $elementRow as $user}<a href='#' onclick='return Dialog.Playercard({$user.userID});'>{$user.username}</a>{if !$user@last}<br>{/if}{/foreach}</td>
	<td>{$elementRow[0].level|number}</td>
	{else}
	<td>-</td>
	<td>-</td>
	{/if}
</tr>
{/foreach}
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