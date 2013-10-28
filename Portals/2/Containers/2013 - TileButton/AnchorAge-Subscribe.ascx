<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>

<div class="panel-group" id="accordionSubscribe">

	<!-- button -->
	<div class="tilebutton orange panel-heading tooltipped" data-toggle="tooltip" title="Click to subscribe">
		<div class="tilebutton-table">
			<a class="tilebutton-table-cell accordion-toggle" data-toggle="collapse" data-parent="#accordionSubscribe" href="#collapseSubscribe">
				<h3>Subscribe Now&nbsp;<i class="icon-angle-down"></i></h3>
			</a>
		</div>
	</div>
	
	<!-- expanding panel -->
	<div class="panel panel-default">
		<div id="collapseSubscribe" class="accordion-body collapse">
			<div class="panel-collapse in">
				<div class="panel-body" id="ContentPane" runat="server" />
			</div>
		</div>
	</div>
	
</div>
