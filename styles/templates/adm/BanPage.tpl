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
{nocache}{if isset($name)}
<form action="" method="post" name="countt">
<tr>
	<th colspan="3">{$bantitle}</th>
</tr><tr>
	<td>{$LNG.bo_username}</td>
	<td colspan="2"><input name="ban_name" type="text" value="{$name}" readonly="true" class="character"/></td>
</tr><tr>
	<td>{$LNG.bo_reason} <br><br>{$LNG.bo_characters_1}<input id="result2" value="50" size="2" readonly="true" class="character"></td> 
	<td colspan="2"><textarea name="why" maxlength="50" cols="20" rows="5" onkeyup="$('#result2').val(50 - parseInt($(this).val().length));">{$reas}</textarea></td>
</tr>
	{$timesus}
<tr>
	<th colspan="2">{$changedate}</th>
	{$changedate_advert}
</tr><tr>
	<td>{$LNG.bo_permanent}</td>
	<td><input name="permanent" type="checkbox"></td>
	{if $changedate_advert}<td>&nbsp;</td>{/if}
</tr><tr>
	<td>{$LNG.time_days}</td>
	<td><input name="days" type="text" value="0" size="5"></td>
	{if $changedate_advert}<td>&nbsp;</td>{/if}
</tr><tr>
	<td>{$LNG.time_hours}</td>
	<td><input name="hour" type="text" value="0" size="5"></td>
	{if $changedate_advert}<td>&nbsp;</td>{/if}
</tr><tr>
	<td>{$LNG.time_minutes}</td>
	<td><input name="mins" type="text" value="0" size="5"></td>
	{if $changedate_advert}<td>&nbsp;</td>{/if}
</tr><tr>
	<td>{$LNG.time_seconds}</td>
	<td><input name="secs" type="text" value="0" size="5"></td>
	{if $changedate_advert}<td>&nbsp;</td>{/if}
</tr><tr>
	<th colspan="3">{$LNG.bo_vacaations}</th>
</tr><tr>
	<td>{$LNG.bo_vacation_mode}</td>
	<td colspan="2"><input name="vacat" type="checkbox"{if $vacation} checked = "checked"{/if}></td>
</tr><tr>
	<td colspan="3">
	<input type="submit" value="{$LNG.button_submit}" name="bannow" style="width:20%;"/>
</tr>
</form>
{/if}{/nocache}
												</thead>
											</table>
											</form>
											
<form action="" method="POST" name="users">
											<table class="table table-bordered">
												<thead>
<tr>
	<th>{$LNG.bo_ban_player}</th>
</tr>
<tr>
	<td>
	<select name="ban_name" style="width:70%;" size="20">
	{$UserSelect.List}
	</select>
	<br>
	
</td>
</tr><tr>
	<td>
	<a href="?page=bans">{$LNG.bo_order_username}</a> &nbsp; <a href="?page=bans&amp;order=id">{$bo_order_id}</a> &nbsp; 
	<a href="?page=bans&amp;view=bana">{$LNG.bo_order_banned}</a>
	<script TYPE="text/javascript">
		var UserList = new filterlist(document.getElementsByName('ban_name')[0]);
	</script>
	
	<input NAME="regexp" onKeyUp="UserList.set(this.value)">
	<input TYPE="button" onClick="UserList.set(this.form.regexp.value)" value="{$LNG.button_filter}">
	<input TYPE="button" onClick="UserList.reset();this.form.regexp.value=''" value="{$LNG.button_deselect}">
	
	<input type="submit" value="{$LNG.bo_ban}" name="panel" style="width:20%;">&nbsp;
	<input TYPE="button" onClick="UserList.reset();this.form.regexp.value=''" value="{$LNG.button_reset}">
	</td>
</tr><tr>
</tr>
												</thead>
											</form>
											
<form action="" method="POST" name="userban">
											<table class="table table-bordered">
												<thead>
<tr>
	<th>{$LNG.bo_unban_player}</th>
</tr>
<tr>
	<td>
	<select name="unban_name" size="20" style="width:70%;">
	{$UserSelect.ListBan}
	</select>
	
</td>
</tr>
<tr>
	<td>
	<a href="?page=bans">{$LNG.bo_order_username}</a> &nbsp; <a href="?page=bans&amp;order2=id">{$LNG.bo_order_id}</a>
	<script TYPE="text/javascript">
		var UsersBan = new filterlist(document.getElementsByName('unban_name')[0]);
	</script>
	
	<input NAME="regexp" onKeyUp="UsersBan.set(this.value)">
	<input TYPE="button" onClick="UsersBan.set(this.form.regexp.value)" value="{$LNG.button_filter}">
	<input TYPE="button" onClick="UsersBan.set(this.form.regexp.value)" value="{$LNG.button_deselect}">
	
	<input value="{$LNG.bo_unban}" type="submit" style="width:20%;">&nbsp;
	<input TYPE="button" onClick="UsersBan.reset();this.form.regexp.value=''" value="{$LNG.button_reset}"></td>
</tr>
</form>
												</thead>
											</table>
											</form>
											
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->


{include file="overall_footer.tpl"}