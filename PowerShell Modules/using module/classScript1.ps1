using module .\classModule.psm1

param()

$classInstance = [ClassModule]::new()

Write-Output $classInstance.Property
