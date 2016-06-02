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
	<tr>
		<th colspan="6">{$LNG.ti_header}</th>
	</tr>
	<tr>
		<th style="width:10%">{$LNG.ti_id}</td>
		<th style="width:10%">{$LNG.ti_username}</td>
		<th style="width:40%">{$LNG.ti_subject}</td>
		<th style="width:10%">{$LNG.ti_answers}</td>
		<th style="width:15%">{$LNG.ti_date}</td>
		<th style="width:15%">{$LNG.ti_status}</td>
	</tr>
	{foreach $ticketList as $TicketID => $TicketInfo}	
	{if $TicketInfo.status < 2}
	<tr>
		<td><a href="admin.php?page=support&amp;mode=view&amp;id={$TicketID}">#{$TicketID}</a></td>
		<td><a href="admin.php?page=support&amp;mode=view&amp;id={$TicketID}">{$TicketInfo.username}</a></td>
		<td><a href="admin.php?page=support&amp;mode=view&amp;id={$TicketID}">{$TicketInfo.subject}</a></td>
		<td>{$TicketInfo.answer - 1}</td>
		<td>{$TicketInfo.time}</td>
		<td>{if $TicketInfo.status == 0}<span style="color:green">{$LNG.ti_status_open}</span>{elseif $TicketInfo.status == 1}<span style="color:orange">{$LNG.ti_status_answer}</span>{/if}</td>
	</tr>
	{/if}
	{/foreach}
	<tr>
		<th colspan="6">{$LNG.ti_status_closed}</th>
	</tr>
	<tr>
		<th style="width:10%">{$LNG.ti_id}</td>
		<th style="width:10%">{$LNG.ti_username}</td>
		<th style="width:40%">{$LNG.ti_subject}</td>
		<th style="width:10%">{$LNG.ti_answers}</td>
		<th style="width:15%">{$LNG.ti_date}</td>
		<th style="width:15%">{$LNG.ti_status}</td>
	</tr>
	{foreach $ticketList as $TicketID => $TicketInfo}	
	{if $TicketInfo.status == 2}
	<tr>
		<td><a href="admin.php?page=support&amp;mode=view&amp;id={$TicketID}">#{$TicketID}</a></td>
		<td><a href="admin.php?page=support&amp;mode=view&amp;id={$TicketID}">{$TicketInfo.username}</a></td>
		<td><a href="admin.php?page=support&amp;mode=view&amp;id={$TicketID}">{$TicketInfo.subject}</a></td>
		<td>{$TicketInfo.answer - 1}</td>
		<td>{$TicketInfo.time}</td>
		<td><span style="color:red">{$LNG.ti_status_closed}</span></td>
	</tr>
	{/if}
	{/foreach}												</thead>
											</table>
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->


{include file="overall_footer.tpl"}