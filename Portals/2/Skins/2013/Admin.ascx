<!-- InstanceBegin template="/Templates/2013_Base.dwt.aspx" codeOutsideHTMLIsLocked="false" --><%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="controls/search/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="FOOTER" Src="controls/footer/footer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PORTSALERTBANNER" Src="~/DesktopModules/PortsAlert/PortsAlertBanner.ascx" %>
<!-- Used? -->
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>

<!-- *** JavaScript priorities **************************************-->
<!-- Default: 100 -->
<dnn:DnnJsInclude runat="server" Priority="4" FilePath="scripts/vendor/modernizr.js" PathNameAlias="SkinPath" />
<!-- jQuery: 5 -->
<!-- jQuery UI: 10 -->
<!-- DnnXxml: 15 -->
<!-- DnnXmlJsParser: 20 -->
<!-- DnnXmlHttp: 25 -->
<!-- DnnXmlHttpJsXmlHttpRequest: 30 -->
<!-- DnnDomPositioning: 35 -->
<!-- DnnControls: 40 -->
<!-- DnnControlsLabelEdit: 45 -->
<dnn:DnnJsInclude runat="server" Priority="46" FilePath="scripts/plugins.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" Priority="47" FilePath="scripts/main.js" PathNameAlias="SkinPath" />

<!-- *** CSS priorities **************************************-->
<!-- DefaultCss: 5 -->
<!-- ModuleCss: 10 -->
<!-- SkinCss: 15 -->
<!-- SpecificSkinCss: 20 -->
<!-- ContainerCss: 25 -->
<!-- SpecificContainerCss: 30 -->
<!-- PortalCss: 35 -->
<dnn:DnnCssInclude runat="server" Priority="36" FilePath="styles/main.css" PathNameAlias="SkinPath" />

<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->

<!-- InstanceParam name="MobileHomeCssClass" type="text" value="nav-home visible-sm" -->
<!-- InstanceParam name="HomeCssClass" type="text" value="nav-home hidden-sm" -->
<!-- InstanceParam name="TopOfContentClass" type="text" value="container top-of-page" -->


<!-- *********************************** -->
<!-- NAVBAR -->
<header class="navbar navbar-inverse navbar-fixed-top" role="banner">
	<div class="container">

		<!-- MOBILE NAVBAR -->
		<div class="navbar-header visible-xs">
			<!-- MOBILE NAV BUTTON -->
			<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- MOBILE GPA BANNER -->
			<a href="/home.aspx" class="navbar-brand"></a>
		</div>

		<!-- DESKTOP NAVBAR -->
		<nav class="collapse navbar-collapse navbar-responsive-collapse" role="navigation">
			<ul class="nav navbar-nav">
				<dnn:MENU MenuStyle="ddrmenu/topnav" runat="server" nodeselector="RootOnly" includehidden="false"></dnn:MENU>

				<!-- DESKTOP SEARCH (Dropdown) -->
				<li class="dropdown hidden-xs">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-search"></i> <b class="caret"></b>
					</a>
					<div class="dropdown-menu navbar-search-dropdown">
						<dnn:SEARCH id="dnnSEARCH" runat="server" 
							Submit="Go!" 
							showWeb="False" 
							showSite="False" 
							EnableTheming="False" 
							class="form-control" />
					</div>
				</li>
				<!-- // END: DESKTOP SEARCH (Dropdown) -->

			</ul>

			<!-- MOBILE SEARCH -->
			<div class="navbar-form navbar-left visible-xs" role="search">
					<dnn:SEARCH id="dnnSEARCHmobile" runat="server" 
						Submit="Go!" 
						showWeb="False" 
						showSite="False" 
						EnableTheming="False" 
						class="form-control" />
			</div>
			<!-- // END: MOBILE SEARCH -->

		</nav>
		<!-- // END: DESKTOP NAVBAR -->

	</div>
</header>
<!-- // END: NAVBAR -->



<!-- DOTNETNUKE CONTROL PANEL -->
<style>
#dnnCPWrap {
	top: 50px;
}
</style>
<div class="hidden-print">
	<dnn:CONTROLPANEL runat="server" id="cp" IsDockable="True" />
</div>
<!-- // END: DOTNETNUKE CONTROL PANEL -->


<!-- *********************************** -->
<!-- GPA DESKTOP BANNER -->
<div class="container gpa-banner hidden-xs hidden-print">
	<div class="row">
		<div class="col-sm-3">
			<img src="<%=skinpath%>images/gpa-banner.png" alt="Georgia Ports Authority" />
		</div>
	</div>
</div>
<!-- GPA PRINT BANNER -->
<div class="container gpa-banner-print visible-print">
	<div class="row">
		<div class="col-xs-2 pull-right">
			<img src="<%=skinpath%>images/gpa-banner.png" alt="Georgia Ports Authority" />
		</div>
	</div>
</div>
<!-- // END: GPA DESKTOP BANNER -->


<!-- InstanceBeginEditable name="Jumbotron" --><!-- InstanceEndEditable -->
<div class="container top-of-page"><!-- InstanceBeginEditable name="Container" --> 
	
	<!-- PAGE HEADER -->
	<div class="row">
		<div class="col-sm-10">
			<h1><%= Server.HtmlEncode(PortalSettings.ActiveTab.TabName) %></h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3">
			<hr/>
		</div>
	</div>
	<!-- // END: PAGE HEADER -->
	
	<div class="row"> 
		
		<!-- CONTENT -->
		<div class="col-sm-12">
			<div id="ContentPane" runat="server" class="contentpane"></div>
			<div class="horizontal-divider" style="margin:45px 0"></div>
		</div>
		<!-- // END: CONTENT --> 
		
	</div>
	<!-- InstanceEndEditable --></div>


<!-- *********************************** --> 
<!-- FOOTER -->
<footer class="container-fluid footer hidden-print">
	<div class="container">
		<dnn:FOOTER id="dnnFOOTER" runat="server" />
		<div class="row copyright">
			<div class="col-sm-4">
				<dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" />
			</div>
			<div class="col-sm-5 center">
				<a href="/site/sitemap.aspx" class="nobreak">Site Map</a> | <a href="/site/PrivacyStatement.aspx" class="nobreak">Privacy Statement</a> | <a href="/site/TermsandConditions.aspx" class="nobreak">Terms &amp Conditions</a> <span class="dnn-login-link">| <dnn:LOGIN runat="server" id="dnnLOGIN" /></span>
			</div>
			<div class="col-sm-3">
				Website by <a href="http://www.realmadvertising.com" class="nobreak">Realm Advertising</a>
			</div>
		</div>
	</div>
</footer>
<!-- PRINT FOOTER -->
<div class="visible-print copyright">
	<dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT_PRINT" />
</div>
<!-- // END: FOOTER -->

<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]--> 

<!-- InstanceEnd -->