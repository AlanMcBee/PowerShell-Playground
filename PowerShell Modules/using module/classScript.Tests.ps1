Context 'PS1 with no param block and a using module statement' {
    BeforeEach {
        Remove-Module classModule -Force -ErrorAction SilentlyContinue
    }

    Describe 'classScript.ps1' {
        It 'should not be able to create and use a class from the module' {
            {
                $out = & "$PSScriptRoot\classScript.ps1"
            } | Should -Throw
        }
    }

    Describe 'classScript1.ps1'{
        It 'should not be able to create and use a class from the module' {
            {
                $out = & "$PSScriptRoot\classScript1.ps1"
            } | Should -Throw
        }
    }

    Describe 'classFunctionScript.ps1' {
        It 'should not work' {
            {
                . "$PSScriptRoot\classFunctionScript.ps1"
                $out = Test-Function
            } | Should -Throw
        }
    }

}