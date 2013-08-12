<!-- InstanceBegin template="/Templates/2012/Portal-2/3-Column.dwt.aspx" codeOutsideHTMLIsLocked="false" --><%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PAGESTYLES" src="~/DesktopModules/PageStyles/PageStyles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PAGETITLE" Src="~/DesktopModules/PageTitle/PageTitle.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PORTSALERTBANNER" Src="~/DesktopModules/PortsAlert/PortsAlertBanner.ascx" %>

<!-- DefaultCss Priority="5" -->
<dnn:DnnCssInclude runat="server" Priority="9" FilePath="http://fonts.googleapis.com/css?family=Open+Sans:600" />
<!-- ModuleCss Priority="10" -->
<dnn:DnnCssInclude runat="server" Priority="12" FilePath="../2012_Shared/styles/text.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" Priority="13" FilePath="../2012_Shared/styles/layout-header.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" Priority="13" FilePath="../2012_Shared/styles/layout-content.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" Priority="13" FilePath="../2012_Shared/styles/layout-footer.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" Priority="14" FilePath="../2012_Shared/styles/banners.css" PathNameAlias="SkinPath" />
<!-- SkinCss Priority="15" -->
<!-- SpecificSkinCss Priority="20" -->
<!-- ContainerCss Priority="25" -->
<!-- SpecificContainerCss Priority="30" -->
<!-- PortalCss Priority="35" -->
<dnn:DnnJsInclude runat="server" FilePath="../2012_Shared/DDRMenu_TopStatic/TopStaticMenu.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="../2012_Shared/DDRMenu_TopStatic/TopStaticMenu.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="../2012_Shared/DDRMenu_LeftSub/LeftSubMenu.css" PathNameAlias="SkinPath" />
<dnn:PAGESTYLES runat="server" ID="dnnPageStyles" />

<!-- InstanceParam name="ShowBreadcrumb" type="boolean" value="true" -->


<!-- InstanceParam name="IncludeHidden" type="boolean" value="false" -->
<!-- InstanceParam name="NodeSelector" type="text" value="" -->
<!-- InstanceBeginEditable name="HeadRegion" -->
<!-- InstanceEndEditable -->



<div id="PageContainer">
	<dnn:PORTSALERTBANNER runat="server" id="dnnPORTSALERTBANNER" PortsAlertModuleId="2272" PortsAlertTabId="425"/>
	<div id="HeaderContainer">
		<div id="GlobalNav" class="portalHeader">GPA Sites: <a href="http://www.gaports.com/corporate">Corporate</a> | <span class="selected">Sales and Marketing</span> | <a href="http://www.gaports.com/corporate/communications.aspx">Communications</a> | <a href="http://www.gaports.com/employee">Employee Access</a></div>
		<!-- InstanceBeginEditable name="PortalHeaderRegion" --><!-- InstanceEndEditable --> </div>
	<div id="NavToolsContainer">
		<div id="MenuSearchRow">
			<div id="Menu">
				<dnn:MENU MenuStyle="../2012_Shared/DDRMenu_TopStatic" runat="server"></dnn:MENU>
			</div>
			<div id="Search">
				<dnn:SEARCH runat="server" id="dnnSEARCH" CssClass="searchText" showWeb="False" showSite="False" />
			</div>
		</div>
		
		<div id="Breadcrumb">
			<dnn:TEXT runat="server" id="dnnTEXT"  CssClass="label" Text="You are here:" ResourceKey="Breadcrumb" />
			<dnn:BREADCRUMB ID="dnnBreadcrumb" runat="server" RootLevel="0" Separator="<span class=&quot;separator&quot;>&nbsp;</span>" />
		</div>
		</div>
	<div id="ContentContainer">
		<div id="SectionHeaderContainer">
			<div id="SectionTitlePane" class="SectionTitlePane" runat="server"></div>
			<div id="SectionPhotoPane2" class="SectionPhotoPane2" runat="server"></div>
			<div id="SectionPhotoPane1" class="SectionPhotoPane1" runat="server"></div>
		</div>
		<div id="ColumnsContainer">
			<div id="LeftColumn">
				<div id="LeftPicPane" class="LeftPicPane" runat="server"></div>
				<div id="LeftMenu">
					<dnn:MENU MenuStyle="../2012_Shared/DDRMenu_LeftSub" runat="server" nodeselector="" includehidden="false"></dnn:MENU>
				</div>
				<div id="LeftPane" class="LeftPane" runat="server"></div>
			</div>
			<div id="RightColumns">
				<div id="ContentPane" class="ContentPane" runat="server"><!-- InstanceBeginEditable name="ContentPane" -->
					<dnn:PAGETITLE runat="server" id="dnnPAGETITLE" CssClass="page-title Head"/>
					<!-- InstanceEndEditable --></div>
				<div id="RightPane" class="RightPane" runat="server"><!-- InstanceBeginEditable name="RightPane" --><!-- InstanceEndEditable --></div>
			</div>
		</div>
		
		<div id="FooterBanner"></div>
	</div>
	
	<div id="FooterContainer">
		<div class="smallFooter"><a href="SiteMap.aspx">Site Map</a> | <a href="http://www.gaports.com/corporate/PrivacyStatement.aspx">Privacy Statement</a> | <a href="http://www.gaports.com/corporate/TermsandConditions.aspx">Terms &amp; Conditions</a> |
			<dnn:LOGIN runat="server" id="dnnLOGIN_Footer" CssClass="smallFooter" />
			<br/>
			<dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" cssClass="copyright"/>
		</div>
	</div>
</div>
<!-- InstanceEnd -->