Write-Host "This Installer will install OSDAG, while also installing Miniconda and MiKTEX"
Write-Host "If you already have any of the above software, you can uninstall them before this installation process (To stop now, press Ctrl + C)"
Write-Host ""
Write-Host "There are a few things to remember and follow during the Installation Process, you can also find this in README.txt"
Write-Host ""
Write-Host "1. You will need Internet connection during the installation process."
Write-Host "2. While installing miniconda, make sure to add PATH to environment variables, It is not recommended by Anaconda but by registering the path is necessary to download OSDAG"
Write-Host "3. Please UN-CHECK all the links in the final page of the installation wizard."
Write-Host "4. While installing MiKTeX, make sure to DISABLE the check for updates, to continue with installation, and make sure to UN-CHECK the tell me more box."
Write-Host "5. If you have any queries or doubts, refer the README.txt file to know more."
Write-Host ""
Write-Host "Thank You!!"

# Install Miniconda
$minicondaInstallerUrl = "https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe"
$minicondaInstaller = "Miniconda3-latest-Windows-x86_64.exe"

# Download Miniconda installer
Write-Host "Downloading Miniconda..."
Invoke-WebRequest -Uri $minicondaInstallerUrl -OutFile $minicondaInstaller

Write-Host "..."
Write-Host "Download Complete"
Write-Host " "

# Run Miniconda installer silently
Write-Host "Installing Miniconda..."
Start-Process -FilePath $minicondaInstaller -ArgumentList "/quiet" -Wait

Write-Host "..."
Write-Host "Installation Complete"
Write-Host " "

# Clean up installer
Remove-Item -Force $minicondaInstaller

# Install MiKTeX

# Specify the installer file name
$miktexInstaller = "basic-miktex-24.1-x64.exe"
$miktexInstallerURL = "https://miktex.org/download/ctan/systems/win32/miktex/setup/windows-x64/basic-miktex-24.1-x64.exe"

# Downloading miKTeX Installer
Write-Host "Downloading miKTeX Installer"
Invoke-WebRequest -Uri $miktexInstallerURL -OutFile $miktexInstaller

Write-Host "..."
Write-Host "Download Complete"
Write-Host " "

# Run MiKTeX installer silently
Write-Host "Installing MiKTeX..."
Start-Process -FilePath $miktexInstaller -ArgumentList "/quiet" -Wait

Write-Host "..."
Write-Host "Installation Complete"
Write-Host " "


# Clean up installer
Remove-Item -Force $miktexInstaller

# Get the current directory
#$currentDir = Get-Location

# Define a relative path
#$relativePath = "osdagI.ps1"

# Combine the current directory with the relative path to get the full path
#$fullPath = Join-Path -Path $currentDir -ChildPath $relativePath

# Start a new PowerShell window and execute a script or commands
#Start-Process powershell.exe -ArgumentList "-NoExit", "-File", $fullPath

# Updating the env variables to include conda
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# Install required Python packages (optional)
Write-Host "Installing required Python packages with conda..."
conda install -y numpy scipy pandas pyyaml wheel

# Install OSDAg
# Download OSDAg installer
Write-Host "Downloading OSDAG..."
conda create -n osdag-env osdag::osdag -c conda-forge

Write-Host "OSDAG Installation Complete"

Write-Host ""
Write-Host ""

Write-Host "Please Run the openOSDAG.bat file to open OSDAG"
Write-Host "Please dont close the Command Prompt window that opens up after running openOSDAG.bat"
Write-Host ""
Write-Host "Thank You!!"