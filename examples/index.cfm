
<cfset utils = new lib.StringUtils() />


<cfcontent type="text/html; charset=utf-8" />

<!doctype>
<html>
<head>
	<meta charset="utf-8" />
	
	<title>
		StringUtils.cfc Examples
	</title>

	<style type="text/css">

		h4 {
			border-bottom: 1px solid #CCCCCC ;
			margin-bottom: 10px ;
			margin-top: 25px ;
			padding-bottom: 5px ;
		}

	</style>
</head>
<body>

	<h1>
		StringUtils.cfc Examples
	</h1>

	<cfoutput>

		<h4>
			capitalize( value )
		</h4>

		<p>
			capitalize( "groove sauce" ) : #utils.capitalize( "groove sauce" )#<br />
		</p>

		<h4>
			containsAnySubstring( value, substrings[] )
		</h4>

		<p>
			containsAnySubstring( "hello world", [] ) : #utils.containsAnySubstring( "hello world", [] )#<br />
			containsAnySubstring( "hello world", [ "noop" ] ) : #utils.containsAnySubstring( "hello world", [ "noop" ] )#<br />
			containsAnySubstring( "hello world", [ "noop", "world" ] ) : #utils.containsAnySubstring( "hello world", [ "noop", "world" ] )#<br />
			containsAnySubstring( "hello world", [ "noop", "world", "blam" ] ) : #utils.containsAnySubstring( "hello world", [ "noop", "world", "blam" ] )#<br />
		</p>

		<h4>
			containsSubstring( value, substring )
		</h4>

		<p>
			containsSubstring( "hello world" ) : #utils.containsSubstring( "hello world" )#<br />
			containsSubstring( "hello world", null ) : #utils.containsSubstring( "hello world", javaCast( "null", "" ) )#<br />
			containsSubstring( "hello world", "hello" ) : #utils.containsSubstring( "hello world", "hello" )#<br />
		</p>

	</cfoutput>

	<cfdump var="#utils#" />

</body>
</html>
