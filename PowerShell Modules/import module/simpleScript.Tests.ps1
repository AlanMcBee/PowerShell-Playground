Context 'PS1 with no param block and an Import-Module statement' {
    BeforeEach {
        Remove-Module simpleModule -Force -ErrorAction SilentlyContinue
    }

    Describe 'simpleScript.ps1' {
        It 'should not invoke Test-Function, but treat the function name as a string' {
            $out = & "$PSScriptRoot\simpleScript.ps1"
            $out | Should -Be 'Test-Function'
        }
    }

    Describe 'simpleScript2.ps1' {
        It 'should invoke Test-Function because it needs to be assigned to a variable' {
            $out = & "$PSScriptRoot\simpleScript2.ps1"
            $out | Should -Be 'OK'
        }
    }
}