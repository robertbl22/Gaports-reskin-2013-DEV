<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>

<div class="panel-group" id="accordionContacts">

	<!-- button -->
	<div class="tilebutton dark-blue panel-heading tooltipped" data-toggle="tooltip" title="Click to expand contacts">
		<div class="tilebutton-table">
			<a class="tilebutton-table-cell accordion-toggle" data-toggle="collapse" data-parent="#accordionContacts" href="#collapseContacts">
				<h3 class="nobreak">Contacts&nbsp;<i class="icon-angle-down"></i></h3>
			</a>
		</div>
	</div>
	
	<!-- expanding panel -->
	<div class="panel panel-default">
		<div id="collapseContacts" class="accordion-body collapse">
			<div class="panel-collapse in">
				<div class="panel-body" id="ContentPane" runat="server" />
			</div>
		</div>
	</div>
	
</div>
