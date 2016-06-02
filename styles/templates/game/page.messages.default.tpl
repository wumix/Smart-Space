{block name="title" prepend}{$LNG.lm_messages}{/block}
{block name="content"}

							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-inbox"></i> </span>
									<h2>{$LNG.lm_messages}</h2>

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
		<th colspan="6">{$LNG.mg_overview}<span id="loading" style="display:none;"> ({$LNG.loading})</span></th>
	</tr>
		{foreach $CategoryList as $CategoryID => $CategoryRow}
		{if ($CategoryRow@iteration % 3) === 1}<tr>{/if}
		{if $CategoryRow@last && ($CategoryRow@iteration % 3) !== 0}<td>&nbsp;</td>{/if}
		<td style="word-wrap: break-word;color:{$CategoryRow.color};"><a href="#" onclick="Message.getMessages({$CategoryID});return false;" style="color:{$CategoryRow.color};">{$LNG.mg_type.{$CategoryID}}</a>
		<br><span id="unread_{$CategoryID}">{$CategoryRow.unread}</span>/<span id="total_{$CategoryID}">{$CategoryRow.total}</span>
		</td>
		{if $CategoryRow@last || ($CategoryRow@iteration % 3) === 0}</tr>{/if}
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
{block name="script" append}
{if !empty($category)}
<script>$(function() {
	Message.getMessages({$category}, {$side});
})</script>
{/if}
{/block}