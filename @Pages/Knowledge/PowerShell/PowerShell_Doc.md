

`PS> $profile` - path to profile file

`PS> Set-Alias -Name list -Value Get-Location`

`PS> Get-Alias -Name list`

CommandType     Name

-----------     ----
Alias           list -> Get-Location

`function Get-GitCheckout { & git checkout $args }`
`New-Alias -Name co -Value Get-GitCheckout -Force -Option AllScope`

`(Get-Host).UI.RawUI`

ForegroundColor       : DarkYellow
BackgroundColor       : DarkMagenta
CursorPosition        : 0,13
WindowPosition        : 0,0
CursorSize            : 25
BufferSize            : 120,3000
WindowSize            : 120,50
MaxWindowSize         : 120,58
MaxPhysicalWindowSize : 195,58
KeyAvailable          : False
WindowTitle           : Windows PowerShell (2)

