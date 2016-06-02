{block name="title" prepend}{$LNG.lm_alliance}{/block}
{block name="content"}



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
										
											<table class="table table-bordered">
												<thead>
													<tr>
		<th>{$LNG.al_candidate}</th>
		<th>{$LNG.al_request_date}</th>
		<th></th>
													</tr>
												</thead>
												<tbody>
{foreach $applyList as $applyRow}
	<tr>
		<td><a href="game.php?page=alliance&amp;mode=admin&amp;action=detailApply&amp;id={$applyRow.id}">{$applyRow.username}</a></td>
		<td><a href="game.php?page=alliance&amp;mode=admin&amp;action=detailApply&amp;id={$applyRow.id}">{$applyRow.time}</a></td>
		<td><a class="btn txt-color-white btn-block bg-color-teal btn-sm" href="game.php?page=alliance&amp;mode=admin&amp;action=detailApply&amp;id={$applyRow.id}">Check</a></td>
	</tr>
	{foreachelse}
		<tr>
		<td colspan="3">{$LNG.al_no_requests}</td>
	</tr>
	{/foreach}
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