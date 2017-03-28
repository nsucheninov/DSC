# Test DSC with script resource

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnsucheninov%2FDSC%2Fmaster%2F001-Script-Resource%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fnsucheninov%2FDSC%2Fmaster%2F001-Script-Resource%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>


This template applies a DSC extension to the existing Azure VM.
The extension uses a script resource that does the following:
1.	Download zip file from URL
2.	Extract content to the folder
3.	Delete zip file

A few remarks:
1.	If you update the DSC script, you should change the forceUpdateTag properties in the template. Otherwise, DSC will ignore the changes
2.	To use parameters from the Param block in the SetScript block of the Script resource, you have to use Using scope modifier. For example, $using:sourceUrl
3.	Don’t forget to double back slash in a UNC path when you define it in a JSON template
