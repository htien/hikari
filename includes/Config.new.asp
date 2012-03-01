<%

function createConfig(hikariConn) {
    hikariConn.config.debug = true;

    hikariConn.config.dataSource      = "CERN\\SQLEXPRESS";
    hikariConn.config.initialCatalog  = "Microsale";
    hikariConn.config.userId          = "sa";
    hikariConn.config.password        = "sysadmin";
    hikariConn.config.provider        = "SQLNCLI10";

    hikariConn.config.charset         = "UTF-8";

    Response.Charset = hikariConn.config.charset;
    Session.CodePage = 65001;
}

%>