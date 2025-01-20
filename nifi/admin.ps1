function Read-InitCredential {
    Select-String Generated logs/nifi-app*log
}
function Start {
    .\bin\nifi.cmd start
    
}