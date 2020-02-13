[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]
    $resourceGroupName,
    [Parameter(Mandatory=$true)]
    [string]
    $cdnProfileName,
    [Parameter(Mandatory=$true)]
    [string]
    $cdnEndpointName,
    [Parameter(Mandatory=$true)]
    [string]
    $cdnDomainName
)

Enable-AzCdnCustomDomainHttps -ResourceGroupName $resourceGroupName -ProfileName $cdnProfileName -EndpointName $cdnEndpointName -CustomDomainName $cdnDomainName