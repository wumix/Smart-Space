{include file="overall_header.tpl"}
<center>
<div class="alert alert-danger fade in alert-dismisable">
    {foreach item=Message from=$Messages}
	{$Message}</span><br>
	{foreachelse}{$LNG.ow_none}{/foreach}
	</td>
</div>


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
									<span class="widget-icon"></span>
									<h2>Overview Menu</h2>

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
	<td><center><a href="?page=search&search=online&minimize=on"><i class="fa fa-check-square fa-4x"></i></a></center></td>
	<td><center><a href="?page=search&search=users&minimize=on"><i class="fa fa-users fa-4x"></a></center></td>
	<td><center><a href="?page=search&search=planet&minimize=on"><i class="fa fa-certificate fa-4x"></a></center></td>
	<td><center><a href="?page=search&search=moon&minimize=on"><i class="fa fa-moon-o fa-4x"></a></center></td>
	<td><center><a href="?page=fleets"><i class="fa fa-space-shuttle fa-4x"></a></center></td>

</tr>
<tr>
	<td width="20%"><center><a href="?page=search&search=online&minimize=on">Online Users</a></center></td>
	<td width="20%"><center><a href="?page=search&search=users&minimize=on">Player List</a></center></td>
	<td width="20%"><center><a href="?page=search&search=planet&minimize=on">Planet List</a></center></td>
	<td width="20%"><center><a href="?page=search&search=moon&minimize=on">Moon List</a></center></td>
	<td width="20%"><center><a href="?page=fleets">Fleet List</a></center></td>

</tr>
												</thead>
											<table class="table table-bordered">
												<thead>
												<tr>
	<td><center><a href="?page=bans"><i class="fa fa-lock fa-4x"></a></center></td>
	<td><center><a href="?page=search&amp;search=p_connect&amp;minimize=on"><i class="fa fa-compass fa-4x"></a></center></td>
	<td><center><a href="#"><font color="red"><i class="fa fa-search fa-4x"></a></font></center></td>
	<td><center><a href="?page=create"><i class="fa fa-indent fa-4x"></a></center></td>
	<td><center><a href="?page=active"><i class="fa fa-check fa-4x"></a></center></td>

</tr>
<tr>
	<td width="20%"><center><a href="?page=bans">{$LNG.mu_ban_options}</a></center></td>
	<td width="20%"><center><a href="?page=search&amp;search=p_connect&amp;minimize=on">{$LNG.mu_active_planets}</a></center></td>
	<td width="20%"><center><a href="#"><font color="red">Install MOD's</font></a></center></td>
	<td width="20%"><center><a href="?page=create">{$LNG.new_creator_title}</a></center></td>
	<td width="20%"><center><a href="?page=active">{$LNG.mu_vaild_users}</a></center></td>

</tr>												</thead>
											<table class="table table-bordered">
												<thead>
<tr>
	<td><center><a href="?page=accountdata"><i class="fa fa-eye fa-4x"></i></a></center></td>
	<td><center><a href="?page=support"><i class="fa fa-life-ring fa-4x"></i></a></center></td>
	<td><center><a href="?page=messagelist"><i class="fa fa-inbox fa-4x"></i></a></center></td>
	<td><center><a href="?page=multiips"><i class="fa fa-slideshare fa-4x"></i></a></center></td>
	<td><center><a href="?page=news"><i class="fa fa-newspaper-o fa-4x"></i></a></center></td>

</tr>
<tr>
	<td width="20%"><center><a href="?page=accountdata">{$LNG.mu_info_account_page}</a></center></td>
	<td width="20%"><center><a href="?page=support">{$LNG.mu_support}{if $supportticks != 0} ({$supportticks}){/if}</a></center></td>
	<td width="20%"><center><a href="?page=messagelist">{$LNG.mu_mess_list}</a></center></td>
	<td width="20%"><center><a href="?page=multiips">{$LNG.mu_multiip_page}</a></center></td>
	<td width="20%"><center><a href="?page=news">{$LNG.mu_news}</a></center></td>

</tr>						</thead>
											</table>
											
												</thead>
											<table class="table table-bordered">
												<thead>
					<thead>
<tr>
	<td><center><a href="?page=giveaway"><i class="fa fa-smile-o fa-4x"></a></center></td>
	<td><center><a href="?page=cronjob"><i class="fa fa-database fa-4x"></a></center></td>
	<td><center><a href="?page=globalmessage"><i class="fa fa-envelope fa-4x"></a></center></td>
	<td><center><a href="?page=statsupdate"><i class="fa fa-retweet fa-4x"></a></center></td>
	<td><center><a href="?page=clearcache"><i class="fa fa-spinner fa-4x"></a></center></td>

</tr>
<tr>
	<td width="20%"><center><a href="?page=giveaway">{$LNG.mu_giveaway}</a></center></td>
	<td width="20%"><center><a href="?page=cronjob">{$LNG.mu_cronjob}</a></center></td>
	<td width="20%"><center><a href="?page=globalmessage">{$LNG.mu_global_message}</a></center></td>
	<td width="20%"><center><a href="?page=statsupdate">{$LNG.mu_manual_points_update}</a></center></td>
	<td width="20%"><center><a href="?page=clearcache">{$LNG.mu_clear_cache}</a></center></td>

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



<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">
google.load("feeds", "1");
google.setOnLoadCallback(initialize);
function initialize() {
	var feedControl = new google.feeds.FeedControl();
	feedControl.addFeed("http://code.google.com/feeds/p/2moons/svnchanges/basic", "");
	feedControl.draw(document.getElementById("feed"));
	var feedControl = new google.feeds.FeedControl();
	feedControl.addFeed("https://www.facebook.com/feeds/page.php?id=129282307106646&format=rss20", "");
	feedControl.draw(document.getElementById("news"));
}
</script>
{include file="overall_footer.tpl"}