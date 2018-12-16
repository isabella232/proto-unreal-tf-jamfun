$ProcessExe = "WebRTCProxy_x64_Development.exe"
# No default arguments require right now
$Arguments = @()
# Add arguments passed to script to Arguments for executable
$Arguments += $args

Write-Output "Running: $ProcessExe $Arguments"
# Start-Process does not handle an empty -ArgumentList, so if it's empty don't pass that parameter
if($Arguments.count -gt 0){
    Start-Process -FilePath $ProcessExe -ArgumentList $Arguments
} else {
    Start-Process -FilePath $ProcessExe
}