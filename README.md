# Installation Guide on Windows

This guide will help you install Flutter on a Windows machine using Chocolatey, a package manager for Windows. You'll start by installing Chocolatey, then Git, and finally Flutter.

## Step 1: Install Chocolatey

Chocolatey is a package manager for Windows that simplifies the installation of software. To install Chocolatey, open PowerShell as Administrator and run the following command:

```powershell
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
