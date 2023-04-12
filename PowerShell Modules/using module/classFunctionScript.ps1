using module .\classModule.psm1

function Test-Function
{
    param ()
    
    $classInstance = [ClassModule]::new()

    Write-Output $classInstance.Property
    
}

Write-Output Test-Function
