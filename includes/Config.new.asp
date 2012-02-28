<%

function createConfig(h) {
	h.config.debug = true;
	
	h.config.dataSource      = "CERN\\SQLEXPRESS";
	h.config.initialCatalog  = "Microsale";
	h.config.userId          = "sa";
	h.config.password        = "sysadmin";
	h.config.provider        = "SQLNCLI10";
	
	h.config.charset         = "UTF-8";
	
	Response.Charset = h.config.charset;
	Session.CodePage = 65001;
}

%>