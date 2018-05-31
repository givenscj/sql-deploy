Configuration DeploySQLScript
{
    Import-DscResource -ModuleName cChoco 
    Import-DscResource -ModuleName xNetworking

    param ($machineName)
    param ($url)
    param ($server)
    param ($serverUsername)
    param ($serverPassword)
    param ($databaseName)

    Node $MachineName
    {
        
    }
} 