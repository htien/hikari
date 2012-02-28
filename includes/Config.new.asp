<%

var config = new HikariConfig;

config.debug = true;

config.dataSource      = "CERN\\SQLEXPRESS";
config.initialCatalog  = "Microsale";
config.userId          = "sa";
config.password        = "sysadmin";
config.provider        = "SQLNCLI10";

config.charset         = "UTF-8";

Response.Charset       = config.charset;
Session.CodePage       = 65001;

%>