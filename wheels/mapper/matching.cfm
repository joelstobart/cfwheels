<cfscript>

/**
 * Create a route that matches a URL requiring an HTTML `GET` method. We recommend only using this matcher to expose actions that display data. See `post`, `patch`, `delete`, and `put` for matchers that are appropriate for actions that change data in your database.
 *
 * [section: Configuration]
 * [category: Routing]
 *
 * @name Camel-case name of route to reference when build links and form actions (e.g., `blogPost`).
 * @pattern Overrides the URL pattern that will match the route. The default value is a dasherized version of `name` (e.g., a `name` of `blogPost` generates a pattern of `blog-post`).
 * @to Set `controller##action` combination to map the route to. You may use either this argument or a combination of `controller` and `action`.
 * @controller Map the route to a given controller. This must be passed along with the `action` argument.
 * @action Map the route to a given action within the `controller`. This must be passed along with the `controller` argument.
 * @package Indicates a subfolder that the controller will be referenced from (but not added to the URL pattern). For example, if you set this to `admin`, the controller will be located at `admin/YourController.cfc`, but the URL path will not contain `admin/`.
 * @on If this route is within a nested resource, you can set this argument to `member` or `collection`. A `member` route contains a reference to the resource's `key`, while a `collection` route does not.
 */
public struct function get(
	string name,
	string pattern,
	string to,
	string controller,
	string action,
	string package,
	string on
) {
	return $match(argumentCollection=arguments, method="get");
}

/**
 * Create a route that matches a URL requiring an HTTP `POST` method. We recommend using this matcher to expose actions that create database records.
 *
 * [section: Configuration]
 * [category: Routing]
 *
 * @name Camel-case name of route to reference when build links and form actions (e.g., `blogPosts`).
 * @pattern Overrides the URL pattern that will match the route. The default value is a dasherized version of `name` (e.g., a `name` of `blogPosts` generates a pattern of `blog-posts`).
 * @to Set `controller##action` combination to map the route to. You may use either this argument or a combination of `controller` and `action`.
 * @controller Map the route to a given controller. This must be passed along with the `action` argument.
 * @action Map the route to a given action within the `controller`. This must be passed along with the `controller` argument.
 * @package Indicates a subfolder that the controller will be referenced from (but not added to the URL pattern). For example, if you set this to `admin`, the controller will be located at `admin/YourController.cfc`, but the URL path will not contain `admin/`.
 * @on If this route is within a nested resource, you can set this argument to `member` or `collection`. A `member` route contains a reference to the resource's `key`, while a `collection` route does not.
 */
public struct function post(
	string name,
	string pattern,
	string to,
	string controller,
	string action,
	string package,
	string on
) {
	return $match(argumentCollection=arguments, method="post");
}

/**
 * Create a route that matches a URL requiring an HTTP `PATCH` method. We recommend using this matcher to expose actions that update database records.
 *
 * [section: Configuration]
 * [category: Routing]
 *
 * @name Camel-case name of route to reference when build links and form actions (e.g., `blogPost`).
 * @pattern Overrides the URL pattern that will match the route. The default value is a dasherized version of `name` (e.g., a `name` of `blogPost` generates a pattern of `blog-post`).
 * @to Set `controller##action` combination to map the route to. You may use either this argument or a combination of `controller` and `action`.
 * @controller Map the route to a given controller. This must be passed along with the `action` argument.
 * @action Map the route to a given action within the `controller`. This must be passed along with the `controller` argument.
 * @package Indicates a subfolder that the controller will be referenced from (but not added to the URL pattern). For example, if you set this to `admin`, the controller will be located at `admin/YourController.cfc`, but the URL path will not contain `admin/`.
 * @on If this route is within a nested resource, you can set this argument to `member` or `collection`. A `member` route contains a reference to the resource's `key`, while a `collection` route does not.
 */
public struct function patch(
	string name,
	string pattern,
	string to,
	string controller,
	string action,
	string package,
	string on
) {
	return $match(argumentCollection=arguments, method="patch");
}

/**
 * Create a route that matches a URL requiring an HTTP `PUT` method. We recommend using this matcher to expose actions that update database records. This method is provided as a convenience for when you really need to support the `PUT` verb; consider using the `patch` matcher instead of this one.
 *
 * [section: Configuration]
 * [category: Routing]
 *
 * @name Camel-case name of route to reference when build links and form actions (e.g., `blogPost`).
 * @pattern Overrides the URL pattern that will match the route. The default value is a dasherized version of `name` (e.g., a `name` of `blogPost` generates a pattern of `blog-post`).
 * @to Set `controller##action` combination to map the route to. You may use either this argument or a combination of `controller` and `action`.
 * @controller Map the route to a given controller. This must be passed along with the `action` argument.
 * @action Map the route to a given action within the `controller`. This must be passed along with the `controller` argument.
 * @package Indicates a subfolder that the controller will be referenced from (but not added to the URL pattern). For example, if you set this to `admin`, the controller will be located at `admin/YourController.cfc`, but the URL path will not contain `admin/`.
 * @on If this route is within a nested resource, you can set this argument to `member` or `collection`. A `member` route contains a reference to the resource's `key`, while a `collection` route does not.
 */
