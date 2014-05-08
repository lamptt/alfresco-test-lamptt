function main() {
	var result = remote.connect("alfresco").get("/someco/whitepapers");
	if (result.status == 200) {
		
		//data = eval('(' + result.response + ')');
		//model.items = data.items;
		
		var data = eval('(' + result + ')');
		model.foo = "haha";
		model.whitepapers = data.whitepapers;
	}
}

main();