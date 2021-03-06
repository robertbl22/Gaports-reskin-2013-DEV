<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="controls/search/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="FOOTER" Src="controls/footer/footer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
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

<!-- *********************************** -->
<!-- NAVBAR -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
<!-- TemplateParam name="MobileHomeCssClass" type="text" value="nav-home visible-sm" -->
<!-- TemplateParam name="HomeCssClass" type="text" value="nav-home hidden-sm" -->
<!-- TemplateParam name="AboutCssClass" type="text" value="" -->
<!-- TemplateParam name="PortofSavannahCssClass" type="text" value="" -->
<!-- TemplateParam name="PortofBrunswickCssClass" type="text" value="" -->
<!-- TemplateParam name="MediaCssClass" type="text" value="" -->
<!-- TemplateParam name="TopOfContentClass" type="text" value="container" -->
 


<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container"> 
		
		<!-- MOBILE NAV BUTTON -->
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
		
		<!-- MOBILE BANNER -->
		<div class="navbar-brand visible-sm"></div>
		
		<!-- NAVBAR -->
		<div class="nav-collapse collapse navbar-responsive-collapse">
			<ul class="nav navbar-nav">
				<li class="@@(_document['MobileHomeCssClass'])@@"><a href="/default.aspx"><i class="icon-home"></i> Home</a></li>
				<li class="@@(_document['HomeCssClass'])@@"><a href="/default.aspx"><i class="icon-home"></i></a></li>
				<li class="@@(_document['AboutCssClass'])@@"><a href="/about.aspx">About</a></li>
				<li class="@@(_document['PortofSavannahCssClass'])@@"><a href="/portofsavannah.aspx">Port of Savannah</a></li>
				<li class="@@(_document['PortofBrunswickCssClass'])@@"><a href="/portofbrunswick.aspx">Port of Brunswick</a></li>
				<li class="@@(_document['MediaCssClass'])@@"><a href="/media.aspx">Media</a></li>
				<!-- Search Dropdown -->
				<li class="dropdown hidden-sm"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-search"></i><b class="caret"></b></a>
					<div class="dropdown-menu navbar-search-dropdown">
						<dnn:SEARCH id="dnnSEARCH" runat="server" Submit="Go!" showWeb="False" showSite="False" EnableTheming="False" class="form-control" />
					</div>
				</li>
				<!-- Mobile Search -->
				<li class="visible-sm">
					<div class="navbar-search">
						<div class="input-group">
							<dnn:SEARCH id="dnnSEARCHmobile" runat="server" Submit="Search" showWeb="False" showSite="False" UseDropDownList="true" EnableTheming="true" class="form-control" placeholder="Search" />
							<span class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
							</span></div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- // END: NAVBAR --> 


<!-- DOTNETNUKE CONTROL PANEL -->
<style>
#dnnCPWrap { top: 50px; }
</style>
<dnn:CONTROLPANEL runat="server" id="cp"  IsDockable="True" />
<!-- // END: DOTNETNUKE CONTROL PANEL -->


<!-- *********************************** --> 
<!-- GPA BANNER -->
<div class="container gpa-banner hidden-sm">
	<div class="row">
		<div class="col-sm-3"><img src="<%=skinpath%>images/gpa-banner.png" alt="Georgia Ports Authority"></div>
	</div>
</div>
<!-- // END: GPA BANNER --> 


<!-- TemplateBeginEditable name="Jumbotron" --><!-- TemplateEndEditable -->
<div class="@@(_document['TopOfContentClass'])@@"><!-- TemplateBeginEditable name="Container" --><!-- TemplateEndEditable --></div>


<!-- *********************************** --> 
<!-- FOOTER -->
<footer class="container-fluid footer">
	<div class="container">
		<dnn:FOOTER id="dnnFOOTER" runat="server" />
		<div class="row copyright">
			<div class="col-sm-4">
				<dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" />
			</div>
			<div class="col-sm-5 center"><a href="#">Site Map</a> | <a href="http://www.gaports.com/corporate/PrivacyStatement.aspx">Privacy Statement</a> | <a href="http://www.gaports.com/corporate/TermsandConditions.aspx">Terms&nbsp;&amp;&nbsp;Conditions</a> | <dnn:LOGIN runat="server" id="dnnLOGIN" /></div>
			<div class="col-sm-3">Website by <a href="http://www.realmadvertising.com">Realm Advertising</a></div>
		</div>
	</div>
</footer>
<!-- // END: FOOTER -->

<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]--> 

