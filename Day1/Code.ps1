$Input = Get-Content -Path "C:\Users\christian.ritter\OneDrive - CANCOM GmbH\Dokumente\Repositories\Github\AdventOfCode22\Day1\Input.txt" | Out-String
$Input -split "$([System.Environment]::NewLine)$([System.Environment]::NewLine)" | foreach-object{
    $_ -split "$([System.Environment]::NewLine)" | foreach-object{
        $_
    } | Measure-Object -sum | Select-Object -ExpandProperty Sum
} | Measure-Object -Maximum | Select-Object -ExpandProperty Maximum

