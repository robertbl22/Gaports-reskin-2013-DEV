<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>

<div class="accordion" id="accordion1">
	<div class="tilebutton gray accordion-heading tooltipped" data-toggle="tooltip" title="Click to expand contacts">
		<div class="tilebutton-table"><a class="tilebutton-table-cell accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne">
			<h3 class="nobreak">Contacts&nbsp;<i class="icon-angle-down"></i></h3>
			</a></div>
	</div>
	<div class="accordion-group">
		<div id="collapseOne" class="accordion-body collapse">
			<div class="accordion-inner">
				<div id="ContentPane" runat="server" />
			</div>
		</div>
	</div>
</div>
