funtion get-firstrecurringcharacter {
[CmdletBinding()]
param(
[string] $foo
)
try{
$charar = $foo.ToCharArray()
$tempchar = [char[]]::new($charar.count)
$charar | ForEach{
if($tempchar.contains($_)){
Write-Host "FIrst recurring character is $_"
break
}
else{
$tempchar += $_
}
}
Write-Host "No Recurring character found"
exit 0
}
catch{
Write-Host "Exception Occured $_.Exception.Message"
Exit 1
}
}

get-firstrecurringcharacter -foo 'abcdedcba'
