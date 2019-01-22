Set-Location C:\work

Import-Module posh-git
Import-Module PSReadLine

Set-Alias -Name gh -Value Get-Help
Set-Alias -Name uh -Value Update-Help
function Open-Profile {
  code $profile.CurrentUserAllHosts
}
