<!-- InstanceBegin template="/Templates/2013_Base.dwt.aspx" codeOutsideHTMLIsLocked="false" --><%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
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
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<!-- InstanceParam name="MobileHomeCssClass" type="text" value="nav-home visible-sm active" -->
<!-- InstanceParam name="HomeCssClass" type="text" value="nav-home hidden-sm active" -->
<!-- InstanceParam name="AboutCssClass" type="text" value="" -->
<!-- InstanceParam name="PortofSavannahCssClass" type="text" value="" -->
<!-- InstanceParam name="PortofBrunswickCssClass" type="text" value="" -->
<!-- InstanceParam name="MediaCssClass" type="text" value="" --> 


<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container"> 
		
		<!-- MOBILE NAV BUTTON -->
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
		
		<!-- MOBILE BANNER -->
		<div class="navbar-brand visible-sm"></div>
		
		<!-- NAVBAR -->
		<div class="nav-collapse collapse navbar-responsive-collapse">
			<ul class="nav navbar-nav">
				<li class="nav-home visible-sm active"><a href="/default.aspx"><i class="icon-home"></i> Home</a></li>
				<li class="nav-home hidden-sm active"><a href="/default.aspx"><i class="icon-home"></i></a></li>
				<li class=""><a href="/about.aspx">About</a></li>
				<li class=""><a href="/portofsavannah.aspx">Port of Savannah</a></li>
				<li class=""><a href="/portofbrunswick.aspx">Port of Brunswick</a></li>
				<li class=""><a href="/media.aspx">Media</a></li>
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
<!-- DOTNETNUKE CONTROL PANEL -->
<style>
#dnnCPWrap { top: 50px; }
</style>
<dnn:CONTROLPANEL runat="server" id="cp"  IsDockable="True" />
<!-- // END: NAVBAR --> 

<!-- *********************************** --> 
<!-- GPA BANNER -->
<div class="container gpa-banner hidden-sm">
	<div class="row">
		<div class="col-sm-3"><img src="<%=skinpath%>images/gpa-banner.png" alt="Georgia Ports Authority"></div>
	</div>
</div>
<!-- // END: GPA BANNER --> 

<!-- InstanceBeginEditable name="Jumbotron" --> 

<!-- *********************************** --> 
<!-- HERO PHOTO -->
<div class="hero-photo top-of-page">
	<ul class="rslides">
		<li><img class="active" src="<%=skinpath%>images/home/hero-photo.jpg" alt="Gantry cranes at the Port of Savannah" /></li>
		<li><img src="http://placehold.it/1920x800/007db1&text=Slide+2" alt="Slide 2"></li>
		<li><img src="http://placehold.it/1920x800&text=Slide+3" alt="Slide 3"></li>
	</ul>
</div>
<!-- // END: HERO PHOTO --> 

