{include file="overall_header.tpl"}
<script type="text/javascript">
function check(){
	$.post('?page=qeditor&edit=player&id={$id}&action=send', $('#userform').serialize(), function(data){
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
<tr><td width="50%">{$LNG.qe_username}:</td><td width="50%"><input name="name" type="text" size="15" value="{$name}" autocomplete="off"></td></tr>
<tr style="height:26px;"><td width="50%">{$LNG.qe_hpcoords}:</td><td width="50%">{$planetname} [{$galaxy}:{$system}:{$planet}] ({$LNG.qe_id}: {$planetid})</td></tr>
{if $authlevl != $smarty.const.AUTH_USER}
<tr style="height:26px;"><td width="50%">{$LNG.qe_authattack}:</td><td width="50%"><input type="checkbox" name="authattack"{if $authattack != 0} checked{/if}></td></tr>
{/if}
{if $ChangePW}
<tr style="height:26px;"><td width="50%">{$LNG.qe_password}:</td><td width="50%"><a href="#" onclick="$('#password').css('display', '');$(this).css('display', 'none');return false">{$qe_change}</a><input style="display:none;" id="password" name="password" type="password" size="15" value="" autocomplete="off"></td></tr>
{/if}
{if $ChangePW}
<tr style="height:26px;"><td width="50%">{$LNG.qe_allowmulti}:</td><td width="50%">{html_options name="multi" options=$LNG.one_is_yes selected=$multi}</td></tr>
{/if}
</table>
<table class="table table-bordered"><thead><tr><tr>
        <th colspan="3">{$LNG.qe_resources}</th>
</tr>
<tr>
        <td>{$LNG.qe_name}</td><td>{$LNG.qe_count}</td><td>{$LNG.qe_input}</td>
</tr>
<tr><td width="30%">{$LNG.tech.921}:</td><td width="30%">{$darkmatter_c}</td><td width="40%"><input name="darkmatter" type="text" value="{$darkmatter}"></td></tr>
</table>
<table class="table table-bordered"><thead><tr><tr>
        <th colspan="3">{$LNG.qe_tech}</th>
</tr>
<tr>
        <td>{$LNG.qe_name}</td><td>{$LNG.qe_level}</td><td>{$LNG.qe_input}</td>
</tr>
{foreach item=Element from=$tech}
<tr><td width="30%">{$Element.name}:</td><td width="30%">{$Element.count}</td><td width="40%"><input name="{$Element.type}" type="text" value="{$Element.input}"></td>
{/foreach}
<tr>
        <th colspan="3">{$LNG.qe_officier}</th>
</tr>
<tr>
        <td>{$LNG.qe_name}</td><td>{$LNG.qe_level}</td><td>{$LNG.qe_input}</td>
</tr>
{foreach item=Element from=$officier}
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