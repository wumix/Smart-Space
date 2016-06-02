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
{nocache}{if isset($mode)}
<form method="POST" action="?page=news&amp;action=send&amp;mode={$mode}">
{if $news_id}<input name="id" type="hidden" value="{$news_id}">{/if}
<tr>
	<th colspan="2">{$nws_head}</th>
</tr>
<tr>
<tr>
	<td width="25%">{$nws_title}</td><td><input type="text" name="title" value="{$news_title}"></td>
</tr>
<tr>
	<td>{$nws_content}</td><td><textarea cols="70" rows="10" name="text">{$news_text}</textarea></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" name="Submit" value="{$button_submit}"></td>
</tr>
</table>
</form>
{/if}{/nocache}

<table class="table table-bordered">
<thead>
<tr>
	<th colspan="5">{$nws_news}</thd>
</tr>
<tr>
	<td>{$nws_id}</td>
	<td>{$nws_title}</td>
	<td>{$nws_date}</td>
	<td>{$nws_from}</td>
	<td>{$nws_del}</td>
</tr>
{foreach name=NewsList item=NewsRow from=$NewsList}<tr>
<td><a href="?page=news&amp;action=edit&amp;id={$NewsRow.id}">{$NewsRow.id}</a></td>
<td><a href="?page=news&amp;action=edit&amp;id={$NewsRow.id}">{$NewsRow.title}</a></td>
<td><a href="?page=news&amp;action=edit&amp;id={$NewsRow.id}">{$NewsRow.date}</a></td>
<td><a href="?page=news&amp;action=edit&amp;id={$NewsRow.id}">{$NewsRow.user}</a></td>
<td><a href="?page=news&amp;action=delete&amp;id={$NewsRow.id}" onclick="return confirm('{$NewsRow.confirm}');"><img border="0" src="./styles/resource/images/alliance/CLOSE.png" width="16" height="16"></a></td>
</tr>
{/foreach}
<tr><td colspan="5"><a href="?page=news&amp;action=create">{$nws_create}</a></td></tr>
<tr><td colspan="5">{$nws_total}</td></tr>


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