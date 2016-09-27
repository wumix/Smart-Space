{block name="title" prepend}{$LNG.lm_alliance}{/block}
{block name="content"}




							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-users"></i> </span>
									<h2>{$LNG.al_alliance}</h2>

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
			<td style="width:50%"><a href="game.php?page=alliance&amp;mode=create">{$LNG.al_alliance_make}</a></td>
			</tr>
		<tr>
			<td style="width:50%"><a href="game.php?page=alliance&amp;mode=search">{$LNG.al_alliance_search}</a></td>
</tr>

											</table>
											</form>
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->

{/block}