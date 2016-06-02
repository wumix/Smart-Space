{block name="title" prepend}{$LNG.lm_faq}{/block}
{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-support"></i> </span>
									<h2>{$LNG.lm_faq}</h2>

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
		<th>{$LNG.faq_overview}</th>
	</tr>
	<tr>
		<td class="left">{foreach $LNG.questions as $categoryID => $categoryRow}<h2>{$categoryRow.category}</h2>
		<ul>
		{foreach $categoryRow as $questionID => $questionRow}
		{if is_numeric($questionID)}
			<li><a href="game.php?page=questions&amp;mode=single&amp;categoryID={$categoryID}&amp;questionID={$questionID}">{$questionRow.title}</a></li>
		{/if}
		{/foreach}
		</ul>
		{/foreach}</td>
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


{/block}