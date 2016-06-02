{include file="overall_header.tpl"}
<script type="text/javascript">
function check(){
	$.post('?page=qeditor&edit=planet&id={$id}&action=send', $('#userform').serialize(), function(data){
		Dialog.alert(data, function() {
			opener.location.reload();
			window.close();
		});
	});
	return false;
}
</script>
<form method="post" id="userform" action="" onsubmit="return check();">



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
											<table class="table table-bordered">
												<thead>
												
												
												
        <th colspan="3">{$LNG.qe_info}</th>
</tr>
<tr style="height:26px;"><td width="50%">{$LNG.qe_id}:</td><td width="50%">{$id}</td></tr>
<tr><td width="50%">{$LNG.qe_planetname}:</td><td width="50%"><input name="name" type="text" size="15" value="{$name}"></td></tr>
<tr style="height:26px;"><td width="50%">{$LNG.qe_coords}:</td><td width="50%">[{$galaxy}:{$system}:{$planet}]</td></tr>
<tr style="height:26px;"><td width="50%">{$LNG.qe_owner}:</td><td width="50%">{$ownername} ({$LNG.qe_id}: {$ownerid})</td></tr>
<tr><td width="50%">{$LNG.qe_fields}:</td><td width="50%">{$field_min} / <input name="field_max" type="text" size="3" value="{$field_max}"></td></tr>
<tr style="height:26px;"><td width="50%">{$LNG.qe_temp}:</td><td width="50%">{$temp_min} / {$temp_max}</td></tr>
</table>
<table class="table table-bordered"><thead><tr>
        <th colspan="3">{$LNG.qe_resources}</th>
</tr>
<tr>
        <td></td><td>{$LNG.qe_count}</td><td>{$LNG.qe_input}</td>
</tr>
<tr><td width="30%">{$LNG.tech.901}:</td><td width="30%">{$metal_c}</td><td width="40%"><input name="metal" type="text" value="{$metal}"></td></tr>
<tr><td width="30%">{$LNG.tech.902}:</td><td width="30%">{$crystal_c}</td><td width="40%"><input name="crystal" type="text" value="{$crystal}"></td></tr>
<tr><td width="30%">{$LNG.tech.903}:</td><td width="30%">{$deuterium_c}</td><td width="40%"><input name="deuterium" type="text" value="{$deuterium}"></td></tr>
</table>
<table class="table table-bordered"><thead><tr>
        <th colspan="3">{$LNG.qe_build}</th>
</tr>
<tr>
        <td></td><td>{$LNG.qe_level}</td><td>{$LNG.qe_input}</td>
</tr>
{foreach item=Element from=$build}
<tr><td width="30%">{$Element.name}:</td><td width="30%">{$Element.count}</td><td width="40%"><input name="{$Element.type}" type="text" value="{$Element.input}"></td>
{/foreach}
</table>
<table class="table table-bordered"><thead><tr>
        <th colspan="3">{$LNG.qe_fleet}</th>
</tr>
<tr>
        <td></td><td>{$LNG.qe_count}</td><td>{$LNG.qe_input}</td>
</tr>
{foreach item=Element from=$fleet}
<tr><td width="30%">{$Element.name}:</td><td width="30%">{$Element.count}</td><td width="40%"><input name="{$Element.type}" type="text" value="{$Element.input}"></td>
{/foreach}
</table>
<table class="table table-bordered"><thead><tr>
        <th colspan="3">{$LNG.qe_defensive}</th>
</tr>
<tr>
        <td></td><td>{$LNG.qe_count}</td><td>{$LNG.qe_input}</td>
</tr>
{foreach item=Element from=$defense}
<tr><td width="30%">{$Element.name}:</td><td width="30%">{$Element.count}</td><td width="40%"><input name="{$Element.type}" type="text" value="{$Element.input}"></td>
{/foreach}
<tr>
        <td colspan="3"><input type="submit" value="{$LNG.qe_submit}"> <input type="reset" value="{$LNG.qe_reset}"></td>
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
{include file="overall_footer.tpl"}