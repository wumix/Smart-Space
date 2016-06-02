<table id="stats_dt" class="table table-striped table-bordered table-hover" width="100%">
	<thead>			                
		<tr>
			<th><i class='glyphicon glyphicon-sort'></i> {$LNG.st_position}</th>
			<th data-class="expand"><i class='fa fa-user'></i> {$LNG.st_player}</th>
			<th data-hide="phone,tablet"><i class='glyphicon glyphicon-envelope'></i></th>
			<th data-hide="phone,tablet"><i class='fa fa-group'></i> {$LNG.st_alliance}</th>
			<th data-hide="phone,tablet"><i class='glyphicon glyphicon-search'></i> Change</th>
			<th data-hide="phone,tablet"><i class='glyphicon glyphicon-flag'></i> {$LNG.op_lang}</th>
			<th><i class='glyphicon glyphicon-signal'></i> {$LNG.st_points}</th>
		</tr>
	</thead>
	<tbody>
		{foreach name=RangeList item=RangeInfo from=$RangeList}
			<tr>
				<td>{$RangeInfo.rank}</td>
				<td><a href="#" onclick="return Dialog.Playercard({$RangeInfo.id}, '{$RangeInfo.name}');"{if $RangeInfo.id == $CUser_id} style="color:lime"{/if}>{$RangeInfo.name}</a></td>
				<td>{if $RangeInfo.id != $CUser_id}<a href="#" onclick="return Dialog.PM({$RangeInfo.id});"><img src="{$dpath}img/m.gif" title="{$LNG.st_write_message}" alt="{$LNG.st_write_message}"></a>{/if}</td>
				<td>{if $RangeInfo.allyid != 0}<a href="game.php?page=alliance&amp;mode=info&amp;id={$RangeInfo.allyid}">{if $RangeInfo.allyid == $CUser_ally}<span style="color:#33CCFF">{$RangeInfo.allyname}</span>{else}{$RangeInfo.allyname}{/if}</a>{else}-{/if}</td>
				<td>{if $RangeInfo.ranking == 0}<span style='color:#87CEEB'><i class='glyphicon glyphicon-minus'></i></span>{elseif $RangeInfo.ranking < 0}<span style='color:red'><i class='glyphicon glyphicon-thumbs-down'></i> {$RangeInfo.ranking}</span>{elseif $RangeInfo.ranking > 0}<span style='color:green'><i class='glyphicon glyphicon-thumbs-up'></i> {$RangeInfo.ranking}</span>{/if}</a></td>
				<td><img src="styles/img/flags/{$RangeInfo.lang}.png" /></td>
				<td>{str_replace('.',',',$RangeInfo.points)}</td>
			</tr>
		{/foreach}
	</tbody>
</table>