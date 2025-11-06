component {
    this.name="Vendor";
    this.sessionManagement="true";
    this.sessionTimeout="#createTimeSpan(0,24,0,0)#";
	this.defaultdatasource="simpleDB";
    this.setClientCookies="false";
    /*
    function onRequestStart() {
        if (!structKeyExists(session, "user") AND cgi.script_name NEQ "/secure/vendorLogin.cfm") {
            location
                url = "/secure/vendorLogin.cfm";
        }
    }
    */
}