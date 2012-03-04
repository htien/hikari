<!--#include file="includes/Init.asp"-->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" dir="ltr">
<head>
    <meta charset="<%=hikari.config.charset%>" />
    <meta name="author" content="<%=hikari.config.author%>" />
    <meta name="description" content="Linh Kien May Tinh" />
    <meta name="generator" content="Notepad++ v5.9.8" />
    <meta name="keywords" content="light, theme" />
    <base href="<%=hikari.config.appPath%>/" />
    <script type="text/javascript">
        new Image().src = "<%=hikari.config.appPath%>/static/themes/white/images/BeaconSprite-US-01._V141013396_.png";
        new Image().src = "<%=hikari.config.appPath%>/static/themes/white/images/nav-pop-h._V155853593_.png";
        new Image().src = "<%=hikari.config.appPath%>/static/themes/white/images/apple_gradient_texture.png";
    </script>
    <script type="text/javascript" src="<%=hikari.config.appPath%>/static/js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="<%=hikari.config.appPath%>/static/themes/white/main.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="<%=hikari.config.appPath%>/static/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="<%=hikari.config.appPath%>/static/themes/white/main.css" />
    <title><%=hikari.config.pageTitle%></title>
</head>

<body class="hikari">
<div id="hikari" class="gA">
    <div id="globalHeader" class="gl">
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
                <div class="clearfix"></div>
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
                        <label class="amz-navsearch-label" for="searchTextbox">Search</label>
                        <form class="amz-searchbar" method="get" action="?">
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
        <div id="mainContainer" class="amz-container hasLeftCol">
            <div class="amz-leftcolcontainer">
                <div class="amz-leftcol">
                    <div class="amz-sidebox first">
                        <h2 class="title">Categories</h2>
                        <div class="pad">
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
                    </div>
                    <div id="pagelet_ads" class="amz-sidebox">
                        <h2 class="title">Advertisement</h2>
                        <div class="pad">
                            <img src="/hikari/static/images/tmp/camera-newincamphoto2_300x75._.png" alt="" />
                            <img src="/hikari/static/images/tmp/mass-effect3-pre-order_300x120._V140235086_.jpg" alt="" />
                            <img src="/hikari/static/images/tmp/bose_soundlink_wireless_mobile_speaker_300x120._V140173257_.gif" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="amz-contentcol hasRightCol">
                <div class="amz-rightcol">
                    <div id="pagelet_ads_2" class="amz-sidebox first">
                        <h2 class="title">Advertisement</h2>
                        <div class="tile first">
                            <a class="block">
                                <h3>Education Pricing</h3>
                                <div>
                                    <img src="/hikari/static/images/tmp/macbook_air.jpg" alt="" />
                                </div>
                                <p>College students and teachers, save on a new Mac, software and more.</p>
                                <p><span class="more">Learn more</span></p>
                            </a>
                        </div>
                        <div class="tile">
                            <a class="block">
                                <h3>Education Pricing</h3>
                                <div>
                                    <img src="/hikari/static/images/tmp/macbook_air.jpg" alt="" />
                                </div>
                                <p>College students and teachers, save on a new Mac, software and more.</p>
                                <p><span class="more">Learn more</span></p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="amz-contentarea">
                    <div id="pagelet_centerA" class="amz-box first">
                        <h2 class="title">Hikari Store Best Sellers</h2>
                        <div style="text-align:center"><img src="/hikari/static/images/tmp/temp2.jpg" alt="" /></div>
                        <div style="text-align:center"><img src="/hikari/static/images/tmp/temp1.jpg" alt="" /></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div id="globalFooter" class="gl">
        <div id="pagelet_copyrights" class="clearfix">
            <ul class="stores">
                <li class="first">Hikari Store (V.N.)</li>
                <li><a>Change Language</a></li>
            </ul>
            <ul class="help">
                <li class="first"><a href="#">Help</a></li>
                <li><a>Account</a></li>
                <li><a>Site Map</a></li>
                <li><a>Security Policy</a></li>
                <li><a>Contact Us</a></li>
            </ul>
            <div class="separator clearfix"></div>
            <ul class="copyrights">
                <li class="first">Copyright &#169; 2012, Hikari Electronics Inc. All rights reserved.</li>
                <li><a>Terms of Use</a></li>
                <li><a>Privacy Policy</a></li>
            </ul>
            <span class="order-by-phone">You can also order from Hikari Store by calling (?).</span>
        </div>
    </div>
</div>
</body>
</html>