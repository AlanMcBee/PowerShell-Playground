BeforeAll {
    function Remove-AllModules
    {
        Remove-Module level1Module -Force -ErrorAction SilentlyContinue
        Remove-Module level2Module -Force -ErrorAction SilentlyContinue
    }
}
Context 'PS1 with a param block and a using module statement' {
    
    Describe 'level1Script.ps1' {
        BeforeEach {
            Remove-AllModules
        }
        It 'should use Test-FunctionLevel1 only' {
            $out = & "$PSScriptRoot\level1Script.ps1"
            $out | Should -Be 'One'
        }
    }

    Describe 'level2Script.ps1' {
        BeforeEach {
            Remove-AllModules
        }
        It 'should use Test-FunctionLevel1ToLevel2 to call two levels deep' {
            $out = & "$PSScriptRoot\level2Script.ps1"
            $out | Should -Be 'One; Two'
        }
    }
}