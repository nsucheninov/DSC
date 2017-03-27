Configuration RunScript
{
	Param (
		[string]$NodeName = "localhost"
	)
	
    Import-DscResource –ModuleName PSDesiredStateConfiguration

	Node $NodeName
	{
		Script DownloadFile
		{
			
			TestScript = { $false }
			SetScript ={
				$dest = "C:\WindowsAzure\TestScript.ps1.zip"
			}
			GetScript = {@{Result = "bla bla 4"}}
			
		}
	}
}