# Test DSC with script resource

I got an error "Cannot validate argument on parameter 'GetScript'. The argument is null or empty.", when I ran this script for the first time. The cause of the error was apiVersion. My template had apiVersion set to "2015-05-01-preview". When I changed apiVersion to "2015-06-15" the script was succeeded.
