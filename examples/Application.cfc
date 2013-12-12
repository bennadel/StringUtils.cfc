component
	output = false
	hint = "I define the application settings and event handlers."
	{

	// Define the application settings.
	this.name = hash( getCurrentTemplatePath() );
	this.applicationTimeout = createTimeSpan( 0, 0, 10, 0 );
	this.sessionManagement = false;

	// Get the various directories needed for mapping.
	this.directory = getDirectoryFromPath( getCurrentTemplatePath() );
	this.projectDirectory = ( this.directory & "../" );

	// Map the library so we can instantiate components.
	this.mappings[ "/lib" ] = ( this.projectDirectory & "lib/" );

}