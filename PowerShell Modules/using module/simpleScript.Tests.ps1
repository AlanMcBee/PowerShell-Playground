Describe 'simpleScript.ps1' {
    It 'should not connect to Test-Function' {
        $out = . "$PSScriptRoot\simpleScript.ps1"
        $out | Should -Be 'Test-Function'
    }
}
