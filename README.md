# Wildcats Chess Club all-in-one Chess App ♟️

The Chess Club of Cebu Institute of Technology - University welcomes everyone with its exciting chess app!
Ever have the hassle of installing too many apps as a chess player?
No worries! We have the right app just for you!
Our Wildcats Chess app has all the tools you need:
- Tournament manager for Swiss or Round-Robin systems.
- Built-in chess clock with adjustable time format.
- Compete your rating against the leaderboard of our top teknoys!
- View our latest record of tournament, games, and results.

<h1>
  <img src="https://user-images.githubusercontent.com/25181517/186150365-da1eccce-6201-487c-8649-45e9e99435fd.png" alt="Flutter Logo" height="40em"/>
  Be part of us in maintaining the app!
</h1>

<h2>
  <img src="https://skillicons.dev/icons?i=windows" alt="Windows Logo" height="30em"/>
  Dev Guide for Windows
</h2>

This guide will help you install Flutter on a Windows machine using Chocolatey, a package manager for Windows. You'll start by installing Chocolatey, then Git, and finally Flutter.

### Step 1: Install Chocolatey

Chocolatey is a package manager for Windows that simplifies the installation of software. To install Chocolatey, open PowerShell as Administrator and run the following command:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### Step 2: Install Flutter
You can now install Flutter using Chocolatey:
```powershell
choco install flutter
```

### Step 3: Clone Repository
We're ready to clone the repository. Go to any folder (preferrably your working folder). Open cmd and run:
```powershell
git clone https://github.com/knee-son/flutter-wildcats-chess-app.git
```

Git should also know that Flutter's directory, installed via Chocolatey, is a safe directory. So we declare this:
```powershell
git config --global --add safe.directory C:/tools/flutter
```
