$smtpserver = "smtpserver"
$erroremail = "reports@labtest.com"
$from = "DoNotRespond @labtest.com"
try {
    # Code that might throw an error
    Get-Item "C:\InvalidPath"
} catch {
    $exception = $_.Exception.Message
    # Handling the error if an exception occurs
    Write-Error "An error occurred: $_"
    Send-MailMessage -SmtpServer $smtpserver -From $from -To $erroremail -Subject "Error -Message" -Body $exception
}
