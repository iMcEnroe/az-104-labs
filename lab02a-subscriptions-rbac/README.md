# Lab 02a: Manage Subscriptions and RBAC

**Exam domain:** Identities and governance
**Covers:** Management groups, built-in and custom roles, role assignments at different scopes
**Source:** [MicrosoftLearning AZ-104 lab set](https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/)

| Run | Date | Time taken |
| --- | --- | --- |
| Portal | 16 Nov 2026 | |
| Script (PowerShell or CLI) | | |

## What it builds

Management group az104-mg1 under the Tenant Root Group, Virtual Machine Contributor assigned to the helpdesk group at that scope, and a custom role "Custom Support Request" (cloned from Support Request Contributor, minus registering the support resource provider) assignable at az104-mg1. Checked all three in the management group's Activity Log.

## Script

- File: `deploy.ps1` (Az PowerShell) or `deploy.sh` (Azure CLI)
- Reads settings from `../config.local.ps1` or `../config.local.sh`
- Run: `./deploy.ps1`

## What broke and how I fixed it

- The helpdesk group didn't exist yet; the lab expects you to create it (Security, Assigned).
- The lab says to make the assignment **Eligible**. Eligible assignments need PIM, which needs Entra ID P2, so I used **Active**.

## Cleanup

In order: remove the helpdesk role assignment, delete the custom role (it can't be deleted while assigned), delete az104-mg1, then set Entra ID > Properties > Access management for Azure resources back to **No**.

## Exam notes

- "Access management for Azure resources" elevates a Global Admin to **User Access Administrator at root scope (/)**. The portal flags it with an "Action required" banner. Break-glass only; switch it off after use.
- Whoever creates a management group automatically gets **Owner** on it (shown in the Activity Log as initiated by "Azure Management Groups").
- Assignments inherit down: root, management group, subscription, resource group, resource.
