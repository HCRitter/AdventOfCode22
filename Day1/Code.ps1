#Part1
$InputX = Get-Content -Path ".\Input.txt" | Out-String
$InputX -split "$([System.Environment]::NewLine)$([System.Environment]::NewLine)" | foreach-object{
    $_ -split "$([System.Environment]::NewLine)" | foreach-object{
        $_
    } | Measure-Object -sum | Select-Object -ExpandProperty Sum
} | Measure-Object -Maximum | Select-Object -ExpandProperty Maximum

#Part2
$InputX = Get-Content -Path ".\Input.txt" | Out-String
$InputX -split "$([System.Environment]::NewLine)$([System.Environment]::NewLine)" | foreach-object{
    $_ -split "$([System.Environment]::NewLine)" | foreach-object{
        $_
    } | Measure-Object -sum | Select-Object -ExpandProperty Sum
} | Sort-object -Descending | Select-Object -First 3 | Measure-Object -Sum | Select-Object -ExpandProperty Sum
