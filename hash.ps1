# MandatoryArgs
# example usage call the script and provide the environment
# hash.ps1 -env "dev"
# https://www.tutorialspoint.com/powershell/powershell_hashtables.htm
# https://www.addictivetips.com/windows-tips/fix-running-scripts-is-disabled-on-this-system-powershell-on-windows-10/
param([Parameter(Mandatory=$true)] $env)

$hash = [ordered]@{
    value1 = "value1"
    value2 = "value2"
    value3 = "value3"
    value4 = "value4"
    value5 = "value5"
  }
  
  switch($env){
    "dev"  { $hash.color = "yellow" }
    "acc"  { $hash.color = "red" }
    "prod" { $hash.color = "blue" }
  }
  
  foreach ($i in $hash.GetEnumerator()) {
        Write-Output ($i.Name + " " + $i.Value)
  }
