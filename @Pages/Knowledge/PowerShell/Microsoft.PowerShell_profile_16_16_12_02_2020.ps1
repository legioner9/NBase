echo "Start :: D:\Node_Projects v.2\Node_Docs\node_modules\st_doc1\Knowledge\PowerShell\Shell_init\settings.ps1"

# >Execution Policy RemoteSigned
# >$profile - path to this

Import-Module posh-git

$console = $host.ui.RawUI
# error color text
$host.privatedata.ErrorForegroundColor = 'green'


$buffer = $console.BufferSize

$buffer.width = 160
$buffer.height = 2000
$console.BufferSize = $buffer
 
$size = $console.WindowSize

$size.width = 160
$size.height = 50
$console.WindowSize = $size

# Изменяем настройки окна
(Get-Host).UI.RawUI.ForegroundColor="Gray";
(Get-Host).UI.RawUI.backgroundColor="Black";
(Get-Host).UI.RawUI.CursorSize=25;
(Get-Host).UI.RawUI.WindowTitle="WorldCount Console";

<# (Get-Host).UI.RawUI.BufferSize.width= 120;
(Get-Host).UI.RawUI.BufferSize.height= 3000; #>

(Get-Host).UI.RawUI.WindowSize.width= 120;
(Get-Host).UI.RawUI.WindowSize.height= 200;

(Get-Host).UI.RawUI.WindowPosition.X= -1800;
(Get-Host).UI.RawUI.WindowPosition.Y= -127;

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

$alias_1 = " als = alias 
 np = notepad
 qs = git status
 qa = git add
 qco = git commit
 qrc = git rm --cached
 qch = git checkout
 "


echo "Git Aliases:"
echo " "
echo $alias_1
echo "-------------------"
echo " "
echo " "

# Service Alias -----------------

function Put-GitAliases { & echo $alias_1 }
Set-Alias -Name als -Value Put-GitAliases

function Start-NotePad { & notepad $args }
Set-Alias -Name np -Value Start-NotePad

# Git Alias ---------------------

function Get-GitStatus { & git status $args }
Set-Alias -Name qs -Value Get-GitStatus

function Get-GitAdd { & git add $args }
Set-Alias -Name qa -Value Get-GitAdd

function Get-GitCommit { & git commit $args }
Set-Alias -Name qco -Value Get-GitCommit

function Get-GitRemoveCashedIndex { & git rm --cached $args}
Set-Alias -Name qrc -Value Get-GitRemoveCashedIndex

function Get-GitCheckout { & git checkout $args}
Set-Alias -Name qch -Value Get-GitCheckout


