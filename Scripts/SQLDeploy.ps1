Configuration DeploySQLScript
{
	Import-Module SqlServerDsc;
	
  Param 
  (
	  $url,
	  $server,
	  $serverUsername,
	  $serverPassword,
	  $databaseName
  )

  Node Localhost
  {   
	SqlServerLogin Login
	{
	
	}
     
	 SqlScript ScriptToRun
	 {
	 
	 }	
  }
} 