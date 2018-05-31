$subscriptionId = "6581839d-0fab-410a-9241-d79b93fdfe38"
$templateFilePath = "C:\github\sql-deploy\AzureTemplates\template-sqlupdate.json"
$parametersFilePath = "C:\github\sql-deploy\AzureTemplates\parameters.json"
$resourceGroupName = "DevOps-SQL"

# sign in
#Login-AzureRmAccount;

# select subscription
Select-AzureRmSubscription -SubscriptionID $subscriptionId;

# Start the deployment
$deployment = New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFilePath -TemplateParameterFile $parametersFilePath;