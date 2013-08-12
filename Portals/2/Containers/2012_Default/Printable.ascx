<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRINT" Src="~/Admin/Containers/printmodule.ascx"%>
<div class="c-generic title-content">
    <h1><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
	<dnn:PRINT runat="server" id="dnnPRINT" CssClass="printButton" />
    <div id="ContentPane" runat="server"></div>
</div>