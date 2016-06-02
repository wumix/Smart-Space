{include file="overall_header.tpl"}
<script type="text/javascript">
	function activeUser(validationID, validationKey) {
		$.getJSON('index.php?page=vertify&mode=json&i='+validationID+'&k='+validationKey, function(data){
			alert(data);
			parent.frames['Hauptframe'].location.reload();
		});
		return false;
	}
</script>


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
	<th colspan="7">{$LNG.ap_nicht_aktivierte_user}</th>
</tr>
<tr>
	<td>{$LNG.ap_id}</td>
	<td>{$LNG.ap_username}</td>
	<td>{$LNG.ap_datum}</td>
	<td>{$LNG.ap_email}</td>
	<td>{$LNG.ap_ip}</td>
	<td>{$LNG.ap_status}</td>
	<td>{$LNG.ap_del}</td>
</tr>
{foreach name=User item=User from=$Users}
<tr>
	<td>{$User.id}</td>
	<td>{$User.name}</td>
	<td><nobr>{$User.date}</nobr></td>
	<td>{$User.email}</td>
	<td>{$User.ip}</td>
	<td><a href="#" onclick="return activeUser({$User.id},'{$User.validationKey}');">{$LNG.ap_aktivieren}</a></td>
	<td><a href="?page=active&amp;action=delete&id={$User.id}" onclick="return confirm('{$LNG.ap_sicher}{$User.username} {$LNG.ap_entfernen}');"><img border="0" src="./styles/resource/images/alliance/CLOSE.png" width="16" height="16"></a></td>
</tr>
{/foreach}	
<tr><td colspan="8">{$LNG.ap_insgesamt} {count($Users)} {$LNG.ap_nicht_aktivierte}</td></tr>												</thead>
											</table>
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->


{include file="overall_footer.tpl"}