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
<input type="hidden" name="mode" value="agregar">
<tr>
	<th colspan="3">{$po_add_planet}</th>
</tr>
<tr>
	<td>{$input_id_user}</td>
	<td><input name="id" type="text" size="4"></td>
</tr><tr>
	<td>{$new_creator_coor}</td>
	<td>
	<input name="galaxy" type="text" size="3" maxlength="1"> :
	<input name="system" type="text" size="3" maxlength="3"> :
	<input name="planet" type="text" size="3" maxlength="2"><br>
	</td>
</tr><tr>
	<td>{$po_name_planet}</td>
	<td><input name="name" type="text" size="15" maxlength="25" value="{$po_colony}"></td>
</tr><tr>
	<td>{$po_fields_max}</td>
	<td><input name="field_max" type="text" size="6" maxlength="10"></td>
</tr><tr>
	<td colspan="2"><input type="Submit" value="{$button_add}"></td>
</tr><tr>
	<td colspan="2" style="text-align:left;"><a href="?page=create">{$new_creator_go_back}</a>&nbsp;<a href="?page=create&amp;mode=planet">{$new_creator_refresh}</a></td>
</tr>
</form>
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