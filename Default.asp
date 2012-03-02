<!--#include file="includes/Init.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%=hikari.config.charset%>" />
    <meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate" />
    <meta http-equiv="Expires" content="-1" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="X-UA-Compatible" content="IE=9, IE=8, chrome=1" />
    <meta name="author" content="<%=hikari.config.author%>" />
    <meta name="keywords" content="light, theme" />
    <meta name="description" content="Linh Kien May Tinh" />
    <base href="/hikari/" />
    <script type="text/javascript">
        new Image().src = "/hikari/static/themes/white/images/BeaconSprite-US-01._V141013396_.png";
        new Image().src = "/hikari/static/themes/white/images/nav-pop-h._V155853593_.png";
    </script>
    <script type="text/javascript" src="static/js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="static/themes/white/main.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="static/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="static/themes/white/main.css" />
    <title><%=hikari.config.pageTitle%></title>
</head>

<body class="hikari">
<div class="gA">
    <div id="globalHeader" class="gl amz-global-header">
        <div class="amz-discovery">
            <div class="amz-links">
                <a id="hikari-nav-logo" class="amz-nav-sprite" href="?ref=h_logo">Hikari</a>
                <ul class="amz-cross-links">
                    <li class="amz-xs-link first"><a href="#">Today's Deals</a></li>
                    <li class="amz-xs-link"><a href="#">Gift Cards</a></li>
                    <li class="amz-xs-link"><a href="#">About</a></li>
                </ul>
                <div class="amz-welcome-row">
                    <div class="amz-text">Welcome you to Hikari Electronics Store!</div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="amz-navbar">
                <div class="amz-logo-borderfade">
                    <div class="amz-fade-mask"></div>
                    <div class="amz-fade amz-nav-sprite"></div>
                </div>
                <div class="amz-navbar-inner amz-nav-sprite">
                    <a id="hikari-nav-startmenu" class="amz-navbutton-outer" href="#">
                        <span class="amz-navbutton amz-nav-sprite">
                            <span class="amz-navbutton-inner amz-nav-sprite">
                                <span class="amz-navbutton-title">Shop by</span>
                                <span class="amz-navbutton-title amz-navbutton-strong">Department</span>
                            </span>
                        </span>
                        <span class="amz-down-arrow amz-nav-sprite"></span>
                    </a>
                    <div id="hikari-navsearch-container" class="amz-navsearch-container">
                        <label class="amz-navsearch-label">Search</label>
                        <form class="amz-searchbar">
							<div class="amz-searchfield-outer amz-nav-sprite">
								<div class="amz-searchfield-inner amz-nav-sprite">
									<input id="searchTextbox" class="amz-searchfield-tbox" type="text" name="field-keywords" title="Search for" />
								</div>
							</div>
							<div class="amz-searchfield-submit amz-nav-sprite">
								<input type="submit" class="amz-searchfield-submitbutton" value="Go" title="Go" />
							</div>
                        </form>
                    </div>
                    <a id="hikari-nav-account" class="amz-navbutton-outer" href="#">
                        <span class="amz-navbutton amz-nav-sprite">
                            <span class="amz-navbutton-inner amz-nav-sprite">
                                <span class="amz-navbutton-title">Hello, <span class="amz-navbutton-em">Lien</span></span>
                                <span class="amz-navbutton-title amz-navbutton-strong">Your Account</span>
                            </span>
                        </span>
                        <span class="amz-down-arrow amz-nav-sprite"></span>
                    </a>
                    <span id="hikari-divider-account" class="amz-nav-divider"></span>
                    <a id="hikari-nav-cart" class="amz-navbutton-outer" href="#">
                        <span class="amz-navbutton amz-nav-sprite">
                            <span class="amz-navbutton-inner amz-nav-sprite">
                                <span class="amz-navbutton-title amz-navbutton-strong">Cart</span>
                                <span class="amz-cart-button amz-nav-sprite"></span>
                                <span class="amz-cart-100">99+</span>
                            </span>
                        </span>
                        <span class="amz-down-arrow amz-nav-sprite"></span>
                    </a>
                    <span id="hikari-divider-cart" class="amz-nav-divider"></span>
                    <a id="hikari-nav-help" class="amz-navbutton-outer" href="#">
                        <span class="amz-navbutton amz-nav-sprite">
                            <span class="amz-navbutton-inner amz-nav-sprite">
                                <span class="amz-navbutton-title">Help</span>
                                <span class="amz-navbutton-title amz-navbutton-strong">You</span>
                            </span>
                        </span>
                        <span class="amz-down-arrow amz-nav-sprite"></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="amz-globalheader-bottomborder"></div>
    </div>
    <div id="globalContainer" class="gl">
		<div class="clear"></div>
        <div class="temp">
            <h2 class="amz-box-path">HOME > COMPUTERS > LAPTOPS & NETBOOKS</h2>
            <br />
        <%
            sql = "SELECT DISTINCT Br.BrandID, BrandName, Tip, Count(ProductID) AS 'ProductCount'"
                    + " FROM Brand Br"
                    + " INNER JOIN Product Pr ON Br.BrandID = Pr.BrandID"
                    + " GROUP BY Br.BrandID, BrandName, Tip";
            rs.Open(sql, hikari.conn);
            rs.MoveFirst();
            while (!rs.EOF) {
        %>
            <%=rs("BrandID")%>, <%=rs("BrandName")%> (<%=rs("ProductCount")%>)<br />
        <%
                rs.MoveNext();
            }
            rs.Close();
        %>
        </div>
		<div class="temp temp3">
			<h2 class="amz-box-path">HOME > COMPUTERS > LAPTOPS & NETBOOKS</h2>
			<br />
		<%
            sql = "SELECT DISTINCT Br.BrandID, BrandName, Tip, Count(ProductID) AS 'ProductCount'"
                    + " FROM Brand Br"
                    + " INNER JOIN Product Pr ON Br.BrandID = Pr.BrandID"
                    + " GROUP BY Br.BrandID, BrandName, Tip";
            rs.Open(sql, hikari.conn);
            rs.MoveFirst();
            while (!rs.EOF) {
        %>
            <%=rs("BrandID")%>, <%=rs("BrandName")%> (<%=rs("ProductCount")%>)<br />
        <%
                rs.MoveNext();
            }
            rs.Close();
        %>
		</div>
		<div class="temp temp2">
			<h2 class="amz-box-path">Under Construction...</h2>
			<br />
			<p style="text-align:center">
				<img src="/hikari/static/images/temp2.jpg" />
			</p>
		</div>
		<div class="temp temp2">
			<h2 class="amz-box-path">Under Construction...</h2>
			<br />
			<p style="text-align:center">
				<img src="/hikari/static/images/temp1.jpg" />
			</p>
		</div>
    </div>
    <div id="globalFooter" class="gl">
        <div style="text-align:center">&copy; 1996-2012, Hikari.com, Inc. or its affiliates</div>
    </div>
</div>
</body>
</html>