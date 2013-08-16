<%@ Control Language="C#" AutoEventWireup="false" Inherits="DotNetNuke.UI.Skins.Controls.Search" CodeFile="Search.ascx.cs" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke.Web" Namespace="DotNetNuke.Web.UI.WebControls" %>

<div id="ClassicSearch" runat="server" visible="true" class="navbar-search">
	<div class="input-group">
		<asp:RadioButton ID="WebRadioButton" runat="server" CssClass="SkinObject" GroupName="Search" />
		<asp:RadioButton ID="SiteRadioButton" runat="server" CssClass="SkinObject" GroupName="Search" />
		<asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search" Columns="20" MaxLength="255" EnableViewState="False"></asp:TextBox>
		<span class="input-group-btn">
			<asp:LinkButton ID="cmdSearch" runat="server" CausesValidation="False" CssClass="btn btn-default"></asp:LinkButton>
		</span>
	</div>
</div>
<script type="text/javascript">
    $('.navbar-search input, .navbar-search .btn').click(function(e) {
        e.stopPropagation();
    });
</script>


<div id="DropDownSearch" runat="server" class="SearchContainer" visible="false">
  <div class="SearchBorder">
  <div id="SearchIcon" class="SearchIcon">
    <dnn:DnnImage ID="downArrow" runat="server" IconKey="Action" />
  </div>
  <asp:TextBox ID="txtSearchNew" runat="server" CssClass="SearchTextBox" MaxLength="255" EnableViewState="False"></asp:TextBox>&nbsp;
  <ul id="SearchChoices">
    <li id="SearchIconSite"><%=SiteText%></li>
    <li id="SearchIconWeb"><%=WebText%></li>
  </ul>
  </div>
  <asp:LinkButton ID="cmdSearchNew" runat="server" CausesValidation="False" CssClass="SkinObject SearchButton"></asp:LinkButton>
</div>
