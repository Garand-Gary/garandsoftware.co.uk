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
    $cdnEndpointName
)

$ruleCondition = New-AzCdnDeliveryRuleCondition -MatchVariable 'RequestScheme' -Operator Equal -MatchValue "HTTP"
$ruleAction = New-AzCdnDeliveryRuleAction -RedirectType Found -DestinationProtocol Https
$rule = New-AzCdnDeliveryRule -Name "HttpsRedirect" -Order 1 -Condition $RuleCondition -Action $RuleAction
$policy = New-AzCdnDeliveryPolicy -Description "RedirectPolicy" -Rule $rule
$endpoint = Get-AzCdnEndpoint -ProfileName $cdnProfileName -EndpointName $cdnEndpointName -ResourceGroupName $resourceGroupName
$endpoint.DeliveryPolicy = $policy

Set-AzCdnEndpoint -CdnEndpoint $endpoint