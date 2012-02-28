<%

/**
 * HikariConfig class
 */
HikariConfig = function(dataSource, initialCatalog, userId, password, provider) {
	this.debug = false;
	
	this.codeName = "Hikari";
	this.pageTitle = "Hikari Electronics";
	this.version = "1.0";
	this.author = "Phuong Lien";

	this.dataSource = dataSource || ".";
	this.initialCatalog = initialCatalog || "";
	this.userId = userId || "anonymous";
	this.password = password || "";
	this.provider = provider || "SQLNCLI10";
	
	this.charset = "ISO-8859-1";
}

/**
 * HikariConnection class
 */
HikariConnection = function(config) {
	this.config = config || new HikariConfig;
	this.conn;
	this.errorMessage = "";
}

HikariConnection.prototype.getInstance = function() {
	return this;
}

HikariConnection.prototype.getConnectionString = function() {
	return ";Provider=" + this.config.provider +
			";Data Source=" + this.config.dataSource +
			";Initial Catalog=" + this.config.initialCatalog +
			";User Id=" + this.config.userId +
			";Password=" + this.config.password;
}

HikariConnection.prototype.open = function() {
	this.conn = Server.CreateObject("ADODB.Connection");
	this.conn.Open(this.getConnectionString());
}

HikariConnection.prototype.close = function() {
	this.conn.Close();
	this.conn = null;
}

%>