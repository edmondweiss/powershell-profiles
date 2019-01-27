# PowerShell Profiles
PowerShell Profiles is a repository containing PowerShell profiles which I use for different environments.

## Prerequisites
* The following scripts require PowerShell v5.1.

## Usage
The profiles scripts must renamed to _profile.ps1_ and be placed in the directory designated by the global PowerShell variable `$PROFILE.CurrentUserAllHosts`. A profile can be manually copied over or instead the _migrator.ps1_ script can be used to automatically copy the script to the appropriate profile location for PowerShell. By default, the _migrator.ps1_ script will copy a specified script in the current repository to `$PROFILE.CurrentUserAllHosts` and rename the script to _profile.ps1_. The destination of the script and the new name of the script can be changed.

## Author
Edmond Weiss
