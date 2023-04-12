BeforeAll {
    Remove-Module simpleModule -Force
}

Context 'PS1 with no param block and a using module statement' {
    Describe 'simpleScript.ps1' {
        It 'should not invoke Test-Function, but treat the function name as a string' {
            $out = . "$PSScriptRoot\simpleScript.ps1"
            $out | Should -Be 'Test-Function'
        }
    }
}