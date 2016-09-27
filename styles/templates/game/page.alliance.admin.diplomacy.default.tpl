{block name="title" prepend}{$LNG.lm_alliance}{/block}
{block name="content"}
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<header>
									<span class="widget-icon"> <i class="fa fa-users"></i> </span>
									<h2>{$LNG.lm_alliance}</h2>

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
										<p>{$LNG.al_diplo_info}</p>
										
										<div class="table-responsive">
										
											<table class="table table-bordered">
												<thead>
													{foreach $diploList.0 as $diploMode => $diploAlliances}
													{foreach $diploAlliances as $diploID => $diploName}													
													<tr>
														<th>{$LNG.al_diplo_level.$diploMode}</th>
														<th>{$diploName}</th>
														<th><a href="game.php?page=alliance&amp;mode=admin&amp;action=diplomacyDelete&amp;id={$diploID}" onclick="return confirm('{$LNG.al_diplo_confirm_delete}');"><img src="styles/resource/images/false.png" alt="" width="16" height="16"></a></th>
														</tr>
														{foreachelse}
														<tr>
														<th>{$LNG.al_diplo_level.$diploMode}</th>
														<th>{$LNG.al_diplo_no_entry}</th>
														<th><a class="btn txt-color-white btn-block bg-color-teal btn-sm" href="game.php?page=alliance&amp;mode=admin&amp;action=diplomacyCreate&amp;diploMode={$diploMode}" onclick="return Dialog.open(this.href, 650, 300);">{$LNG.al_diplo_create}</a></th>
														</tr>
														{/foreach}
														{/foreach}
												</thead>
											</table>

											<table class="table table-bordered">
												<thead>	<tr>
		<th colspan="2">{$LNG.al_diplo_accept}</th>
	</tr>
	{if array_filter($diploList.1)}
		{foreach $diploList.1 as $diploMode => $diploAlliances}	
		{if !empty($diploAlliances)}
		<tr>
			<th colspan="2">{$LNG.al_diplo_level.$diploMode}</th>
		</tr>
		{foreach $diploAlliances as $diploID => $diploName}
		<tr>
			<td style="width:90%">{$diploName}</td>
			<td>
				<a href="game.php?page=alliance&amp;mode=admin&amp;action=diplomacyAccept&amp;id={$diploID}" onclick="return confirm('{$LNG.al_diplo_accept_yes_confirm}');"><img src="styles/resource/images/true.png" alt="" width="16" height="16"></a>
				<a href="game.php?page=alliance&amp;mode=admin&amp;action=diplomacyDelete&amp;id={$diploID}" onclick="return confirm('{$LNG.al_diplo_accept_no_confirm}');"><img src="styles/resource/images/false.png" alt="" width="16" height="16"></a>
			</td>
		</tr>
		{/foreach}
		{/if}
		{/foreach}
	{else}
	<tr>
		<td colspan="2">{$LNG.al_diplo_no_accept}</td>
	</tr>	
	{/if}
												</thead>
											</table>

											<table class="table table-bordered">
												<thead><tr>
		<th colspan="2">{$LNG.al_diplo_accept_send}</th>
	</tr>
	{if array_filter($diploList.2)}
		{foreach $diploList.2 as $diploMode => $diploAlliances}	
		{if !empty($diploAlliances)}
		<tr>
			<th colspan="2">{$LNG.al_diplo_level.$diploMode}</th>
		</tr>
		{foreach $diploAlliances as $diploID => $diploName}
		<tr>
			<td style="width:90%">{$diploName}</td>
			<td>
				<a href="game.php?page=alliance&amp;mode=admin&amp;action=diplomacyDelete&amp;id={$diploID}" onclick="return confirm('{$LNG.al_diplo_confirm_delete}');"><img src="styles/resource/images/false.png" alt="" width="16" height="16"></a>
			</td>
		</tr>
		{/foreach}
		{/if}
		{/foreach}
	{else}
	<tr>
		<td colspan="2">{$LNG.al_diplo_no_accept}</td>
	</tr>	
	{/if}
												</thead>
											</table>
											
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->

{/block}