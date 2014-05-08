function main() {
	var result = remote.connect("alfresco-noauth").get("/someco/whitepapers");

	if (result.status == 200) {
		var nodeMetadata = eval('(' + result + ')');

		// File extension
		model.fileExtension = "generic";
		var i = nodeMetadata.name.lastIndexOf(".");
		if (i > -1) {
			model.fileExtension = nodeMetadata.name.substring(i + 1);
		}

		// Display name
		model.displayName = nodeMetadata.name;

		// Modify
		model.modifierFirstName = nodeMetadata.modifier.firstName || "";
		model.modifierLastName = nodeMetadata.modifier.lastName || "";
		model.modifyDate = nodeMetadata.modifiedOn;
	}
}

main();