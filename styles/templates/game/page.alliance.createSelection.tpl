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
			<td style="width:50%"><a class="btn txt-color-white btn-block bg-color-teal btn-sm" href="game.php?page=alliance&amp;mode=create">{$LNG.al_alliance_make}</a></td>
			<td style="width:50%"><a class="btn txt-color-white btn-block bg-color-teal btn-sm" href="game.php?page=alliance&amp;mode=search">{$LNG.al_alliance_search}</a></td>
													</tr>
												</thead>
											</table>
										
											<table id="stats_dt" class="table table-striped table-bordered table-hover" width="100%">
	<thead>			                
		<tr>
			<th><i class='glyphicon glyphicon-sort'></i> Image</th>
			<th data-class="expand"><i class='fa fa-users'></i> Alliance</th>
			<th data-hide="phone,tablet"><i class='fa fa-group'></i> Players</th>
			<th><i class='glyphicon glyphicon-signal'></i> {$LNG.st_points}</th>
		</tr>
	</thead>
	<tbody>
		{foreach $topAlly as $id => $ally}
													<tr>
			<td ><img src="{$ally.img}" style="width100px;height:50px;"></td>
			<td >{$ally.name} [{$ally.tag}]</td>
			<td > {$ally.members} Players</td>
			<td ><a class="btn btn-primary" href="game.php?page=alliance&amp;mode=info&amp;id={$ally.id}">Join</a></td>
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