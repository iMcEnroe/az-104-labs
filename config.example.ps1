# Copy this file to config.local.ps1 and fill in your values.
# config.local.ps1 is ignored by git. Never commit real IDs or passwords.

$SubscriptionId = '00000000-0000-0000-0000-000000000000'
$TenantId       = '00000000-0000-0000-0000-000000000000'
$Location       = 'eastus'
$Prefix         = 'az104'   # used in resource group and resource names

# Usage at the top of a lab script:
#   . "$PSScriptRoot/../config.local.ps1"
#   Set-AzContext -Subscription $SubscriptionId -Tenant $TenantId
