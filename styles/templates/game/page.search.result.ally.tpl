{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-empire"></i> </span>
									<h2>{$LNG.lm_search}</h2>

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
		<th>{$LNG.sh_tag}</th>
		<th>{$LNG.sh_name}</th>
		<th>{$LNG.sh_members}</th>
		<th>{$LNG.sh_points}</th>
	</tr>
	{foreach $searchList as $searchRow}
	<tr>
		<td><a href="game.php?page=alliance&amp;mode=info&amp;tag={$searchRow.allytag}">{$searchRow.allytag}</a></td>
		<td>{$searchRow.allyname}</td>
		<td>{$searchRow.allymembers}</td>
		<td>{$searchRow.allypoints}</td>
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