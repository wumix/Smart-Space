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
															{if $ally_web}<a class="btn txt-color-white bg-color-teal btn-sm" href="{$ally_web}">{$LNG.al_web_text}</a>{/if}
															{if $ally_request_min_points}
	<td><a class="btn txt-color-white bg-color-teal btn-sm" href="game.php?page=alliance&amp;mode=apply&amp;id={$ally_id}">{$LNG.al_click_to_send_request}</a></td>
	{else}
		<td><button class="btn txt-color-white bg-color-teal btn-sm">{$ally_request_min_points_info}</button>
	{/if}
														</div>
														<div class="air air-top-left padding-10">
															<h4 class="txt-color-white font-md">{$ally_name} ({$ally_tag}) </h4>
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
				



{/block}