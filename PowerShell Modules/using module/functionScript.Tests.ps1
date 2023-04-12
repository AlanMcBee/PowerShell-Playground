Context 'PS1 with a param block and a using module statement' {
    BeforeEach {
        Remove-Module simpleModule -Force -ErrorAction SilentlyContinue
    }

    Describe 'functionScript.ps1' {
        It 'should use Test-Function' {
            $out = & "$PSScriptRoot\functionScript.ps1"
            $out | Should -Be 'OK'
        }
    }
}
