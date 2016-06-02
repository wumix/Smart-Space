<form action="?page=fleetTable&amp;action=acs" method="post">
<input name="fleetID" value="{$acsData.mainFleetID}" type="hidden">


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
												<thead>	
		<tr style="height:20px;">
			<th colspan="2">{$LNG.fl_sac_of_fleet}</th>
		</tr>
		<tr style="height:20px;">
			<th colspan="2">{$LNG.fl_modify_sac_name} (<a href="javascript:Rename();">{$LNG.fl_acs_change}</a>)</th>
		</tr>
		<tr>
			<td colspan="2" id="acsName">{$acsData.acsName}</td>
		</tr>
		<tr style="height:20px;">
			<th style="width:50%;">{$LNG.fl_members_invited}</th>
            <th style="width:50%;">{$LNG.fl_invite_members}</th>
		</tr>
		{if !empty($acsData.statusMessage)}
		<tr>
			<td colspan="2">
				{$acsData.statusMessage}
			</td>
		</tr>
		{/if}
		<tr>
			<td>
				<select size="5" style="width:80%;">
					{html_options options=$acsData.invitedUsers}
                </select>
			</td>
			<td>
				<p><input name="username" type="text"></p>
				<p><input type="submit" value="{$LNG.fl_continue}"></p>
			</td>
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

</form>
<script type="text/javascript">
function Rename(){
	var Name = prompt("{$LNG.fl_acs_change_name}", "{$acsData.acsName}");
	$.getJSON('?page=fleetTable&action=acs&fleetID={$acsData.mainFleetID}&acsName='+Name, function(data) {
		if(data != "") {
			alert(data);
			return;
		}
		$('#acsName').text(Name);
	});
}
</script>