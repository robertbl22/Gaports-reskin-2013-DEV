<%@ Control language="c#" CodeBehind="../~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<script runat="server">
protected string GetParentTitle(){
		int ParentId = this.PortalSettings.ActiveTab.ParentId;
        DotNetNuke.Entities.Tabs.TabController tc = new DotNetNuke.Entities.Tabs.TabController();
        DotNetNuke.Entities.Tabs.TabInfo tab = tc.GetTab(ParentId);
        return tab.Title;
}
</script>
<div class="body-container"><%= GetParentTitle() %>
	<div id="ContentPane" runat="server" style="padding-bottom:15px;"></div>
	<p align="center" class="smallFooter"><a href="/PrivacyStatement/tabid/229/Default.aspx">Privacy Statement</a> | <a href="/TermsandConditions/tabid/230/Default.aspx">Terms &amp; Conditions</a></p>
	<p align="center" style="padding-bottom:30px;">
		<dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" cssClass="copyright"/>
	</p>
</div>
