[CmdletBinding()]
param (
    [string]
    $resourceGroupName,
    [string]
    $cdnProfileName,
    [string]
    $cdnEndpointName,
    [string]
    $cdnDomainName
)

Enable-AzCdnCustomDomainHttps -ResourceGroupName $resourceGroupName -ProfileName $cdnProfileName -EndpointName $cdnEndpointName -CustomDomainName $cdnDomainName