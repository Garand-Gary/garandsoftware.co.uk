[CmdletBinding()]
param (
    [string]
    $resourceGroupName,
    [string]
    $storageAccountName,
    [string]
    $indexDocument,
    [string]
    $errorDocument
)

$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -AccountName $storageAccountName
$context = $storageAccount.Context

Enable-AzStorageStaticWebsite -Context $context -IndexDocument $indexDocument -ErrorDocument404Path $errorDocument