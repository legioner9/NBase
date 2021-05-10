Import-Module posh-git

$console = $host.ui.RawUI

<# $console.ForegroundColor = "black"
$console.BackgroundColor = "white" #>

$buffer = $console.BufferSize

$buffer.width = 160
$buffer.height = 2000
$console.BufferSize = $buffer
 
$size = $console.WindowSize

$size.width = 160
$size.height = 50
$console.WindowSize = $size

# We to Hell?! - Is't WorldCount!
$size.width = 160
$size.height = 50
# Изменяем настройки окна
(Get-Host).UI.RawUI.ForegroundColor="Gray";
(Get-Host).UI.RawUI.backgroundColor="Black";
(Get-Host).UI.RawUI.CursorSize=25;
(Get-Host).UI.RawUI.WindowTitle="WorldCount Console";

<# (Get-Host).UI.RawUI.BufferSize.width= 120;
(Get-Host).UI.RawUI.BufferSize.height= 3000; #>

(Get-Host).UI.RawUI.WindowSize.width= 120;
(Get-Host).UI.RawUI.WindowSize.height= 200;

(Get-Host).UI.RawUI.WindowPosition.X= -1812;
(Get-Host).UI.RawUI.WindowPosition.Y= -139;

<# (Get-Host).UI.RawUI.Options.FontSize= 18;
(Get-Host).UI.RawUI.Options.FontName= "Pragmata Pro Mono"; #>

<# (Get-Host).UI.RawUI.MaxWindowSize.width= 195;
(Get-Host).UI.RawUI.MaxWindowSize.height= 200;
 #>


# Очищаем экран
#cls

# Выводим приветствие
echo " ";
echo "Hi, Legioner9";
echo " ";
echo " ";

# Устанавливаем начальный каталог
$MyRoot = "D:\MY_GIT\Git_start_1";
CD $MyRoot;



function Get-GitStatus { & git status $args }
Set-Alias -Name gs -Value Get-GitStatus

<# # Вид предложения ввода
function prompt
{
    "[WorldCount:] " + $(get-location) + "> "
} #>
<# //The example displays output like the following:
//    All the foreground colors except DarkCyan, the background color:
//       The foreground color is Black.
//       The foreground color is DarkBlue.
//       The foreground color is DarkGreen.
//       The foreground color is DarkRed.
//       The foreground color is DarkMagenta.
//       The foreground color is DarkYellow.
//       The foreground color is Gray.
//       The foreground color is DarkGray.
//       The foreground color is Blue.
//       The foreground color is Green.
//       The foreground color is Cyan.
//       The foreground color is Red.
//       The foreground color is Magenta.
//       The foreground color is Yellow.
//       The foreground color is White.
//    
//    All the background colors except White, the foreground color:
//       The background color is Black.
//       The background color is DarkBlue.
//       The background color is DarkGreen.
//       The background color is DarkCyan.
//       The background color is DarkRed.
//       The background color is DarkMagenta.
//       The background color is DarkYellow.
//       The background color is Gray.
//       The background color is DarkGray.
//       The background color is Blue.
//       The background color is Green.
//       The background color is Cyan.
//       The background color is Red.
//       The background color is Magenta.
//       The background color is Yellow.
//    
//    Original colors restored... #>
echo "rerere"
