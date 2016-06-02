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
<form action="" method="post">
<tr><th colspan="2">{$new_title}</th></tr>
<tr><td>{$user_reg}</td><td><input type="text" name="name"></td></tr>
<tr><td>{$pass_reg}</td><td><input type="password" name="password"></td></tr>
<tr><td>{$pass2_reg}</td><td><input type="password" name="password2"></td></tr>
<tr><td>{$email_reg}</td><td><input type="text" name="email"></td></tr>
<tr><td>{$email2_reg}</td><td><input type="text" name="email2"></td></tr>
<tr><td>{$new_coord}</td><td>
<input type="text" name="galaxy" size="1" maxlength="1"> :
<input type="text" name="system" size="3" maxlength="3"> :
<input type="text" name="planet" size="2" maxlength="2"></td></tr>
<tr><td>{$new_range}</td>
<td>{html_options name=authlevel options=$Selector.auth}</td></tr>
<tr><td>{$lang_reg}</td>
<td>{html_options name=lang options=$Selector.lang}</td></tr>
<tr><td colspan="2"><input type="submit" value="{$new_add_user}"></td></tr>
<tr>
   <td colspan="2" style="text-align:left;"><a href="?page=create">{$new_creator_go_back}</a>&nbsp;<a href="?page=create&amp;mode=user">{$new_creator_refresh}</a></td>
</tr>
</form>												</thead>
											</table>
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->

{include file="overall_footer.tpl"}