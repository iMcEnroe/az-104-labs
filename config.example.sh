# Copy this file to config.local.sh and fill in your values.
# config.local.sh is ignored by git. Never commit real IDs or passwords.

SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
TENANT_ID="00000000-0000-0000-0000-000000000000"
LOCATION="eastus"
PREFIX="az104"   # used in resource group and resource names

# Usage at the top of a lab script:
#   source "$(dirname "$0")/../config.local.sh"
#   az account set --subscription "$SUBSCRIPTION_ID"
