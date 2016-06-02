{block name="title" prepend}Fleet Gate {/block}
{block name="content"}
<script type="text/javascript">
$(document).ready(function(){
    $('span.all_true').click(function() {
        $(':checkbox').attr('checked',true);
    });
	$('span.all_false').click(function() {
        $(':checkbox').attr('checked',false);
    });
	$('#speed').on('change', function() {
		document.location = '?'+queryString+'&speed='+$(this).val();
	});
});
</script>

<form action="game.php?page=fleetGate&amp;mode=reduce" method="post" id="form">
	<table style="width:768px !important">
		<tr style="height:20px;">
			<th colspan="5">
                {$LNG.redfleet1} 
                [<span class="all_true" style="color:#6C0; cursor:pointer;">{$LNG.redfleet2}</span>]
                [<span class="all_false" style="color:#F90; cursor:pointer;">{$LNG.redfleet3}</span>]
                <span style="float:right;">
                    {$LNG.fl_fleet_speed}            
                    <select id="speed" name="speed">
                        {html_options options=$speedSelect selected=$speed}
                    </select> %
                </span>
            </th>
		</tr>
	{if $ACSList}
		{foreach $ACSList as $ACSRow}
		<tr style="height:20px;">
			<td>
            	[{$ACSRow.galaxy}:{$ACSRow.system}:{$ACSRow.planet}]
            	{$ACSRow.name}<br />
                {if $ACSRow.time_fleet != 0 }
                	<span style="color:#09F;">Время: {$ACSRow.time_fleet|time}</span>
                {/if}
            </td>
            <td style="text-align:left;">
                {foreach $reducefleet as $ship}
                    {if $ACSRow.{$ship} != 0}
                        {$LNG.tech.{$ship}}: {$ACSRow.{$ship}|number}<br />
                    {/if}
                {/foreach}
            </td>            
            {if $ACSRow.deuterium < $ACSRow.consumption_fleet && $ACSRow.consumption_fleet !=0}	
            <td colspan="2">
                <span style="color:#3C0;">{$LNG.redfleet4} {$LNG.tech.903} ({($ACSRow.consumption_fleet - $ACSRow.deuterium)|number})</span>
            <td>
            {elseif $ACSRow.sumcapacity < $ACSRow.consumption_fleet && $ACSRow.consumption_fleet !=0 && $ACSRow.sumcapacity !=0}	
            <td colspan="2">
                <span style="color:#FC0;">{$LNG.redfleet5}</span>
            <td>
            {else}
            <td>
                <span style="color:#0C0;">{$LNG.redfleet6} {$LNG.tech.903}:</span> {($ACSRow.consumption_fleet)|number}
            </td>
            <td>
                <input name="palanets[]" type="checkbox" value="{$ACSRow.id}"  />
            </td>
            {/if}
            
		</tr>
		{/foreach}
        <tr style="height:20px;">
			<td colspan="5"><input type="submit" value="{$LNG.fl_continue}"></td>
		</tr>
    {else}
    	<tr style="height:20px;">
			<td colspan="5">-</td>
		</tr>
    {/if}
	</table>
</form>
{/block}