{block name="title" prepend}{$LNG.lm_technology}{/block}
{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-darken" id="wid-id-1" data-widget-editbutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-table"></i> </span>
									<h2>{$LNG.tt_requirements}</h2>
								</header>

								<!-- widget div-->
								<div>

									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->

									</div>
									<!-- end widget edit box -->

									<!-- widget content -->
									<div class="widget-body no-padding">

										
										<div class="table-responsive">
												
											<table class="table table-bordered table-striped">
											{foreach $TechTreeList as $elementID => $requireList}
											{if !is_array($requireList)}
												<thead>
													<tr>
														<th>&nbsp</th>
														<th>{$LNG.tech.$requireList}</th>
														<th>{$LNG.tt_requirements}</th>
													</tr>
												</thead>
												{else}
												<tbody>
													<tr>
														<td><a href="#" onclick="return Dialog.info({$elementID})"><img style=" margin-left: auto; margin-right: auto;"src="styles/gebaeude/{$elementID}.{if $elementID >=600 && $elementID <= 699}jpg{else}gif{/if}" width="50" height="50"></a></td>
														<td><a href="#" onclick="return Dialog.info({$elementID})">{$LNG.tech.$elementID}</a></td>
														<td>{if $requireList}
														{foreach $requireList as $requireID => $NeedLevel}
																								<a href="#" onclick="return Dialog.info({$requireID})"  class="btn btn-default"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="<span style='color:{if $NeedLevel.own < $NeedLevel.count}red{else}lime{/if};'>{$LNG.tech.$requireID} ({$LNG.tt_lvl} {min($NeedLevel.count, $NeedLevel.own)} / {$NeedLevel.count})</span>">
                							<img src="styles/gebaeude/{$requireID}.{if $requireID >=600 && $requireID <= 699}jpg{else}gif{/if}" width="45" height="45" alt="{$LNG.tech.$requireID}">
                							<span style="color:{if $NeedLevel.own < $NeedLevel.count}red{else}lime{/if};">{min($NeedLevel.count, $NeedLevel.own)} / {$NeedLevel.count}</span>
            							</a>      
														{/foreach}
														{else}
														<a href="#"  class="btn btn-default">
                							<span>Unlocked</span>
            							</a> 
														{/if}</td>
													</tr>
												</tbody>
												{/if}
												{/foreach}
											</table>
											
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->


{/block}