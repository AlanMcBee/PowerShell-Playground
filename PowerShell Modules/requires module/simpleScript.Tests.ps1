Context 'PS1 with no param block and a #requires -Modules statement' {
    BeforeEach {
        Remove-Module simpleModule -Force -ErrorAction SilentlyContinue
    }

    Describe 'simpleScript.ps1' {
        It 'fails to even try to import the module' {
            {
                $out = & "$PSScriptRoot\simpleScript.ps1"
            } | Should -Throw -PassThru | Write-Host
        }
    }

    Describe 'simpleScriptExpectingImportedModule.ps1' {
        It 'successfully uses a required module' {
            
            Import-Module "$PSScriptRoot\simpleModule.psm1"

            $out = & "$PSScriptRoot\simpleScriptExpectingImportedModule.ps1"
            $out | Should -Be 'OK'
        }
    }
}