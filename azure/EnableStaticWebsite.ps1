[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]
    $resourceGroupName,
    [Parameter(Mandatory=$true)]
    [string]
    $storageAccountName,
    [Parameter(Mandatory=$true)]
    [string]
    $indexDocument,
    [Parameter(Mandatory=$true)]
    [string]
    $errorDocument
)

$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -AccountName $storageAccountName
$context = $storageAccount.Context

Enable-AzStorageStaticWebsite -Context $context -IndexDocument $indexDocument -ErrorDocument404Path $errorDocument