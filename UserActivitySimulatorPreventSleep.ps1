$start = $false
$end = $false

Write-Host "This will simulate user activity on this PC hence preventing Away Status.`nOnly For Educational Purpose. I don't encourage use of this script to misuse in any form. `nPress 's' to start the program and 'e' to end the program"
$wshell = New-Object -ComObject WScript.Shell
while ($true) {
    $key = [Console]::ReadKey()

    if ($key.Key -eq "S") {
        $start = $true
    }

    if ($key.Key -eq "E") {
        $end = $true
    }

    if ($start -and -not $end) {
        Write-Host "Program running..."
            $wshell.SendKeys("{RIGHT}")
            Start-Sleep -Seconds 1
            $wshell.SendKeys("{LEFT}")
            Start-Sleep -Seconds 1
    }

    if ($end) {
        Write-Host "Program ended."
        break
    }
}
