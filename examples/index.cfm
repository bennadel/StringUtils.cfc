
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

		<h4>
			isBlank( value )
		</h4>

		<p>
			isBlank( "hello world" ) : #utils.isBlank( "hello world" )#<br />
			isBlank( "" ) : #utils.isBlank( "" )#<br />
			isBlank( "&nbsp;&nbsp;&nbsp;" ) : #utils.isBlank( "   " )#<br />
			isBlank( null ) : #utils.isBlank( javaCast( "null", "" ) )#<br />
		</p>

		<h4>
			isEmpty( value )
		</h4>

		<p>
			isEmpty( "hello world" ) : #utils.isEmpty( "hello world" )#<br />
			isEmpty( "" ) : #utils.isEmpty( "" )#<br />
			isEmpty( null ) : #utils.isEmpty( javaCast( "null", "" ) )#<br />
		</p>

		<h4>
			isNotBlank( value )
		</h4>

		<p>
			isNotBlank( "hello world" ) : #utils.isNotBlank( "hello world" )#<br />
			isNotBlank( "" ) : #utils.isNotBlank( "" )#<br />
			isNotBlank( "&nbsp;&nbsp;&nbsp;" ) : #utils.isNotBlank( "   " )#<br />
			isNotBlank( null ) : #utils.isNotBlank( javaCast( "null", "" ) )#<br />
		</p>

		<h4>
			isNotEmpty( value )
		</h4>

		<p>
			isNotEmpty( "hello world" ) : #utils.isNotEmpty( "hello world" )#<br />
			isNotEmpty( "" ) : #utils.isNotEmpty( "" )#<br />
			isNotEmpty( null ) : #utils.isNotEmpty( javaCast( "null", "" ) )#<br />
		</p>

		<h4>
			trimString( value )
		</h4>

		<p>
			trimString( " hello world " ) : [#utils.trimString( " hello world " )#]<br />
			trimString( null ) : <cftry> <cfset x = utils.trimString( javaCast( "null", "" ) ) /> #x# <cfcatch> null ( #cfcatch.message# ) </cfcatch></cftry>
		</p>

	</cfoutput>

	<cfdump var="#utils#" />

</body>
</html>
