{block name="title" prepend}Auction{/block}
{block name="content"}

<!-- Widget ID (each widget will need unique ID)-->
<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">
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
		<h2>Vote for us!</h2>
		
	</header>
	
	<!-- widget div-->
	<div>
		
		<!-- widget edit box -->
		<div class="jarviswidget-editbox">
			<!-- This area used as dropdown edit box -->

		</div>
		<!-- end widget edit box -->
		
		<!-- widget content -->
		<div class="widget-body no-padding">
			
			<table id="auctions_table" class="table table-striped table-bordered table-hover" width="100%">
				<thead>
				
				<tr>
			{foreach from=$voturile key=k item=v}
				
				<td><center><img src="{$v.pic}"><br><br>{$v.link}</center></td>
					{/foreach}
					</tr>
				</thead>

				
			</table>

		</div>
		<!-- end widget content -->
		
	</div>
	<!-- end widget div -->
	
</div>
<!-- end widget -->

{/block}