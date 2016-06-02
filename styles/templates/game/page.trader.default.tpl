{block name="title" prepend}{$LNG.lm_trader}{/block}
{block name="content"}

{if $requiredDarkMatter}
<div class="alert alert-danger fade in">
<i class="fa-fw fa fa-times"></i>
<strong>Error!</strong> {$requiredDarkMatter}.
</div>
{/if}

						<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-arrows-h"></i> </span>
									<h2>{$LNG.lm_trader}</h2>

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
										<p>{$LNG.tr_call_trader_who_buys}</p>
										<p>{$tr_cost_dm_trader}</p>
										
										<div class="table-responsive">
										
											<table class="table table-bordered" >
												<thead>
													<tr>
													{foreach $charge as $resourceID => $chageData}
													<th>
													{if !$requiredDarkMatter}
													<center><form action="game.php?page=trader" method="post">
						<input type="hidden" name="mode" value="trade">
						<input type="hidden" name="resource" value="{$resourceID}">
						<input type="image" id="trader_metal" src="{$dpath}images/{$resource.$resourceID}.gif" title="{$LNG.tech.$resourceID}" border="0" height="32" width="52"> <br>
						<label for="trader_metal">{$LNG.tech.$resourceID}<br>({$LNG.tr_exchange_quota}: {$charge.$resourceID.901}/{$charge.$resourceID.902}/{$charge.$resourceID.903})</label>
						</form></center>
						{else}<center><img src="{$dpath}images/{$resource.$resourceID}.gif" title="{$LNG.tech.$resourceID}" border="0" height="32" width="52" style="margin: 3px;"><br>{$LNG.tech.$resourceID} <br>({$LNG.tr_exchange_quota}: {$charge.$resourceID.901}/{$charge.$resourceID.902}/{$charge.$resourceID.903}){/if}</center></th>
													{/foreach}
													</tr>
												</thead>
											</table>
											
										</div>
										</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->

	
						</article>


{/block}