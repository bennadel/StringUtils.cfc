
# StringUtils.cfc

by [Ben Nadel][bennadel] (on [Google+][googleplus])

A while back, I happened to come across this [StringUtils Java Library][javalib]. A number of the
methods in the library are native to ColdFusion; however, many of them are not. I thought it would
be a fun "code kata" to try an recreate this String Utils library as a ColdFusion functions. To be
honest, __I've been working a _lot_ lately__ and I thought this would be a fun little mental 
vacation; a little bit of "therapy," if you will.

Here is a list of the functions in the String Utils library (that I will be reproducing, or at 
least trying to reproduce). Since ColdFusion doesn't support like-named functions with different 
signatures, the multi-signature functions will have to be collapsed into one function with 
internal routing logic based on the arguments.

_**NOTE:** In some cases, I'll have to change the function names in the ColdFusion version of the
library since they conflict with built-in functions or operator names (ex, "contains" will have
to become something like "containsSubstring" )._

* __abbreviate__( String str, int maxWidth ) :: String
* __abbreviate__( String str, int offset, int maxWidth ) :: String
* __abbreviateMiddle__( String str, String middle, int length ) :: String
* __capitalize__( String str ) :: String
* __center__( String str, int size ) :: String
* __center__( String str, int size, char padChar ) :: String
* __center__( String str, int size, String padStr ) :: String
* __chomp__( String str ) :: String
* __chomp__( String str, String separator ) :: String
* __chop__( String str ) :: String
* __contains__( String str, char searchChar ) :: boolean *[RENAMED]*
* __contains__( String str, String searchStr ) :: boolean *[RENAMED]*
* __containsAny__( String str, char[] searchChars ) :: boolean *[RENAMED]*
* __containsAny__( String str, String searchChars ) :: boolean *[RENAMED]*
* __containsIgnoreCase__( String str, String searchStr ) :: boolean
* __containsNone__( String str, char[] searchChars ) :: boolean
* __containsNone__( String str, String invalidChars ) :: boolean
* __containsOnly__( String str, char[] valid ) :: boolean
* __containsOnly__( String str, String validChars ) :: boolean
* __countMatches__( String str, String sub ) :: int
* __defaultIfBlank__( String str, String defaultStr ) :: String
* __defaultIfEmpty__( String str, String defaultStr ) :: String
* __defaultString__( String str ) :: String
* __defaultString__( String str, String defaultStr ) :: String
* __deleteWhitespace__( String str ) :: String
* __difference__( String str1, String str2 ) :: String
* __endsWith__( String str, String suffix ) :: boolean
* __endsWithAny__( String string, String[] searchStrings ) :: boolean
* __endsWithIgnoreCase__( String str, String suffix ) :: boolean
* __equals__( String str1, String str2 ) :: boolean
* __equalsIgnoreCase__( String str1, String str2 ) :: boolean
* __getCommonPrefix__( String[] strs ) :: String
* __getLevenshteinDistance__( String s, String t ) :: int
* __indexOf__( String str, char searchChar ) :: int
* __indexOf__( String str, char searchChar, int startPos ) :: int
* __indexOf__( String str, String searchStr ) :: int
* __indexOf__( String str, String searchStr, int startPos ) :: int
* __indexOfAny__( String str, char[] searchChars ) :: int
* __indexOfAny__( String str, String searchChars ) :: int
* __indexOfAny__( String str, String[] searchStrs ) :: int
* __indexOfAnyBut__( String str, char[] searchChars ) :: int
* __indexOfAnyBut__( String str, String searchChars ) :: int
* __indexOfDifference__( String[] strs ) :: int
* __indexOfDifference__( String str1, String str2 ) :: int
* __indexOfIgnoreCase__( String str, String searchStr ) :: int
* __indexOfIgnoreCase__( String str, String searchStr, int startPos ) :: int
* __isAllLowerCase__( String str ) :: boolean
* __isAllUpperCase__( String str ) :: boolean
* __isAlpha__( String str ) :: boolean
* __isAlphanumeric__( String str ) :: boolean
* __isAlphanumericSpace__( String str ) :: boolean
* __isAlphaSpace__( String str ) :: boolean
* __isAsciiPrintable__( String str ) :: boolean
* __isBlank__( String str ) :: boolean
* __isEmpty__( String str ) :: boolean
* __isNotBlank__( String str ) :: boolean
* __isNotEmpty__( String str ) :: boolean
* __isNumeric__( String str ) :: boolean
* __isNumericSpace__( String str ) :: boolean
* __isWhitespace__( String str ) :: boolean
* __join__( Collection collection, char separator ) :: String
* __join__( Collection collection, String separator ) :: String
* __join__( Iterator iterator, char separator ) :: String
* __join__( Iterator iterator, String separator ) :: String
* __join__( Object[] array ) :: String
* __join__( Object[] array, char separator ) :: String
* __join__( Object[] array, char separator, int startIndex, int endIndex ) :: String
* __join__( Object[] array, String separator ) :: String
* __join__( Object[] array, String separator, int startIndex, int endIndex ) :: String
* __lastIndexOf__( String str, char searchChar ) :: int
* __lastIndexOf__( String str, char searchChar, int startPos ) :: int
* __lastIndexOf__( String str, String searchStr ) :: int
* __lastIndexOf__( String str, String searchStr, int startPos ) :: int
* __lastIndexOfAny__( String str, String[] searchStrs ) :: int
* __lastIndexOfIgnoreCase__( String str, String searchStr ) :: int
* __lastIndexOfIgnoreCase__( String str, String searchStr, int startPos ) :: int
* __lastOrdinalIndexOf__( String str, String searchStr, int ordinal ) :: int
* __left__( String str, int len ) :: String
* __leftPad__( String str, int size ) :: String
* __leftPad__( String str, int size, char padChar ) :: String
* __leftPad__( String str, int size, String padStr ) :: String
* __length__( String str ) :: int
* __lowerCase__( String str ) :: String
* __lowerCase__( String str, Locale locale ) :: String
* __mid__( String str, int pos, int len ) :: String
* __normalizeSpace__( String str ) :: String
* __ordinalIndexOf__( String str, String searchStr, int ordinal ) :: int
* __overlay__( String str, String overlay, int start, int end ) :: String
* __remove__( String str, char remove ) :: String
* __remove__( String str, String remove ) :: String
* __removeEnd__( String str, String remove ) :: String
* __removeEndIgnoreCase__( String str, String remove ) :: String
* __removeStart__( String str, String remove ) :: String
* __removeStartIgnoreCase__( String str, String remove ) :: String
* __repeat__( String str, int repeat ) :: String
* __repeat__( String str, String separator, int repeat ) :: String
* __replace__( String text, String searchString, String replacement ) :: String
* __replace__( String text, String searchString, String replacement, int max ) :: String
* __replaceChars__( String str, char searchChar, char replaceChar ) :: String
* __replaceChars__( String str, String searchChars, String replaceChars ) :: String
* __replaceEach__( String text, String[] searchList, String[] replacementList ) :: String
* __replaceEachRepeatedly__( String text, String[] searchList, String[] replacementList ) :: String
* __replaceOnce__( String text, String searchString, String replacement ) :: String
* __reverse__( String str ) :: String
* __reverseDelimited__( String str, char separatorChar ) :: String
* __right__( String str, int len ) :: String
* __rightPad__( String str, int size ) :: String
* __rightPad__( String str, int size, char padChar ) :: String
* __rightPad__( String str, int size, String padStr ) :: String
* __split__( String str ) :: String[]
* __split__( String str, char separatorChar ) :: String[]
* __split__( String str, String separatorChars ) :: String[]
* __split__( String str, String separatorChars, int max ) :: String[]
* __splitByCharacterType__( String str ) :: String[]
* __splitByCharacterTypeCamelCase__( String str ) :: String[]
* __splitByWholeSeparator__( String str, String separator ) :: String[]
* __splitByWholeSeparator__( String str, String separator, int max ) :: String[]
* __splitByWholeSeparatorPreserveAllTokens__( String str, String separator ) :: String[]
* __splitByWholeSeparatorPreserveAllTokens__( String str, String separator, int max ) :: String[]
* __splitPreserveAllTokens__( String str ) :: String[]
* __splitPreserveAllTokens__( String str, char separatorChar ) :: String[]
* __splitPreserveAllTokens__( String str, String separatorChars ) :: String[]
* __splitPreserveAllTokens__( String str, String separatorChars, int max ) :: String[]
* __startsWith__( String str, String prefix ) :: boolean
* __startsWithAny__( String string, String[] searchStrings ) :: boolean
* __startsWithIgnoreCase__( String str, String prefix ) :: boolean
* __strip__( String str ) :: String
* __strip__( String str, String stripChars ) :: String
* __stripAll__( String[] strs ) :: String[]
* __stripAll__( String[] strs, String stripChars ) :: String[]
* __stripEnd__( String str, String stripChars ) :: String
* __stripStart__( String str, String stripChars ) :: String
* __stripToEmpty__( String str ) :: String
* __stripToNull__( String str ) :: String
* __substring__( String str, int start ) :: String
* __substring__( String str, int start, int end ) :: String
* __substringAfter__( String str, String separator ) :: String
* __substringAfterLast__( String str, String separator ) :: String
* __substringBefore__( String str, String separator ) :: String
* __substringBeforeLast__( String str, String separator ) :: String
* __substringBetween__( String str, String tag ) :: String
* __substringBetween__( String str, String open, String close ) :: String
* __substringsBetween__( String str, String open, String close ) :: String[]
* __swapCase__( String str ) :: String
* __trim__( String str ) :: String
* __trimToEmpty__( String str ) :: String
* __trimToNull__( String str ) :: String
* __uncapitalize__( String str ) :: String
* __upperCase__( String str ) :: String
* __upperCase__( String str, Locale locale ) :: String

Groove sauce!


[bennadel]: http://www.bennadel.com
[googleplus]: https://plus.google.com/108976367067760160494?rel=author
[javalib]: http://commons.apache.org/proper/commons-lang/javadocs/api-2.6/org/apache/commons/lang/StringUtils.html