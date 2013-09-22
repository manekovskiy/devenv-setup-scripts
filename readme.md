# How to use this? #

To start installation process copy and paste following string to command prompt:

>@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ('$user=\"manekovskiy\";$branch=\"master\";(new-object net.webclient).DownloadFile(\"https://raw.github.com/$user/devenv-setup-scripts/$branch/install.ps1\", \"$env:TEMP\install.ps1\");& $env:TEMP\install.ps1 $user $branch')"

This powershell one-liner consists of three parts:

 1. There are two global variables `$user` (github user name) and `$branch` (name of branch of this repository which you want to use as a source of installation scripts).

 These variables are used to define the URI of the **install.ps1** script and should be changed if you forked this repository and using your own set of packages:
>$user=\"manekovskiy\";$branch=\"master\";

 2. Download **install.ps1** script and save it to the `%TEMP%` folder:
>(new-object net.webclient).DownloadFile(\"https://raw.github.com/$user/devenv-setup-scripts/$branch/install.ps1\", \"$env:TEMP\install.ps1\");

 3. Start the installation process by running downloaded **install.ps1** script:
>& $env:TEMP\install.ps1 $user $branch')

# Why do we have **install.ps1** and not just **run-install.ps1**? #

To make installation and configuration scripts really reusable we need to have an additional layer of abstraction over actual scripts. Think about **install.ps1** as of unified starting point for all installation routines (just as it is done in [Chocolatey](http://chocolatey.org/) and many other non-Windows tools and applications).

Also having **install.ps1** makes it easier to maintain and develop installation scripts changes are not necessarily affecting the way of how users are launching the installation process (that "monstrous" powershell one-liner remains unchanged).