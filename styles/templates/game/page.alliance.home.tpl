{block name="title" prepend}{$LNG.lm_alliance}{/block}
{block name="content"}

				
				<div class="row">
				
					<div class="col-sm-12">
				
				
							<div class="well well-sm">
				
								<div class="row">
				
									<div class="col-sm-12 col-md-12 col-lg-12">
										<div class="well well-light well-sm no-margin no-padding">
				
											<div class="row">
				
												<div class="col-sm-12">
													<div id="myCarousel" class="carousel fade profile-carousel">
														<div class="air air-bottom-right padding-10">
															{if $rights.ADMIN} <a href="?page=alliance&amp;mode=admin" class="btn txt-color-white bg-color-teal btn-sm">{$LNG.al_manage_alliance}</a>{/if}
															{if $rights.MEMBERLIST} <a class="btn txt-color-white bg-color-teal btn-sm" href="?page=alliance&amp;mode=memberList">{$LNG.al_user_list}</a>{/if}
															{if $rights.SEEAPPLY && $applyCount > 0}<a class="btn txt-color-white bg-color-teal btn-sm" href="?page=alliance&amp;mode=admin&amp;action=mangeApply">{$requests}</a>{/if}
															{if $rights.ROUNDMAIL}<a class="btn txt-color-white bg-color-teal btn-sm" href="game.php?page=alliance&mode=circular" onclick="return Dialog.open(this.href, 650, 300);">{$LNG.al_send_circular_message}</a>{/if}
															{if $ally_web}<a class="btn txt-color-white bg-color-teal btn-sm" href="{$ally_web}">{$LNG.al_web_text}</a>{/if}
															{if !$isOwner}<a class="btn txt-color-white bg-color-teal btn-sm" href="game.php?page=alliance&amp;mode=close" onclick="return confirm('{$LNG.al_leave_ally}');">{$LNG.al_continue}</a>{/if}
														</div>
														<div class="air air-top-left padding-10">
															<h4 class="txt-color-white font-md">{$ally_name} ({$ally_tag}) - {$LNG.al_rank}: {$rankName}</h4>
														</div>
														<div class="carousel-inner">
															<!-- Slide 1 -->
															<div class="item active">
																<img src="{$ally_image}">
															</div>
														</div>
													</div>
												</div>
				
												<div class="col-sm-12">
				
													<div class="row">
				
														<div class="col-sm-3 profile-pic">
															<div class="padding-10">
																<h4 class="font-md"><strong>{$ally_max_members} / {$ally_members}</strong>
																<small>{$LNG.al_ally_info_members}</small></h4>
																<br>
																<h4 class="font-md"><strong>{$totalfight|number}</strong>
																<small>{$LNG.pl_totalfight}</small></h4>
																<br>
																<h4 class="font-md"><strong>{$fightwon|number} {if $totalfight}({round($fightwon / $totalfight * 100, 2)}%){/if}</strong>
																<small>{$LNG.pl_fightwon}</small></h4>
																<br>
																<h4 class="font-md"><strong>{$fightlose|number} {if $totalfight}({round($fightlose / $totalfight * 100, 2)}%){/if}</strong>
																<small>{$LNG.pl_fightlose}</small></h4>
																<br>
																<h4 class="font-md"><strong>{$fightdraw|number} {if $totalfight}({round($fightdraw / $totalfight * 100, 2)}%){/if}</strong>
																<small>{$LNG.pl_fightdraw}</small></h4>
															</div>
														</div>
														<div class="col-sm-9"><br>
															{if $ally_description}
															<p>
				
																{$ally_description}
																{else}
																{$LNG.al_description_message}
															</p>
															{/if}
															<p>
														{$LNG.pl_unitsshot}: {$unitsshot}<br>

														{$LNG.pl_unitslose}: {$unitslose}<br>

														{$LNG.pl_dermetal}: {$dermetal}<br>

														{$LNG.pl_dercrystal}: {$dercrystal}<br>
															</p>
															<p>
															{$ally_text}
															</p>
															<p>
															{$LNG.al_diplo}:<br>
															{if $DiploInfo}
			{if !empty($DiploInfo.0)}<b><u>{$LNG.al_diplo_level.0}</u></b><br><br>{foreach item=PaktInfo from=$DiploInfo.0}<a href="?page=alliance&mode=info&amp;id={$PaktInfo.1}">{$PaktInfo.0}</a><br>{/foreach}<br>{/if}
		{if !empty($DiploInfo.1)}<b><u>{$LNG.al_diplo_level.1}</u></b><br><br>{foreach item=PaktInfo from=$DiploInfo.1}<a href="?page=alliance&mode=info&amp;id={$PaktInfo.1}">{$PaktInfo.0}</a><br>{/foreach}<br>{/if}
		{if !empty($DiploInfo.2)}<b><u>{$LNG.al_diplo_level.2}</u></b><br><br>{foreach item=PaktInfo from=$DiploInfo.2}<a href="?page=alliance&mode=info&amp;id={$PaktInfo.1}">{$PaktInfo.0}</a><br>{/foreach}<br>{/if}
		{if !empty($DiploInfo.3)}<b><u>{$LNG.al_diplo_level.3}</u></b><br><br>{foreach item=PaktInfo from=$DiploInfo.3}<a href="?page=alliance&mode=info&amp;id={$PaktInfo.1}">{$PaktInfo.0}</a><br>{/foreach}<br>{/if}
			{if !empty($DiploInfo.4)}<b><u>{$LNG.al_diplo_level.4}</u></b><br><br>{foreach item=PaktInfo from=$DiploInfo.4}<a href="?page=alliance&mode=info&amp;id={$PaktInfo.1}">{$PaktInfo.0}</a><br>{/foreach}<br>{/if}
		{else}
			{$LNG.al_no_diplo}
		{/if}
															</p>
															<br>
															<br>
															<br>
				
														</div>
				
													</div>
				
												</div>
				
											</div>
				
										</div>
				
									</div>
								</div>
				
							</div>
				
				
					</div>
				
				</div>
				
				{if $rights.EVENTS}
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
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
											{if $ally_events}
											{foreach $ally_events as $member => $events}
												<thead>
													<tr>
														<th colspan="2">{$member}</th>
													</tr>
												</thead>
												<tbody>
												{foreach $events as $index => $fleet}
													<tr>
					<td id="fleettime_{$index}" class="fleets" data-fleet-end-time="{$fleet.returntime}" data-fleet-time="{$fleet.resttime}">-</td>
					<td colspan="2">{$fleet.text}</td>
													</tr>
													{/foreach}
												</tbody>
												{/foreach}
												{else}
												<thead>
													<tr>
														<th colspan="2">{$LNG.al_no_events}</th>
													</tr>
												</thead>
												{/if}
											</table>
											
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->
							{/if}



{/block}