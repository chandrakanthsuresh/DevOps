
param(
[string] $foo)
try{


exit 0
}
catch{
Write-Host "Exception Occured $_.Exception.Message"
exit 1
}
