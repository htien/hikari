<!--#include file="Hikari.asp"-->
<!--#include file="Config.asp"-->

<%

var connect;
var rs;

try {
	connect = new HikariConnection(config);
	connect.open();
}
catch (ex) {
	connect.errorMessage = config.debug ? ex.message : "Cannot connect to database.";
}

if (connect.errorMessage.length) {
	if (config.debug) {
		Response.Write(connect.errorMessage);
	}
}
else {
	rs = Server.CreateObject("ADODB.Recordset");
}

%>