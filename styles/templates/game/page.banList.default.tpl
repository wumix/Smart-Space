{block name="title" prepend}{$LNG.lm_banned}{/block}
{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-empire"></i> </span>
									<h2>{$LNG.lm_banned}</h2>

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
												<thead>	<tr>
		<th colspan="5">{$LNG.bn_players_banned_list}</th>
	</tr>
	<tr>
		<td>{$LNG.bn_from}</td>
		<td>{$LNG.bn_until}</td>
		<td>{$LNG.bn_player}</td>
		<td>{$LNG.bn_by}</td>
		<td>{$LNG.bn_reason}</td>
	</tr>
	{if $banCount}
	<tr>
		<td class="right" colspan="5">{$LNG.mg_page}: {if $page != 1}<a href="game.php?page=banList&amp;side={$page - 1}">&laquo;</a>&nbsp;{/if}{for $site=1 to $maxPage}<a href="game.php?page=banList&amp;side={$site}">{if $site == $page}<b>[{$site}]</b>{else}[{$site}]{/if}</a>{if $site != $maxPage}&nbsp;{/if}{/for}{if $page != $maxPage}&nbsp;<a href="game.php?page=banList&amp;side={$page + 1}">&raquo;</a>{/if}</td>
	</tr>
	{foreach $banList as $banRow}
	<tr>
		<td>{$banRow.from}</td>
		<td>{$banRow.to}</td>
		<td>{$banRow.player}</td>
		<td><a href="mailto:{$banRow.mail}" title="{$banRow.info}">{$banRow.admin}</a></td>
		<td>{$banRow.theme}</td>
	</tr>
	{/foreach}
	<tr>
		<td class="right" colspan="5">{$LNG.mg_page}: {if $page != 1}<a href="game.php?page=banList&amp;side={$page - 1}">&laquo;</a>&nbsp;{/if}{for $site=1 to $maxPage}<a href="game.php?page=banList&amp;side={$site}">{if $site == $page}<b>[{$site}]</b>{else}[{$site}]{/if}</a>{if $site != $maxPage}&nbsp;{/if}{/for}{if $page != $maxPage}&nbsp;<a href="game.php?page=banList&amp;side={$page + 1}">&raquo;</a>{/if}</td>
	</tr>
	<tr>
		<td colspan="5">{$LNG.bn_exists}{$banCount|number}{$LNG.bn_players_banned}</td>
	</tr>
	{else}
	<tr>
		<td colspan="5">{$LNG.bn_no_players_banned}</td>
	</tr>	
	{/if}
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