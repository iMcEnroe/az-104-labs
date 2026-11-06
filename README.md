# az-104-labs

Hands-on AZ-104 labs, built in the portal then scripted in PowerShell (Az) and Azure CLI.

I'm working toward the Microsoft Certified: Azure Administrator Associate (AZ-104). Each lab is done twice: first by hand in the Azure portal, then again as a script, so the result is repeatable. Each folder has the script and notes on what broke and how I fixed it.

## Labs

| Lab | Topic | Exam domain | Status |
| --- | --- | --- | --- |
| [Lab 01](lab01-entra-identities/) | Manage Microsoft Entra ID Identities | Identities and governance | Not started |
| [Lab 02a](lab02a-subscriptions-rbac/) | Manage Subscriptions and RBAC | Identities and governance | Not started |
| [Lab 02b](lab02b-azure-policy/) | Manage Governance via Azure Policy | Identities and governance | Not started |
| [Lab 03](lab03-arm-bicep/) | Manage Azure resources by using ARM Templates | Compute | Not started |
| [Lab 04](lab04-virtual-networking/) | Implement Virtual Networking | Networking | Not started |
| [Lab 05](lab05-intersite-connectivity/) | Implement Intersite Connectivity | Networking | Not started |
| [Lab 06](lab06-traffic-management/) | Implement Network Traffic Management | Networking | Not started |
| [Lab 07](lab07-storage/) | Manage Azure storage | Storage | Not started |
| [Lab 08](lab08-virtual-machines/) | Manage Virtual Machines | Compute | Not started |
| [Lab 09a](lab09a-web-apps/) | Implement Web Apps | Compute | Not started |
| [Lab 09b](lab09b-container-instances/) | Implement Azure Container Instances | Compute | Not started |
| [Lab 09c](lab09c-container-apps/) | Implement Azure Container Apps | Compute | Not started |
| [Lab 10](lab10-data-protection/) | Implement Data Protection | Monitor and maintain | Not started |
| [Lab 11](lab11-monitoring/) | Implement Monitoring | Monitor and maintain | Not started |

## Extras

| Lab | Topic | Exam domain | Status |
| --- | --- | --- | --- |
| [Extra](extra-hub-spoke-s2s-vpn/) | Hub-and-spoke network with site-to-site VPN to the home lab | Networking | Not started |
| [Extra](extra-azure-arc/) | Azure Arc on a home lab VM | Monitor and maintain | Not started |

## How the scripts work

1. Copy `config.example.ps1` to `config.local.ps1` (or `config.example.sh` to `config.local.sh`) and fill in your own values.
2. `config.local.*` is in `.gitignore`, so subscription IDs, tenant IDs and passwords never get committed.
3. Each lab deploys into its own resource group, which is deleted when the lab is done.

## Tools

- [Az PowerShell module](https://learn.microsoft.com/powershell/azure/install-azure-powershell)
- [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli)
- Or Azure Cloud Shell, which has both

## References

- [AZ-104 study guide](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-104)
- [MicrosoftLearning AZ-104 labs](https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/)
