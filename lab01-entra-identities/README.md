# Lab 01: Manage Microsoft Entra ID Identities

**Exam domain:** Identities and governance
**Covers:** Users and groups, licenses, external users, SSPR
**Source:** [MicrosoftLearning AZ-104 lab set](https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/)

| Run | Date | Time taken |
| --- | --- | --- |
| Portal | 16 Nov 2026 | |
| Script (PowerShell or CLI) | | |

## What it builds

Created member user az104-user1 and an Assigned security group (helpdesk) in the lab tenant (Default Directory). Guest invite skipped.

## Script

- File: `deploy.ps1` (Az PowerShell) or `deploy.sh` (Azure CLI)
- Reads settings from `../config.local.ps1` or `../config.local.sh`
- Run: `./deploy.ps1`

## What broke and how I fixed it

- Inviting a guest with a Gmail plus alias (name+guest@gmail.com) fails with "The Primary SMTP Address is an invalid value". Skipped the guest step; I invite guests regularly at work.

## Cleanup

Nothing billable. az104-user1 and the helpdesk group were kept for later labs.

## Exam notes

- A guest's UPN is their email with `@` replaced by `_`, then `#EXT#@<tenant>.onmicrosoft.com`, because the identity lives outside the tenant.
- **User type** (Member or Guest) is about permissions; **#EXT#** is about where the identity comes from. My own Microsoft account shows #EXT# but is a Member, because it created the tenant.
