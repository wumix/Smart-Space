<section id="widget-grid" class="">
	<!-- row -->
	<div class="row">
		<article class="col-sm-12">
			<!-- new widget -->
			<div class="jarviswidget" id="navbarWidget"  data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-sortable="false">
				<header role="heading">
					<span class="widget-icon"> <i class="fa fa-cubes txt-color-darken"></i> </span>
					<h2>Planet Status </h2>
					<div class="widget-toolbar" role="menu">
						<div class="btn-group">
							<button class="btn dropdown-toggle btn-xs btn-warning" data-toggle="dropdown" aria-expanded="false">
								Change Planet <i class="fa fa-caret-down"></i>
							</button>
							<ul class="dropdown-menu pull-right">
								{foreach $PlanetSelect as $PlanetID => $PlanetString}
								<li>
									<a href="?cp={$PlanetID}">{$PlanetString}</a>
								</li>	
								{/foreach}
							</ul>
						</div>
					</div>
				<span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span></header>
				<!-- widget div-->
				<div class="no-padding" role="content">
					<div class="">
						<!-- content -->
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane fade active in no-padding-bottom" style="padding: 0 10px !important;">
								<div class="show-stat-microcharts">

									{foreach $resourceTable as $resourceID => $resourceData}
									<div class="col-xs-12 col-sm-5ths col-md-5ths col-lg-5ths" style="margin-top: 0 !important;">
										{if $resourceData.name == 'energy'}
										{$resourceData.current = $resourceData.max + $resourceData.used }
											{if $resourceData.max == 0}
												{$procent = 0}
											{else}
												{$procent = $resourceData.current / $resourceData.max * 100}
											{/if}	
										
										<div class="easy-pie-chart navbar-pie txt-color-{if $procent <= 0}red {else}{$resourceData.name} {/if}" data-image="{$resourceData.name}" data-percent="{$procent}" data-pie-size="50">
											<span class="percent percent-sign txt-color-{$resourceData.name}"></span>
										</div>
										<span class="easy-pie-title txt-color-{$resourceData.name}"> {$resourceData.current|number} / {$resourceData.max|number} </span>
										{elseif $resourceData.name == 'darkmatter'}
											{if $resourceData.current == 0}
												{$procent = 0}
											{else}
												{$procent = $resourceData.current / 1000000 * 100}
											{/if}
											<div class="easy-pie-chart navbar-pie txt-color-darkmatter" data-image="{$resourceData.name}" data-percent="{$procent}" data-pie-size="50">
												<span class="percent percent-sign txt-color-{$resourceData.name}"></span>
											</div>
											<span class="easy-pie-title txt-color-darkmatter"> 
												{$resourceData.current|number}
											</span>
										{else}
											{if $resourceData.max == 0}
												{$procent = 0}
											{else}
												{$procent = $resourceData.current / $resourceData.max * 100}
											{/if}
										<div class="easy-pie-chart navbar-pie txt-color-{$resourceData.name}" data-image="{$resourceData.name}" data-percent="{$procent}" data-pie-size="50">
											<span class="percent percent-sign txt-color-{$resourceData.name}"></span>
										</div>
										<span class="easy-pie-title txt-color-{$resourceData.name}"> <span class="res_current" id="current_{$resourceData.name}" data-real="{$resourceData.current}"> {$resourceData.current|number}</span> / {$resourceData.max|number} 
										</span>
										{/if}
									</div>
									{/foreach}
								</div>
							</div>
							<!-- end s1 tab pane -->
						</div>
						<!-- end content -->
					</div>
				</div>
				<!-- end widget div -->
			</div>
			<!-- end widget -->
		</article>
	</div>
	<!-- end row -->
</section>
