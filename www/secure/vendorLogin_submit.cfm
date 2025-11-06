<cfscript>
    //super secure ;)
    secure_pepper_string = fileRead('/secure/.global.pepper', 'utf-8');
    writeOutput(secure_pepper_string); 
</cfscript>
