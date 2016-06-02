{block name="title" prepend}{$LNG.lm_alliance}{/block}
{block name="content"}


{$countRank = count($avalibleRanks)}
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-users"></i> </span>
									<h2>{$LNG.lm_alliance}</h2>

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
										<form action="game.php?page=alliance&amp;mode=admin&amp;action=permissionsSend" method="post">

											<table class="table table-bordered">
												<thead>
													<tr>
																<th colspan="{count($avalibleRanks) + 2}">{$LNG.al_configura_ranks} <span style="float:right;"><button class="btn txt-color-white bg-color-teal btn-sm" id="create_new_alliance_rank">+</button></span></th>

													</tr>
													
	<tr>
		<td>{$LNG.al_dlte}</td>
		<td>{$LNG.al_rank_name}</td>
		{foreach $avalibleRanks as $rankName}
		<td><img src="styles/resource/images/alliance/{$rankName}.png" alt="" width="16" height="16"></td>
		{/foreach}
	</tr>
												</thead>
												<tbody>
													{foreach $rankList as $rankID => $rankRow}
	<tr>
		<td><a href="game.php?page=alliance&amp;mode=admin&amp;action=permissionsSend&amp;deleteRank={$rankID}"><img src="styles/resource/images/alliance/CLOSE.png" alt="" width="16" height="16"></a></td>
		<td><font color="black"><input type="text" name="rank[{$rankID}][name]" value="{$rankRow.rankName}"></td>
		{foreach $avalibleRanks as $rankName}
		<td><input type="checkbox" name="rank[{$rankID}][{$rankName}]" value="1"{if $rankRow[$rankName]} checked{/if}{if !$ownRights[$rankName]} disabled{/if}></td>
		{/foreach}
	</tr>
	{foreachelse}
	<tr>
		<td colspan="{$countRank + 2}">{$LNG.al_no_ranks_defined}</td>
	</tr>
	{/foreach}
	<tr>
		<td colspan="{$countRank + 2}"><input type="submit" class="btn txt-color-white bg-color-teal btn-sm" value="{$LNG.al_save}"></td>
	</tr>
	<tr>
			<th colspan="{$countRank + 2}">{$LNG.gl_legend}</th>
	</tr>
		{foreach $avalibleRanks as $rankName}
	<tr>
			<td><img src="styles/resource/images/alliance/{$rankName}.png" alt="" width="16" height="16"></td>
			<td colspan="{$countRank + 1}">{$LNG.al_rank_desc[$rankName]}</td>
	</tr>
		{/foreach}
												</tbody>
											</table>
											</form>
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->
							

							
<div id="new_alliance_rank" title="{$LNG.al_create_new_rank}" style="display:none;">
	<form action="game.php?page=alliance&amp;mode=admin&amp;action=permissionsSend" method="post">
		<table style="width:740px">
	<tr>
				<td>{$LNG.al_rank_name}</th>
				<td><font color="black"><input type="text" name="newrank[rankName]" size="20" maxlength="32" required></td>
	</tr>
			<tr>
				<th colspan="{$countRank + 2}">&nbsp;</th>
			</tr>
	{foreach $avalibleRanks as $rankName}
	<tr>
				<td><img src="styles/resource/images/alliance/{$rankName}.png" alt="{$rankName}" width="16" height="16">&nbsp;{$LNG.al_rank_desc[$rankName]}</td>
				<td><input type="checkbox" name="newrank[{$rankName}]" value="1" title="{$LNG.al_rank_desc[$rankName]}"></td>
	</tr>
	{/foreach}
	<tr>
				<td colspan="{$countRank + 2}"><input class="btn btn-default" type="submit" value="{$LNG.al_create}"></td>
	</tr>
	</table>
</form>
</div>


{/block}