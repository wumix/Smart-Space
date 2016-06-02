{block name="title" prepend}{$LNG.lm_options}{/block}
{block name="content"}

<form action="game.php?page=settings&amp;mode=send" method="post">
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-cogs"></i> </span>
									<h2>{$LNG.lm_options}</h2>

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
														<tr>
			<th colspan="2">{$LNG.op_vacation_mode_active_message} {$vacationUntil}</th>
		</tr>
		<tr>
			<td>{$LNG.op_end_vacation_mode}</td>
			<td><input name="vacation" type="checkbox" value="1" {if !$canVacationDisbaled}disabled{/if}></td>
		</tr><tr>
			<td><a title="{$LNG.op_dlte_account_descrip}">{$LNG.op_dlte_account}</a></td>
			<td><input name="delete" type="checkbox" value="1" {if $delete > 0}checked="checked"{/if}></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"  class="btn btn-primary" value="{$LNG.op_save_changes}"></td>
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

{/block}