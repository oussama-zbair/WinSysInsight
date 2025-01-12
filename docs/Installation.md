# Installation Guide

## Quick Installation
Run the following commands in PowerShell:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -Uri https://github.com/oussama-zbair/WinSysInsight/raw/main/scripts/setup.ps1 -OutFile setup.ps1
.\setup.ps1
