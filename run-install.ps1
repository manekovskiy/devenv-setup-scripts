param([String]$scriptsFolder)

# Install Chocolatey
$chocolateyInstallScript = Join-Path $scriptsFolder "install-chocolatey.cmd"
& $chocolateyInstallScript

# Visual Studio and extensions
cinstm VisualStudio2012Ultimate

cinstm resharper -Version 7.1.3000.2254
cinstm resharper-nuget # makes resharper invoke NuGet when adding reference to an assembly in a NuGet package
cinstm WebEssentials2012
cinstm AnkhSvn # Subversion Source Control Provider

# Browsers
cinstm Firefox
cinstm GoogleChrome

# Tools
cinstm fiddler
cinstm linqpad4
cinstm expresso
cinstm curl
cinstm MetroStudio # Metro Studio - advanced icon editor

# Utilities
cinstm 7zip
cinstm tortoisesvn -Version 1.7.12 # I need this specific version.. don't ask why

cinstm procexp # Process Explorer
cinstm procmon # Process Monitor

cinstm console2
cinstm cyg-get # utility to install Cygwin packages and dependencies

cinstm filezilla
cinstm dropbox

cinstm notepadplusplus	# Notepad++
cinstm adobereader		# Adobe Reader

# IM
cinstm skype