<!-- InstanceEndEditable -->
<div class="container top-of-page"><!-- InstanceBeginEditable name="Container" --> 
	<!-- *********************************** --> 
	<!-- HERO HEADLINE -->
	<div class="row">
		<div class="col-sm-12 hero-headline">
			<ul class="rslides">
				<li>
					<h1>More Services Than Any Other East Or&nbsp;Gulf Coast&nbsp;Port.</h1>
				</li>
				<li>
					<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>
				</li>
				<li>
					<h1>Vivamus luctus vehicula erat, sit amet interdum diam.</h1>
				</li>
			</ul>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-9 nogutter">
			<hr/>
		</div>
	</div>
	<!-- *********************************** -->
	<!-- TWO PORTS -->
	<div class="row">
		<div class="col-sm-12 tilebutton dark-blue portofsavannah">
			<div class="tilebutton-table"><a href="/portofsavannah.aspx" class="tilebutton-table-cell icon-jump">
				<h3>Discover the Port of <span class="nobreak">Savannah <i class="icon-angle-right"></i></span></h3>
				</a></div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 tilebutton blue portofbrunswick">
			<div class="tilebutton-table"><a href="/portofbrunswick.aspx" class="tilebutton-table-cell icon-jump">
				<h3>Discover the Port of <span class="nobreak">Brunswick <i class="icon-angle-right"></i></span></h3>
				</a></div>
		</div>
	</div>
	<!-- *********************************** -->
	<!-- VIDEOS, MORE IMPACT -->
	<div class="row">
		<div class="col-sm-2 tilebutton orange videos">
			<div class="tilebutton-table"><a href="/Media/Video.aspx" class="tilebutton-table-cell icon-jump">
				<h3>Videos <i class="icon-youtube-play"></i></h3>
				</a></div>
		</div>
		<div class="col-sm-7 tilebutton more-impact">
			<div class="tilebutton-table"><a href="/moreimpact" class="tilebutton-table-cell icon-jump">
				<h3>More Impact <i class="icon-angle-right"></i></h3>
				</a></div>
		</div>
	</div>
	<!-- *********************************** -->
	<!-- CAROUSEL -->
	<div class="row hidden-sm">
		<div class="col-sm-12 tilebutton portfactscarousel">
			<div id="PortFactsCarousel" class="carousel slide">
				
				<!-- Carousel indicators -->
				<ol class="carousel-indicators">
					<li data-target="#PortFactsCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#PortFactsCarousel" data-slide-to="1"></li>
					<li data-target="#PortFactsCarousel" data-slide-to="2"></li>
				</ol>
				
				<!-- Carousel items -->
				<div class="carousel-inner">
					<div class="item active"><img src="<%=skinpath%>images/home/carousel-frame-1.png" alt="GPA facts frame 1" /></div>
					<div class="item"><img src="<%=skinpath%>images/home/carousel-frame-1.png" alt="GPA facts frame 1" /></div>
					<div class="item"><img src="<%=skinpath%>images/home/carousel-frame-1.png" alt="GPA facts frame 1" /></div>
				</div>
				
				<!-- Carousel nav -->
				<a class="carousel-control left" href="#PortFactsCarousel" data-slide="prev">&lsaquo;</a> <a class="carousel-control right" href="#PortFactsCarousel" data-slide="next">&rsaquo;</a> </div>
		</div>
	</div>
	<!-- ************************************ -->
	<!-- SUSTAINABILITY, SHEP, PRESS RELEASES -->
	<div class="row">
		<div class="col-sm-3 col-sm-push-4 tilebutton orange shep">
			<div class="tilebutton-table"><a href="/shep" class="tilebutton-table-cell icon-jump">
				<h3>Savannah Harbor Deepening <span class="nobreak">Project <i class="icon-angle-right"></i></span></h3>
				</a></div>
		</div>
		<div class="col-sm-4 col-sm-pull-3 tilebutton sustainability">
			<div class="tilebutton-table"><a href="/sustainability" class="tilebutton-table-cell icon-jump">
				<h3>Sustainability <i class="icon-angle-right"></i></h3>
				</a></div>
		</div>
		<div class="col-sm-4 tilebutton blue press-releases">
			<div class="tilebutton-table">
				<div class="tilebutton-table-cell icon-jump">
					<h3><a href="/Media/PressReleases.aspx">Press <span class="nobreak">Releases <i class="icon-angle-right"></i></span></a></h3>
					<h4><a href="#ArticleLink"><i class="icon-rss"></i>&nbsp;&nbsp;GPA achieves growth across all major indices</a></h4>
				</div>
			</div>
		</div>
	</div>
	<!-- ************************************ -->
	<!-- BIG HEADLINE -->
	<div class="row">
		<div class="col-sm-7 big-header-2">
			<h2>4th Busiest Container&nbsp;Port in&nbsp;the United&nbsp;States.</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-7 nogutter">
			<hr/>
		</div>
		<div class="clearfix">&nbsp;</div>
	</div>
	<div id="ContentPane" runat="server" class="bottompane"></div>
	<!-- InstanceEndEditable --></div>

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

<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]--> 

<!-- InstanceEnd -->