public struct function put(
	string name,
	string pattern,
	string to,
	string controller,
	string action,
	string package,
	string on
) {
	return $match(argumentCollection=arguments, method="put");
}

/**
 * Create a route that matches a URL requiring an HTTP `DELETE` method. We recommend using this matcher to expose actions that delete database records.
 *
 * [section: Configuration]
 * [category: Routing]
 *
 * @name Camel-case name of route to reference when build links and form actions (e.g., `blogPost`).
 * @pattern Overrides the URL pattern that will match the route. The default value is a dasherized version of `name` (e.g., a `name` of `blogPost` generates a pattern of `blog-post`).
 * @to Set `controller##action` combination to map the route to. You may use either this argument or a combination of `controller` and `action`.
 * @controller Map the route to a given controller. This must be passed along with the `action` argument.
 * @action Map the route to a given action within the `controller`. This must be passed along with the `controller` argument.
 * @package Indicates a subfolder that the controller will be referenced from (but not added to the URL pattern). For example, if you set this to `admin`, the controller will be located at `admin/YourController.cfc`, but the URL path will not contain `admin/`.
 * @on If this route is within a nested resource, you can set this argument to `member` or `collection`. A `member` route contains a reference to the resource's `key`, while a `collection` route does not.
 */
public struct function delete(
	string name,
	string pattern,
	string to,
	string controller,
	string action,
	string package,
	string on
) {
	return $match(argumentCollection=arguments, method="delete");
}

/**
 * Match a root directory.
 *
 * [section: Configuration]
 * [category: Routing]
 */
public struct function root(string to) {
	return $match(name="root", pattern="/(.[format])", argumentCollection=arguments);
}

/**
 * Special wildcard matching generates routes with `[controller]/[action]` and `[controller]` patterns.
 *
 * [section: Configuration]
 * [category: Routing]
 *
 * @method List of HTTP methods (verbs) to generate the wildcard routes for. We strongly recommend leaving the default value of `get` and using other routing mappers if you need to `POST` to a URL endpoint. For better readability, you can also pass this argument as `methods`.
 * @action Default action to specify if the value for the `[action]` placeholder is not provided.
 */
public struct function wildcard(string method="get", string action="index") {
  if (StructKeyExists(arguments, "methods") && Len(arguments.methods)) {
    local.methods = arguments.methods;
  } else if (Len(arguments.method)) {
    local.methods = ListToArray(arguments.method);
  } else {
    local.methods = ["get", "post", "put", "patch", "delete"];
  }

	if (StructKeyExists(variables.scopeStack[1], "controller")) {
    for (local.method in local.methods) {
		  $match(method=local.method, name="wildcard", pattern="[action](.[format])", action=arguments.action);
      $match(method=local.method, name="wildcard", pattern="(.[format])", action=arguments.action);
    }
	} else {
    for (local.method in local.methods) {
		  $match(
        method=local.method,
        name="wildcard",
        pattern="[controller]/[action](.[format])",
        action=arguments.action
      );

      $match(
        method=local.method,
        name="wildcard",
        pattern="[controller](.[format]))",
        action=arguments.action
      );
    }
	}
	return this;
}

/**
 * Internal function.
 * Match a URL.
 *
 * @name Name for route. Used for path helpers.
 * @pattern Pattern to match for route.
 * @to Set controller##action for route.
 * @methods HTTP verbs that match route.
 * @package Namespace to append to controller.
 * @on Created resource route under "member" or "collection".
 */
