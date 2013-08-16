<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="PRINT" Src="~/Admin/Containers/printmodule.ascx"%>

<h3><%= ModuleControl.ModuleContext.Configuration.ModuleTitle %></h3>
<dnn:PRINT runat="server" id="dnnPRINT" CssClass="printButton" />
<div id="ContentPane" runat="server"></div>
