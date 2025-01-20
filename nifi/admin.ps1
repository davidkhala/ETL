function Read-InitCredential {
    Select-String Generated logs/nifi-app*log
}
function Set-Root {
    # Setup root user
    $credential = Get-Credential # Get credentials from user input

    .\bin\nifi.cmd SetSingleUserCredentials $credential.UserName $credential.Password

}
function Start {
    .\bin\nifi.cmd start
    
}