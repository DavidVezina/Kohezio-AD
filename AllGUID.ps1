$GUID = Get-Content -Path "C:\temp\GUID.txt"

foreach ($userGUID in $GUID) {
$aad_immutableid = "$userGUID"
$targetConsistencyGuid = [Convert]::FromBase64String($aad_immutableid)
$targetConsistencyGuid_string = $targetConsistencyGuid -join ' '
write-host $targetConsistencyGuid_string
}
