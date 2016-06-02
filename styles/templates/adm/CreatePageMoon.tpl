{include file="overall_header.tpl"}
<form action="" method="post">


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
	<th colspan="3">{$po_add_moon}</th>
</tr>
<tr>
	<td>{$input_id_planet}</td>
	<td colspan="2"><input  type="text" name="add_moon" value="" size="3"></td>
</tr>
<tr>
	<td>{$mo_moon_name}</td>
	<td colspan="2"><input type="text" value="{$mo_moon}" name="name"></td>
</tr>
<tr>
	<td>{$mo_diameter}</td>
	<td colspan="2"><input type="text" name="diameter" size="5" maxlength="5">
	<input type="checkbox" checked="checked" name="diameter_check"> ({$LNG.mo_moon_random})</td>
</tr>
<tr>
	<td>{$mo_fields_avaibles}</td>
	<td colspan="2"><input type="text" name="field_max" size="5" maxlength="5" value="1"></td>
</tr>
<tr>
	<td colspan="3"><input type="submit" value="{$button_add}"></td>
</tr><tr>
   <td colspan="2" style="text-align:left;"><a href="?page=create">{$new_creator_go_back}</a>&nbsp;<a href="?page=create&mode=moon">{$new_creator_refresh}</a></td>
</tr>												</thead>
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