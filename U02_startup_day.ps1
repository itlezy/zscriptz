﻿# hello comment

$day = (Get-Date).DayOfWeek
$weekend = $false

Write-Output $day

switch($day) {
    { ($_ -eq "Sunday") -or ($_ -eq "Saturday") -or ((Get-Date).Hour -gt 18) } {

        if ("LEN".Equals($Env:COMPUTERNAME)) {
            # Start-Process "$Env:G_ZSCRIPTS\A02_qbittorent.cmd"
            Start-Process "$Env:G_ZSCRIPTS\U41_EnableBT.cmd"
        }

        $weekend = $true

        break;
    }
    default {

    if ("LEN".Equals($Env:COMPUTERNAME)) {
            Start-Process "$Env:G_ZSCRIPTS\U42_EnableLogitech.cmd"
    }

        break;
    }
}

if ($weekend) {
    $Env:WEEKEND=$weekend
}

if ("TOR".Equals($Env:COMPUTERNAME)) {
    Start-Sleep -Seconds 7
} else {
    Start-Sleep -Seconds 22
}

Start-Process "$Env:G_ZSCRIPTS\U02_startup_chrome.cmd"

# $p = Read-Host "Press any key to continue.."