public struct function $match(
	string name,
	string pattern,
	string to,
	string methods,
	string package,
	string on,
	struct constraints={}
) {
	// Evaluate match on member or collection.
	if (StructKeyExists(arguments, "on")) {
		switch (arguments.on) {
			case "member":
				return member().$match(argumentCollection=arguments, on="").end();

			case "collection":
				return collection().$match(argumentCollection=arguments, on="").end();
		}
	}

	// Use scoped controller if found.
	if (StructKeyExists(variables.scopeStack[1], "controller") && !StructKeyExists(arguments, "controller")) {
		arguments.controller = variables.scopeStack[1].controller;
	}

	// Use scoped package if found.
	if (StructKeyExists(variables.scopeStack[1], "package")) {
		if (StructKeyExists(arguments, "package")) {
			arguments.package &= "." & variables.scopeStack[1].package;
		} else {
			arguments.package = variables.scopeStack[1].package;
		}
	}

	// Interpret "to" as "controller##action".
	if (StructKeyExists(arguments, "to")) {
		arguments.controller = ListFirst(arguments.to, "##");
		arguments.action = ListLast(arguments.to, "##");
		StructDelete(arguments, "to");
	}

	// Pull route name from arguments if it exists.
	local.name = "";
	if (StructKeyExists(arguments, "name")) {
		local.name = arguments.name;

		// Guess pattern and/or action.
		if (!StructKeyExists(arguments, "pattern")) {
			arguments.pattern = hyphenize(arguments.name);
		}
		if (!StructKeyExists(arguments, "action") && !Find("[action]", arguments.pattern)) {
			arguments.action = arguments.name;
		}
	}

	// Die if pattern is not defined.
	if (!StructKeyExists(arguments, "pattern")) {
		Throw(type="Wheels.MapperArgumentMissing", message="Either 'pattern' or 'name' must be defined.");
	}

	// Accept either "method" or "methods".
	if (StructKeyExists(arguments, "method")) {
		arguments.methods = arguments.method;
		StructDelete(arguments, "method");
	}

	// Remove 'methods' argument if settings disable it.
	if (!variables.methods && StructKeyExists(arguments, "methods")) {
		StructDelete(arguments, "methods");
	}

	// See if we have any globing in the pattern and if so add a constraint for each glob.
	if (REFindNoCase("\*([^\/]+)", arguments.pattern)) {
		local.globs = REMatch("\*([^\/]+)", arguments.pattern);
		for (local.glob in local.globs) {
			local.var = replaceList(local.glob, "*,[,]", "");
			arguments.pattern = replace(arguments.pattern, local.glob, "[#local.var#]");
			arguments.constraints[local.var] = ".*";
		}
	}

	// Use constraints from stack.
	if (StructKeyExists(variables.scopeStack[1], "constraints")) {
		StructAppend(arguments.constraints, variables.scopeStack[1].constraints, false);
	}

	// Add shallow path to pattern.
	// Or, add scoped path to pattern.
	if ($shallow()) {
		arguments.pattern = $shallowPathForCall() & "/" & arguments.pattern;
	} else if (StructKeyExists(variables.scopeStack[1], "path")) {
		arguments.pattern = variables.scopeStack[1].path & "/" & arguments.pattern;
	}

	// If both package and controller are set, combine them.
	if (StructKeyExists(arguments, "package") && StructKeyExists(arguments, "controller")) {
		arguments.controller = arguments.package & "." & arguments.controller;
		StructDelete(arguments, "package");
	}

	// Build named routes in correct order according to rails conventions.
	switch (variables.scopeStack[1].$call) {
		case "resource":
		case "resources":
		case "collection":
			local.nameStruct = [local.name, $shallow() ? $shallowNameForCall() : $scopeName(), $collection()];
			break;
		case "member":
		case "new":
			local.nameStruct = [local.name, $shallow() ? $shallowNameForCall() : $scopeName(), $member()];
			break;
		default:
			local.nameStruct = [$scopeName(), $collection(), local.name];
	}

	// Transform array into named route.
	local.name = ArrayToList(local.nameStruct);
	local.name = REReplace(local.name, "^,+|,+$", "", "all");
	local.name = REReplace(local.name, ",+(\w)", "\U\1", "all");
	local.name = REReplace(local.name, ",", "", "all");

	// If we have a name, add it to arguments.
	if (Len(local.name)) {
		arguments.name = local.name;
	}

	// Handle optional pattern segments.
	if (Find("(", arguments.pattern)) {
		// Confirm nesting of optional segments.
		if (REFind("\).*\(", arguments.pattern)) {
			Throw(type="Wheels.InvalidRoute", message="Optional pattern segments must be nested.");
		}

		// Strip closing parens from pattern.
		local.pattern = Replace(arguments.pattern, ")", "", "all");

		// Loop over all possible patterns.
		while (Len(local.pattern)) {
			// Add current route to Wheels.
			$addRoute(argumentCollection=arguments, pattern=Replace(local.pattern, "(", "", "all"));

			// Remove last optional segment.
			local.pattern = REReplace(local.pattern, "(^|\()[^(]+$", "");

		}
	} else {
		// Add route to Wheels as is.
		$addRoute(argumentCollection=arguments);
	}

	return this;
}

</cfscript>
