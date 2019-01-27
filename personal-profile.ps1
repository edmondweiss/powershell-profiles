Import-Module PSReadLine
Import-Module PowerShellGet
Import-Module posh-git

Set-Variable -Name HOME -Value 'C:\edmond' -Force
Set-Location $HOME

Set-Alias -Name gh -Value Get-Help -Option AllScope
Set-Alias -Name uh -Value Update-Help -Option AllScope
Set-Alias -Name rdir -Value Remove-Directory -Option AllScope
Set-Alias -Name ndir -Value New-Directory -Option AllScope
Set-Alias -Name home -Value Set-Home -Option AllScope

function Remove-Directory {
  Param(
    [Parameter(
      Mandatory = $true,
      ValueFromPipelineByPropertyName = $true
    )]
    [String]
    $Path
  )
  Remove-Item -Path $Path -Recurse -Force
}

function New-Directory {
  Param(
    [Parameter(
      Mandatory = $true,
      ValueFromPipelineByPropertyName = $true
    )]
    [String]
    $Name
  )
  New-Item -Name $Name -ItemType Directory
}

function Set-Home {
  Set-Location $HOME
}
