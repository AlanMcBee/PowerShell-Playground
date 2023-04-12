using module .\level2Module.psm1

function Test-FunctionLevel1 {
    param()
    return "One"
}

function Test-FunctionLevel1ToLevel2 {
    param()
    $out = Test-FunctionLevel2
    return "One; $out"
}
