using module .\classModule.psm1

$classInstance = [ClassModule]::new()

Write-Output $classInstance.Property
