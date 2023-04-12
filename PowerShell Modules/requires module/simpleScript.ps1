# NOTE: Scripts (.ps1 files) cannot import a module using the `requires -Modules` statement. The code below will prevent the script from being executed, even by Pester

#requires -Modules .\simpleModule.psm1

Write-Output Test-Function
