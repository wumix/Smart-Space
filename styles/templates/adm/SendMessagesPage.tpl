{include file="overall_header.tpl"}
<script type="text/javascript">

function check(){
	if($('#text').val().length == 0) {
		Dialog.alert('{$mg_empty_text}');
		return false;
	} else {
		$.post('admin.php?page=globalmessage&action=send&ajax=1', $('#message').serialize(), function(data) {
			Dialog.alert(data, function() {
				location.reload();
			});
		});
		return true;
	}
}
</script>
<form name="message" id="message" action="admin.php?page=globalmessage&action=send&ajax=1">



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
            <th colspan="2">{$LNG.ma_send_global_message}</th>
        </tr>
        <tr>
            <td>{$LNG.ma_mode}</td>
            <td>{html_options name=mode options=$modes}</td>
		</tr>
        <tr>
            <td>{$LNG.se_lang}</td>
            <td>{html_options name=lang options=$langSelector}</td>
        </tr>
        <tr>
            <td>{$LNG.ma_subject}</td>
            <td><input name="subject" id="subject" size="40" maxlength="40" value="{$LNG.ma_none}" type="text"></td>
        </tr>
		<tr>
            <td>{$LNG.ma_message} (<span id="cntChars">0</span> / 5000 {$LNG.ma_characters})</td>
            <td><textarea name="text" id="text" cols="40" rows="10" onkeyup="$('#cntChars').text($('#text').val().length);"></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="button" onclick="check();" value="{$LNG.button_submit}"></td>
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