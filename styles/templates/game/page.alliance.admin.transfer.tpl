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
<form action="game.php?page=alliance&amp;mode=admin&amp;action=transfer" method="post">

											<table class="table table-bordered">
												<thead>	<tr>
		<td>{$LNG.al_transfer_to}:</td>
		<td>{html_options name=newleader options=$transferUserList}</td>
		<td><input type="submit" class="btn txt-color-white btn-block bg-color-teal btn-sm" value="{$LNG.al_transfer_submit}"></td>
	</tr>
												</thead>
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