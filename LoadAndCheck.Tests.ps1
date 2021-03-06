﻿$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

# Set debug level to Debug
$DebugPreference = "Continue"
# Set Verbose level to Verbose
$VerbosePreference = "Continue"

Describe "Import-SurfaceDrivers" {
    $ret = Import-SurfaceDrivers -Model "Surface Pro" -CheckOnly $True
    It "Is Ready For Test" {
        $ret | Should -Be $True
    }
}
