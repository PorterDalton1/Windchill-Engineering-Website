component {
	this.Name = "WindchillWeb";
	this.sessionManagement = false;

	/*
	void function onRequest(string targetPage) {
		invalidName = targetPage;
		cfinclude(template="./partials/404_PAGE.cfm");
    }

	void function onMissingTemplate(targetPage) {
		invalidName = targetPage;
		cfinclude(template="./partials/404_PAGE.cfm");
	}
	*/
	void function onMissingTemplate(targetPage) {
		invalidName = targetPage;
		cfinclude(template="./partials/404_PAGE.cfm");
	}
}
