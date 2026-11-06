# Lab 03: Manage Azure resources by using ARM Templates

**Exam domain:** Compute
**Covers:** Interpret, modify, deploy and export ARM templates and Bicep files
**Source:** [MicrosoftLearning AZ-104 lab set](https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/)

| Run | Date | Time taken |
| --- | --- | --- |
| Portal | | |
| Script (PowerShell or CLI) | | |

## What it builds

_One or two sentences on the end state._

## Script

- File: `deploy.ps1` (Az PowerShell) or `deploy.sh` (Azure CLI)
- Reads settings from `../config.local.ps1` or `../config.local.sh`
- Run: `./deploy.ps1`

## What broke and how I fixed it

-

## Cleanup

```powershell
Remove-AzResourceGroup -Name <rg-name> -Force
```

## Exam notes

_Anything that surprised me or is likely to show up on the exam._
