To start installation process copy and paste following string to command prompt:

>@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object System.Net.WebClient).DownloadFile(\"http://stahlworks.com/dev/unzip.exe\", \"$Env:TEMP\unzip.exe\");(New-Object System.Net.WebClient).DownloadFile(\"https://github.com/manekovskiy/devenv-setup-scripts/archive/master.zip\", \"$Env:TEMP\devenv-setup-scripts-master.zip\");& $Env:TEMP\unzip -o $Env:TEMP\devenv-setup-scripts-master.zip -d $Env:TEMP;& $Env:TEMP\devenv-setup-scripts-master\run-install.cmd \"$Env:TEMP\devenv-setup-scripts-master\""

This powershell one-liner is actually 4 commands:

 1. Download `unzip.exe` utility and save it to the `%TEMP%` folder: 
>(New-Object System.Net.WebClient).DownloadFile("http://stahlworks.com/dev/unzip.exe", "$Env:TEMP\unzip.exe")

 2. Download master branch as a zip archive and save it to the `%TEMP%` folder:
>(New-Object System.Net.WebClient).DownloadFile("https://github.com/manekovskiy/devenv-setup-scripts/archive/master.zip", "$Env:TEMP\devenv-setup-scripts-master.zip")

 3. Extract contents of downloaded archive with overwrite flag:
>& $Env:TEMP\unzip -o $Env:TEMP\devenv-setup-scripts-master.zip -d $Env:TEMP

 4. Execute `run-install.cmd` batch script:
>& $Env:TEMP\devenv-setup-scripts-master\run-install.cmd "$Env:TEMP\devenv-setup-scripts-master"
