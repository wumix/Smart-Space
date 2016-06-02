<table id="stats_dt" class="table table-striped table-bordered table-hover" width="100%">
	<thead>			                
		<tr>
			<th><i class='glyphicon glyphicon-sort'></i> {$LNG.st_position}</th>
			<th data-class="expand"><i class='fa fa-certificate'></i> {$LNG.st_alliance}</th>	
			<th data-hide="phone,tablet"><i class='fa fa-group'></i> {$LNG.st_members}</th>
			<th><i class='glyphicon glyphicon-signal'></i> {$LNG.st_points}</th>
			<th data-hide="phone,tablet"><i class='glyphicon glyphicon-search'></i> Change</th>
			<th><i class='glyphicon glyphicon-signal'></i> / <i class='fa fa-group'></i> {$LNG.st_per_member}</th>
		</tr>
	</thead>
	<tbody>
		{foreach name=RangeList item=RangeInfo from=$RangeList}
			<tr>
				<td>{$RangeInfo.rank}</td>
				<td><a href="game.php?page=alliance&amp;mode=info&amp;id={$RangeInfo.id}" target="ally"{if $RangeInfo.id == $CUser_ally} style="color:lime"{/if}>{$RangeInfo.name}</a></td>
				<td>{$RangeInfo.members}</td>
				<td>{str_replace('.',',',$RangeInfo.points)}</td>
				<td>{if $RangeInfo.ranking == 0}<span style='color:#87CEEB'><i class='glyphicon glyphicon-minus'></i></span>{elseif $RangeInfo.ranking < 0}<span style='color:red'><i class='glyphicon glyphicon-thumbs-down'></i> {$RangeInfo.ranking}</span>{elseif $RangeInfo.ranking > 0}<span style='color:green'><i class='glyphicon glyphicon-thumbs-up'></i> {$RangeInfo.ranking}</span>{/if}</td>
				<td>{str_replace('.',',',$RangeInfo.mppoints)}</td>
			</tr>
		{/foreach}
	</tbody>
</table>