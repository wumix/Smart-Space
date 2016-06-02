{include file="overall_header.tpl"}


							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
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
									<h2>&nbsp</h2>

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
										<form action="" method="post" name="countt">
											<table class="table table-bordered">
												<thead>
												
												
{if !empty($error_msg)}
{foreach from=$error_msg item=error}<tr><td colspan=2>{$error}</td></tr>{/foreach}
{/if}
<tr>
	<th colspan=3>{if $id == 0}{$LNG.cronjob_new}{else}{$LNG.cronjob_headline}{$id}{/if}</th>
</tr>
<form method="POST" action="">
<input type="hidden" name="id" value="{$id}">
<tr>
	<td>{$LNG.cronjob_name}</td>
	<td><input type="text" name="name" value="{$name}"></td>
	<td><img src="./styles/resource/images/admin/i.gif" width="16" height="16" alt="" class="tooltip" data-tooltip-content="{$LNG.cronjob_desc_name}"></td>
</tr>
<tr>
<td colspan=3>{$LNG.cronjob_desc}</td>
</tr>
<tr>
	<td>{$LNG.cronjob_min}</td>
	<td colspan=2><select style="height:100px;width:80px;" name="min[]" multiple="multiple">{html_options values=range(0, 59) output=range(0, 59) selected=$min}</select><br>
	<input name="min_all" id="min_all" type="checkbox" value="1" {if $min.0==="*"}checked{/if}><label for="min_all">{$LNG.cronjob_selectall}</label></td>
</tr>
<tr>
	<td>{$LNG.cronjob_hours}</td>
	<td colspan=2><select style="height:100px;width:80px;" name="hours[]" multiple="multiple">{html_options values=range(0, 23) output=range(0, 23) selected=$hours}</select><br>
	<input name="hours_all" id="hours_all" type="checkbox" value="1" {if $hours.0==="*"}checked{/if}><label for="hours_all">{$LNG.cronjob_selectall}</label></td>
</tr>
<tr>
	<td>{$LNG.cronjob_dom}</td>
	<td colspan=2><select style="height:100px;width:80px;" name="dom[]" multiple="multiple">{html_options values=range(1, 31) output=range(1, 31) selected=$dom}</select><br>
	<input name="dom_all" id="dom_all" type="checkbox" value="1" {if $dom.0==="*"}checked{/if}><label for="dom_all">{$LNG.cronjob_selectall}</label></td>
</tr>
<tr>
	<td>{$LNG.cronjob_month}</td>
	<td colspan=2><select style="height:100px;width:80px;" name="month[]" multiple="multiple">{html_options values=range(1, 12) output=$LNG.months selected=$month}</select><br>
	<input name="month_all" id="month_all" type="checkbox" value="1" {if $month.0==="*"}checked{/if}><label for="month_all">{$LNG.cronjob_selectall}</label></td>
</tr>
<tr>
	<td>{$LNG.cronjob_dow}</td>
	<td colspan=2><select style="height:100px;width:80px;" name="dow[]" multiple="multiple">{html_options values=range(0, 6) output=$LNG.week_day selected=$dow}</select><br>
	<input name="dow_all" id="dow_all" type="checkbox" value="1" {if $dow.0==="*"}checked{/if}><label for="dow_all">{$LNG.cronjob_selectall}</label></td>
</tr>
<tr>
	<td>{$LNG.cronjob_class}</td>
	<td>{html_options name="class" output=$avalibleCrons values=$avalibleCrons selected=$class}</td>
	<td><img src="./styles/resource/images/admin/i.gif" width="16" height="16" alt="" class="tooltip" data-tooltip-content="{$LNG.cronjob_desc_class}"></td>
</tr>
<tr>
<td colspan=3>
	<input type="submit" value="OK">
</td>
</form>
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


{include file="overall_footer.tpl"}