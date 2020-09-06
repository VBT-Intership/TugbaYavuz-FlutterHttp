{
	// Place your flutterhttp workspace snippets here. Each snippet is defined under a snippet name and has a scope, prefix, body and 
	// description. Add comma separated ids of the languages where the snippet is applicable in the scope field. If scope 
	// is left empty or omitted, the snippet gets applied to all languages. The prefix is what is 
	// used to trigger the snippet and the body will be expanded and inserted. Possible variables are: 
	// $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. 
	// Placeholders with the same ids are connected.
	// Example:
	"Print to console": {
		"scope": "dart",
		"prefix": "pr",
		"body": [
			"print($1);"
		],
		"description": "Log output to console"
	},
	"Print to summary": {
		"scope": "",
		"prefix": "aut",
		"body": [
			"// author:tugbayavuz"
		],
	},
	"Print to theme": {
		"scope": "",
		"prefix": "theme",
		"body": [
			" theme: ThemeData.dark(),"
		],
	},
	"Print to HttpSwitch": {
		"scope": "",
		"prefix": "swi",
		"body": [
			" Future<void> $1 async {",
			"final response = await http.get();",
			"switch (response.statusCode) {",
			" case HttpStatus.ok:",
			" final jsonBody = jsonDecode(response.body);",
			"  if (jsonBody is List)",
			" $2 =jsonBody.map((e) => $3.fromJson(e)).toList();",
			"break;",
			" default:",
			"}",
			" }"

		],
	},
		
	
}
