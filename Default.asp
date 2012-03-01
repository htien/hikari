<!--#include file="includes/Init.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    <script type="text/javascript" src="static/js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="static/themes/white/main.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="static/favicon.ico" />
    <link rel="stylesheet" type="text/javascript" href="static/themes/white/main.css" />
    <title><%=hikari.config.pageTitle%></title>
</head>

<body class="hikari">
<div class="gA">
    <div id="globalHeader" class="gl">
        <div class="amz-navbar">
            <div class="amz-links">
                <a id="hikari-logo" href="/?ref=h_logo">Hikari</a>
                <ul id="hikari-nav-cross-links">
                    <li>Link 1</li>
                    <li>Link 2</li>
                    <li>Link 3</li>
                </ul>
            </div>
            <div class="amz-discovery">
                Discovery
            </div>
        </div>
    </div>
    <div id="globalContainer" class="gl">
        <div class="temp">
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
    <div id="globalFooter" class="gl">
        Global Map
    </div>
</div>
</body>
</html>