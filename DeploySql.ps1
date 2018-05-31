param (
    [Parameter(Mandatory=$true)]
    [string]
    $sqlServer,

    [Parameter(Mandatory=$true)]
    [string]
    $database,

    [Parameter(Mandatory=$true)]
    [string]
    $username,

    [Parameter(Mandatory=$true)]
    [string]
    $password,

    [Parameter(Mandatory=$true)]
    [string]
    $url
)

function DeploySQLScript($url)
{
    #get the sql script
    $wc = new-object Net.WebClient;
    $sql = $wc.DownloadString($url); 

    write-output "Executing SQL [$sql]";    

    #create the connection string...
    $connStr = "server=$sqlserver;uid=$username;pwd=$password;initial catalog=$database";

    #connect and execute...    
    $Conn = new-object System.Data.SqlClient.SqlConnection($connstr);
    $conn.open();

    try
    {
        $cmd = $conn.createcommand();
        $cmd.CommandText = $sql;
        $cmd.ExecutenonQuery();
    }
    catch
    {
        write-output $_.Exception.Message;
    }

    $conn.close();

    write-output "Completed.";
}

DeploySQLScript $url;
