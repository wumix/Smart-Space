{block name="title" prepend}{$LNG.lm_alliance}{/block}
{block name="content"}


							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-users"></i> </span>
									<h2>{$LNG.al_find_alliances}</h2>

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
											<form action="game.php?page=alliance&amp;mode=search" method="post">

												<thead>
													<tr>
			<th>{$LNG.al_find_text}</th>
			<th><font color="black"><input type="text" name="searchtext" value="{$searchText}"> <input class="btn txt-color-white bg-color-teal btn-sm" type="submit" value="{$LNG.al_find_submit}"></th>
													</tr>
												</thead>
												</form>
												<tbody>
												{if !empty($searchList)}
		<tr>
		<th>{$LNG.al_ally_info_tag}</th>
		<th>{$LNG.al_ally_info_name}</th>
		<th>{$LNG.al_ally_info_members}</th>
	</tr>
	{foreach $searchList as $seachRow}
	<tr>
		<td><a href="game.php?page=alliance&amp;mode=apply&amp;id={$seachRow.id}">{$seachRow.tag}</a></td>
		<td><a href="game.php?page=alliance&amp;mode=apply&amp;id={$seachRow.id}">{$seachRow.name}</a></td>
		<td><a href="game.php?page=alliance&amp;mode=apply&amp;id={$seachRow.id}">{$seachRow.members}</a></td>
	</tr>
	{foreachelse}
	<tr>
	<td colspan="3">-</td>
	</tr>
	{/foreach}
													{/if}
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