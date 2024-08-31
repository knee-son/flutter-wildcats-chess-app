## Installation Guide on Windows

This guide will help you install Flutter on a Windows machine using Chocolatey, a package manager for Windows. You'll start by installing Chocolatey, then Git, and finally Flutter.

### Step 1: Install Chocolatey

Chocolatey is a package manager for Windows that simplifies the installation of software. To install Chocolatey, open PowerShell as Administrator and run the following command:

```powershell
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

### Step 2: Install Git
Flutter requires Git for managing its repository. You can install Git using Chocolatey with the following command:
```powershell
choco install git
```

Adding Git to the System PATH
If Git is not automatically added to your system's PATH, follow these steps:

1. Press Win + R, type sysdm.cpl, and press Enter.
2. Go to the "Advanced" tab and click "Environment Variables."
3. Under "System variables," find and select the Path variable, then click "Edit."
4. Click "New" and add the following paths (adjust if your Git installation directory differs):
`C:\Program Files\Git\bin`
`C:\Program Files\Git\cmd`
5. Click "OK" to save the changes.

### Step 3: Install Flutter
With Git installed, you can now install Flutter using Chocolatey:
```powershell
choco install flutter
```

Git should also know that Flutter's directory, installed via Chocolatey, is a safe directory. So we declare this:
```powershell
git config --global --add safe.directory C:/tools/flutter
```