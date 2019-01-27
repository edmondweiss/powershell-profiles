param(
  [Parameter(Mandatory = $true)]
  [String]
  $ScriptName,

  [Parameter()]
  [String]
  $Destination = (Split-Path $PROFILE.currentUserAllHosts -Parent),

  [Parameter()]
  [String]
  $NewScriptName = 'profile.ps1'
)

$hasDestinationPath = Test-Path $Destination -PathType Container
if (!$hasDestinationPath) {
  Write-Host "The destination path $Destination is invalid."
  exit
}

$ScriptName = Split-Path $ScriptName -Leaf
$scriptLocation = "$PSScriptRoot\$ScriptName"
$hasScript = Test-Path $scriptLocation
if (!$hasScript) {
  Write-Host "The script ($ScriptName) does not exist at $PSScriptRoot."
  exit
}

$scriptCopy = Copy-Item $scriptLocation "$PSScriptRoot\$NewScriptName" -PassThru
$Destination = Resolve-Path $Destination
if ($Destination -ne $scriptCopy.DirectoryName) {
  Remove-Item -Path "$Destination\$NewScriptName" -ErrorAction SilentlyContinue
}

Move-Item -Path $scriptCopy -Destination $Destination
