<!--#include file="Hikari.asp"-->
<!--#include file="Config.asp"-->

<%

var hikari;
var rs;

try {
    hikari = new HikariConnection;
    createConfig(hikari);

    hikari.open();
}
catch (ex) {
    hikari.errorMessage = hikari.config.debug ? ex.message : "Cannot connect to database.";
}

if (hikari.errorMessage.length) {
    if (hikari.config.debug) {
        Response.Write("<h2>" + hikari.errorMessage + "</h2>");
    }
    else {
        Response.Write("<h2>There was an error connecting to database.</h2>");
    }
    Response.End();
}
else {
    rs = Server.CreateObject("ADODB.Recordset");
}

%>