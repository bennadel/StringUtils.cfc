
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
			isAllLowerCase( value )
		</h4>

		<p>
			isAllLowerCase( "hello world" ) : #utils.isAllLowerCase( "helloworld" )#<br />
			isAllLowerCase( "hello world" ) : #utils.isAllLowerCase( "hello world" )#<br />
			isAllLowerCase( "Hello World" ) : #utils.isAllLowerCase( "Hello World" )#<br />
			isAllLowerCase( "" ) : #utils.isAllLowerCase( "" )#<br />
		</p>

		<h4>
			isAllUpperCase( value )
		</h4>

		<p>
			isAllUpperCase( "HELLO WORLD" ) : #utils.isAllUpperCase( "HELLOWORLD" )#<br />
			isAllUpperCase( "HELLO WORLD" ) : #utils.isAllUpperCase( "HELLO WORLD" )#<br />
			isAllUpperCase( "Hello World" ) : #utils.isAllUpperCase( "Hello World" )#<br />
			isAllUpperCase( "" ) : #utils.isAllUpperCase( "" )#<br />
		</p>

		<h4>
			isAlpha( value )
		</h4>

		<p>
			isAlpha( "hello world" ) : #utils.isAlpha( "hello world" )#<br />
			isAlpha( "helloworld" ) : #utils.isAlpha( "helloworld" )#<br />
			isAlpha( "hello2world" ) : #utils.isAlpha( "hello2world" )#<br />
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
			trimString( null ) : <cftry> <cfset x = utils.trimString( javaCast( "null", "" ) ) /> #x# <cfcatch> null ( #cfcatch.message# ) </cfcatch></cftry><br />
		</p>

		<h4>
			trimStringToEmpty( value )
		</h4>

		<p>
			trimStringToEmpty( " hello world " ) : [#utils.trimStringToEmpty( " hello world " )#]<br />
			trimStringToEmpty( null ) : [#utils.trimStringToEmpty( javaCast( "null", "" ) )#]<br />
		</p>

		<h4>
			trimStringToNull( value )
		</h4>

		<p>
			trimStringToNull( " hello world " ) : [#utils.trimStringToNull( " hello world " )#]<br />
			trimStringToNull( " " ) : <cftry> <cfset x = utils.trimStringToNull( " " ) /> #x# <cfcatch> null ( #cfcatch.message# ) </cfcatch></cftry><br />
			trimStringToNull( null ) : <cftry> <cfset x = utils.trimStringToNull( javaCast( "null", "" ) ) /> #x# <cfcatch> null ( #cfcatch.message# ) </cfcatch></cftry><br />
		</p>

	</cfoutput>

	<cfdump var="#utils#" />

</body>
</html>
