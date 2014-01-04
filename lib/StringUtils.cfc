// --
// See original Java Library:
// http://commons.apache.org/proper/commons-lang/javadocs/api-2.6/org/apache/commons/lang/StringUtils.html
// --
component
	output = false
	hint = "Collection of string utilities as found in the Java library, org.apache.commons.lang.StringUtils."
	{

	// ---
	// STATIC METHODS.
	// ---


	/**
	* @output false
	* @description Capitalizes a String changing the first letter to title case as per Character.toTitleCase(char).
	**/
	public string function capitalize( required string value ) {

		return(
			reReplace( value, "^(.)", "\U\1", "one" )
		);

	}


	/**
	* @output false
	* @description Checks if the String contains any character in the given set of characters.
	* @hint Changed function name from [containsAny] in order to make it consistent with the containsSubstring function (which was also renamed).
	**/
	public boolean function containsAnySubstring( 
		required string value,
		required array substrings
		) {

		for ( var substring in substrings ) {

			if ( containsSubstring( value, substring ) ) {

				return( true );

			}

		}

		return( false );

	}


	/**
	* @output false
	* @description Checks if String contains a search character or string, handling null.
	* @hint Changed function name from [contains] in order to make ColdFusion compatible (conflicts with operator).
	**/
	public boolean function containsSubstring( 
		required string value,
		string substring = "" 
		) {

		if ( ! len( substring ) ) {

			return( false );

		}

		return( !! find( substring, value ) );

	}


	/**
	* @output false
	* @description Checks if a String is whitespace, empty ("") or null.
	**/
	public boolean function isBlank( string value = "" ) {

		return( isEmpty( trim( value ) ) );

	}


	/**
	* @output false
	* @description Checks if a String is empty ("") or null.
	**/
	public boolean function isEmpty( string value = "" ) {

		return( ! len( value ) );

	}

	
	/**
	* @output false
	* @description Checks if a String is not empty (""), not null and not whitespace only.
	**/
	public boolean function isNotBlank( string value = "" ) {

		return( ! isBlank( value ) );

	}


	/**
	* @output false
	* @description Checks if a String is not empty ("") and not null.
	**/
	public boolean function isNotEmpty( string value = "" ) {

		return( ! isEmpty( value ) );

	}


	/**
	* @output false
	* @description Removes control characters (char <= 32) from both ends of this String, handling null by returning null.
	* @hint Changed function name from [trim] in order to make ColdFusion compatible (conflicts with native function).
	**/
	public string function trimString( string value ) {

		if ( isNull( value ) ) {

			return;

		}

		return( trim( value ) );

	}


	/*
	String 	abbreviate(String str, int maxWidth)
	Abbreviates a String using ellipses.
	
	String 	abbreviate(String str, int offset, int maxWidth)
	Abbreviates a String using ellipses.
	
	String 	abbreviateMiddle(String str, String middle, int length)
	Abbreviates a String to the length passed, replacing the middle characters with the supplied replacement String.
	
	String 	center(String str, int size)
	Centers a String in a larger String of size size using the space character (' ').
	
	String 	center(String str, int size, char padChar)
	Centers a String in a larger String of size size.
	
	String 	center(String str, int size, String padStr)
	Centers a String in a larger String of size size.
	
	String 	chomp(String str)
	Removes one newline from end of a String if it's there, otherwise leave it alone.
	
	String 	chomp(String str, String separator)
	Removes separator from the end of str if it's there, otherwise leave it alone.
	
	String 	chop(String str)
	Remove the last character from a String.
	
	boolean 	containsIgnoreCase(String str, String searchStr)
	Checks if String contains a search String irrespective of case, handling null.
	
	boolean 	containsNone(String str, char[] searchChars)
	Checks that the String does not contain certain characters.
	
	boolean 	containsNone(String str, String invalidChars)
	Checks that the String does not contain certain characters.
	
	boolean 	containsOnly(String str, char[] valid)
	Checks if the String contains only certain characters.
	
	boolean 	containsOnly(String str, String validChars)
	Checks if the String contains only certain characters.
	
	int 	countMatches(String str, String sub)
	Counts how many times the substring appears in the larger String.
	
	String 	defaultIfBlank(String str, String defaultStr)
	Returns either the passed in String, or if the String is whitespace, empty ("") or null, the value of defaultStr.
	
	String 	defaultIfEmpty(String str, String defaultStr)
	Returns either the passed in String, or if the String is empty or null, the value of defaultStr.
	
	String 	defaultString(String str)
	Returns either the passed in String, or if the String is null, an empty String ("").
	
	String 	defaultString(String str, String defaultStr)
	Returns either the passed in String, or if the String is null, the value of defaultStr.
	
	String 	deleteWhitespace(String str)
	Deletes all whitespaces from a String as defined by Character.isWhitespace(char).
	
	String 	difference(String str1, String str2)
	Compares two Strings, and returns the portion where they differ.
	
	boolean 	endsWith(String str, String suffix)
	Check if a String ends with a specified suffix.
	
	boolean 	endsWithAny(String string, String[] searchStrings)
	Check if a String ends with any of an array of specified strings.
	
	boolean 	endsWithIgnoreCase(String str, String suffix)
	Case insensitive check if a String ends with a specified suffix.
	
	boolean 	equals(String str1, String str2)
	Compares two Strings, returning true if they are equal.
	
	boolean 	equalsIgnoreCase(String str1, String str2)
	Compares two Strings, returning true if they are equal ignoring the case.
	
	String 	getCommonPrefix(String[] strs)
	Compares all Strings in an array and returns the initial sequence of characters that is common to all of them.
	
	int 	getLevenshteinDistance(String s, String t)
	Find the Levenshtein distance between two Strings.
	
	int 	indexOf(String str, char searchChar)
	Finds the first index within a String, handling null.
	
	int 	indexOf(String str, char searchChar, int startPos)
	Finds the first index within a String from a start position, handling null.
	
	int 	indexOf(String str, String searchStr)
	Finds the first index within a String, handling null.
	
	int 	indexOf(String str, String searchStr, int startPos)
	Finds the first index within a String, handling null.
	
	int 	indexOfAny(String str, char[] searchChars)
	Search a String to find the first index of any character in the given set of characters.
	
	int 	indexOfAny(String str, String searchChars)
	Search a String to find the first index of any character in the given set of characters.
	
	int 	indexOfAny(String str, String[] searchStrs)
	Find the first index of any of a set of potential substrings.
	
	int 	indexOfAnyBut(String str, char[] searchChars)
	Search a String to find the first index of any character not in the given set of characters.
	
	int 	indexOfAnyBut(String str, String searchChars)
	Search a String to find the first index of any character not in the given set of characters.
	
	int 	indexOfDifference(String[] strs)
	Compares all Strings in an array and returns the index at which the Strings begin to differ.
	
	int 	indexOfDifference(String str1, String str2)
	Compares two Strings, and returns the index at which the Strings begin to differ.
	
	int 	indexOfIgnoreCase(String str, String searchStr)
	Case in-sensitive find of the first index within a String.
	
	int 	indexOfIgnoreCase(String str, String searchStr, int startPos)
	Case in-sensitive find of the first index within a String from the specified position.
	
	boolean 	isAllLowerCase(String str)
	Checks if the String contains only lowercase characters.
	
	boolean 	isAllUpperCase(String str)
	Checks if the String contains only uppercase characters.
	
	boolean 	isAlpha(String str)
	Checks if the String contains only unicode letters.
	
	boolean 	isAlphanumeric(String str)
	Checks if the String contains only unicode letters or digits.
	
	boolean 	isAlphanumericSpace(String str)
	Checks if the String contains only unicode letters, digits or space (' ').
	
	boolean 	isAlphaSpace(String str)
	Checks if the String contains only unicode letters and space (' ').
	
	boolean 	isAsciiPrintable(String str)
	Checks if the string contains only ASCII printable characters.
	
	boolean 	isNumeric(String str)
	Checks if the String contains only unicode digits.
	
	boolean 	isNumericSpace(String str)
	Checks if the String contains only unicode digits or space (' ').
	
	boolean 	isWhitespace(String str)
	Checks if the String contains only whitespace.
	
	String 	join(Collection collection, char separator)
	Joins the elements of the provided Collection into a single String containing the provided elements.
	
	String 	join(Collection collection, String separator)
	Joins the elements of the provided Collection into a single String containing the provided elements.
	
	String 	join(Iterator iterator, char separator)
	Joins the elements of the provided Iterator into a single String containing the provided elements.
	
	String 	join(Iterator iterator, String separator)
	Joins the elements of the provided Iterator into a single String containing the provided elements.
	
	String 	join(Object[] array)
	Joins the elements of the provided array into a single String containing the provided list of elements.
	
	String 	join(Object[] array, char separator)
	Joins the elements of the provided array into a single String containing the provided list of elements.
	
	String 	join(Object[] array, char separator, int startIndex, int endIndex)
	Joins the elements of the provided array into a single String containing the provided list of elements.
	
	String 	join(Object[] array, String separator)
	Joins the elements of the provided array into a single String containing the provided list of elements.
	
	String 	join(Object[] array, String separator, int startIndex, int endIndex)
	Joins the elements of the provided array into a single String containing the provided list of elements.
	
	int 	lastIndexOf(String str, char searchChar)
	Finds the last index within a String, handling null.
	
	int 	lastIndexOf(String str, char searchChar, int startPos)
	Finds the last index within a String from a start position, handling null.
	
	int 	lastIndexOf(String str, String searchStr)
	Finds the last index within a String, handling null.
	
	int 	lastIndexOf(String str, String searchStr, int startPos)
	Finds the first index within a String, handling null.
	
	int 	lastIndexOfAny(String str, String[] searchStrs)
	Find the latest index of any of a set of potential substrings.
	
	int 	lastIndexOfIgnoreCase(String str, String searchStr)
	Case in-sensitive find of the last index within a String.
	
	int 	lastIndexOfIgnoreCase(String str, String searchStr, int startPos)
	Case in-sensitive find of the last index within a String from the specified position.
	
	int 	lastOrdinalIndexOf(String str, String searchStr, int ordinal)
	Finds the n-th last index within a String, handling null.
	
	String 	left(String str, int len)
	Gets the leftmost len characters of a String.
	
	String 	leftPad(String str, int size)
	Left pad a String with spaces (' ').
	
	String 	leftPad(String str, int size, char padChar)
	Left pad a String with a specified character.
	
	String 	leftPad(String str, int size, String padStr)
	Left pad a String with a specified String.
	
	int 	length(String str)
	Gets a String's length or 0 if the String is null.
	
	String 	lowerCase(String str)
	Converts a String to lower case as per String.toLowerCase().
	
	String 	lowerCase(String str, Locale locale)
	Converts a String to lower case as per String.toLowerCase(Locale).
	
	String 	mid(String str, int pos, int len)
	Gets len characters from the middle of a String.
	
	String 	normalizeSpace(String str)
	Similar to http://www.w3.org/TR/xpath/#function-normalize -space
	
	int 	ordinalIndexOf(String str, String searchStr, int ordinal)
	Finds the n-th index within a String, handling null.
	
	String 	overlay(String str, String overlay, int start, int end)
	Overlays part of a String with another String.
	
	String 	remove(String str, char remove)
	Removes all occurrences of a character from within the source string.
	
	String 	remove(String str, String remove)
	Removes all occurrences of a substring from within the source string.
	
	String 	removeEnd(String str, String remove)
	Removes a substring only if it is at the end of a source string, otherwise returns the source string.
	
	String 	removeEndIgnoreCase(String str, String remove)
	Case insensitive removal of a substring if it is at the end of a source string, otherwise returns the source string.
	
	String 	removeStart(String str, String remove)
	Removes a substring only if it is at the begining of a source string, otherwise returns the source string.
	
	String 	removeStartIgnoreCase(String str, String remove)
	Case insensitive removal of a substring if it is at the begining of a source string, otherwise returns the source string.
	
	String 	repeat(String str, int repeat)
	Repeat a String repeat times to form a new String.
	
	String 	repeat(String str, String separator, int repeat)
	Repeat a String repeat times to form a new String, with a String separator injected each time.
	
	String 	replace(String text, String searchString, String replacement)
	Replaces all occurrences of a String within another String.
	
	String 	replace(String text, String searchString, String replacement, int max)
	Replaces a String with another String inside a larger String, for the first max values of the search String.
	
	String 	replaceChars(String str, char searchChar, char replaceChar)
	Replaces all occurrences of a character in a String with another.
	
	String 	replaceChars(String str, String searchChars, String replaceChars)
	Replaces multiple characters in a String in one go.
	
	String 	replaceEach(String text, String[] searchList, String[] replacementList)
	Replaces all occurrences of Strings within another String.
	
	String 	replaceEachRepeatedly(String text, String[] searchList, String[] replacementList)
	Replaces all occurrences of Strings within another String.
	
	String 	replaceOnce(String text, String searchString, String replacement)
	Replaces a String with another String inside a larger String, once.
	
	String 	reverse(String str)
	Reverses a String as per StrBuilder.reverse().
	
	String 	reverseDelimited(String str, char separatorChar)
	Reverses a String that is delimited by a specific character.
	
	String 	right(String str, int len)
	Gets the rightmost len characters of a String.
	
	String 	rightPad(String str, int size)
	Right pad a String with spaces (' ').
	
	String 	rightPad(String str, int size, char padChar)
	Right pad a String with a specified character.
	
	String 	rightPad(String str, int size, String padStr)
	Right pad a String with a specified String.
	
	String[] 	split(String str)
	Splits the provided text into an array, using whitespace as the separator.
	
	String[] 	split(String str, char separatorChar)
	Splits the provided text into an array, separator specified.
	
	String[] 	split(String str, String separatorChars)
	Splits the provided text into an array, separators specified.
	
	String[] 	split(String str, String separatorChars, int max)
	Splits the provided text into an array with a maximum length, separators specified.
	
	String[] 	splitByCharacterType(String str)
	Splits a String by Character type as returned by java.lang.Character.getType(char).
	
	String[] 	splitByCharacterTypeCamelCase(String str)
	Splits a String by Character type as returned by java.lang.Character.getType(char).
	
	String[] 	splitByWholeSeparator(String str, String separator)
	Splits the provided text into an array, separator string specified.
	
	String[] 	splitByWholeSeparator(String str, String separator, int max)
	Splits the provided text into an array, separator string specified.
	
	String[] 	splitByWholeSeparatorPreserveAllTokens(String str, String separator)
	Splits the provided text into an array, separator string specified.
	
	String[] 	splitByWholeSeparatorPreserveAllTokens(String str, String separator, int max)
	Splits the provided text into an array, separator string specified.
	
	String[] 	splitPreserveAllTokens(String str)
	Splits the provided text into an array, using whitespace as the separator, preserving all tokens, including empty tokens created by adjacent separators.
	
	String[] 	splitPreserveAllTokens(String str, char separatorChar)
	Splits the provided text into an array, separator specified, preserving all tokens, including empty tokens created by adjacent separators.
	
	String[] 	splitPreserveAllTokens(String str, String separatorChars)
	Splits the provided text into an array, separators specified, preserving all tokens, including empty tokens created by adjacent separators.
	
	String[] 	splitPreserveAllTokens(String str, String separatorChars, int max)
	Splits the provided text into an array with a maximum length, separators specified, preserving all tokens, including empty tokens created by adjacent separators.
	
	boolean 	startsWith(String str, String prefix)
	Check if a String starts with a specified prefix.
	
	boolean 	startsWithAny(String string, String[] searchStrings)
	Check if a String starts with any of an array of specified strings.
	
	boolean 	startsWithIgnoreCase(String str, String prefix)
	Case insensitive check if a String starts with a specified prefix.
	
	String 	strip(String str)
	Strips whitespace from the start and end of a String.
	
	String 	strip(String str, String stripChars)
	Strips any of a set of characters from the start and end of a String.
	
	String[] 	stripAll(String[] strs)
	Strips whitespace from the start and end of every String in an array.
	
	String[] 	stripAll(String[] strs, String stripChars)
	Strips any of a set of characters from the start and end of every String in an array.
	
	String 	stripEnd(String str, String stripChars)
	Strips any of a set of characters from the end of a String.
	
	String 	stripStart(String str, String stripChars)
	Strips any of a set of characters from the start of a String.
	
	String 	stripToEmpty(String str)
	Strips whitespace from the start and end of a String returning an empty String if null input.
	
	String 	stripToNull(String str)
	Strips whitespace from the start and end of a String returning null if the String is empty ("") after the strip.
	
	String 	substring(String str, int start)
	Gets a substring from the specified String avoiding exceptions.
	
	String 	substring(String str, int start, int end)
	Gets a substring from the specified String avoiding exceptions.
	
	String 	substringAfter(String str, String separator)
	Gets the substring after the first occurrence of a separator.
	
	String 	substringAfterLast(String str, String separator)
	Gets the substring after the last occurrence of a separator.
	
	String 	substringBefore(String str, String separator)
	Gets the substring before the first occurrence of a separator.
	
	String 	substringBeforeLast(String str, String separator)
	Gets the substring before the last occurrence of a separator.
	
	String 	substringBetween(String str, String tag)
	Gets the String that is nested in between two instances of the same String.
	
	String 	substringBetween(String str, String open, String close)
	Gets the String that is nested in between two Strings.
	
	String[] 	substringsBetween(String str, String open, String close)
	Searches a String for substrings delimited by a start and end tag, returning all matching substrings in an array.
	
	String 	swapCase(String str)
	Swaps the case of a String changing upper and title case to lower case, and lower case to upper case.
	
	String 	trimToEmpty(String str)
	Removes control characters (char <= 32) from both ends of this String returning an empty String ("") if the String is empty ("") after the trim or if it is null.
	
	String 	trimToNull(String str)
	Removes control characters (char <= 32) from both ends of this String returning null if the String is empty ("") after the trim or if it is null.
	
	String 	uncapitalize(String str)
	Uncapitalizes a String changing the first letter to title case as per Character.toLowerCase(char).
	
	String 	upperCase(String str)
	Converts a String to upper case as per String.toUpperCase().
	
	String 	upperCase(String str, Locale locale)
	Converts a String to upper case as per String.toUpperCase(Locale).
	*/


	// ---
	// PRIVATE METHODS.
	// ---

}