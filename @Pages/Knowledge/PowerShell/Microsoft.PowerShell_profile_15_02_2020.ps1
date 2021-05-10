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

$alias_1 = "
 Console Command
 ===========
 more [<file>] [[ show content file in console ]]
 
 Service Aliases
 ===========
 als = alias 
 np = notepad
 
 Git Aliases
 ===========
 gi = git init
 qs = git status
 qa = git add [<files>] [-m <text commit>]
 
 >> commit <<
 qco = git commit [<files>]
 qcoa = git commit --amend [<files>] [[ overwrite last commit ]]
 
 >> rm <<
 qrm! = git rm -f [<files>] [[ from workSpace and index ]]
 qrmc = git rm --cached [<files>] [[ not from workSpace only from index ]]
 
 >> checkout <<
 qch = git checkout
 qchb = git checkout -b
 qchf = git checkout -- [<files>]
 
 >> log <<
 ql = git log
 qlf = git log --pretty=format:%h - %an, %ar : %s
 qlg = git log --pretty=format:%h %s --graph
 
 >> merge <<
 qm = git merge [<branch>] [[ drain <branch> with state branch ]]
 
 >> reset <<
 qrssh = git reset HEAD [<files>]
 
 >> branch <<
 qbd = git branch -d [<branch>]
 
  >> mv <<
 qmv = git mv [<from file|dir> <to file|dir>]
 ------------------------------------
 "

echo $alias_1



# Service Alias -----------------

function Put-GitAliases { & echo $alias_1 }
Set-Alias -Name als -Value Put-GitAliases

function Start-NotePad { & notepad $args }
Set-Alias -Name np -Value Start-NotePad

# Git Alias ---------------------

function Get-GitStatus { & git status $args }
Set-Alias -Name qs -Value Get-GitStatus

function Get-GitInit { & git init $args }
Set-Alias -Name qi -Value Get-GitInit

# >> add ----------
function Get-GitAdd { & git add $args }
Set-Alias -Name qa -Value Get-GitAdd

# >> commit ----------
function Get-GitCommit { & git commit $args }
Set-Alias -Name qco -Value Get-GitCommit

function Get-GitCommitAmend { & git commit --amend $args }
Set-Alias -Name qcoa -Value Get-GitCommitAmend

# >> rm --------------

function Get-GitRemoveFileFromWorkSpaseAndIndex { & git rm -f $args}
Set-Alias -Name qrm! -Value Get-GitRemoveFileFromWorkSpaseAndIndex

function Get-GitRemoveCashedIndex { & git rm --cached $args}
Set-Alias -Name qrmc -Value Get-GitRemoveCashedIndex

# >> checkout ---------
function Get-GitCheckout { & git checkout $args}
Set-Alias -Name qch -Value Get-GitCheckout

function Get-GitCheckoutCreateToBranch { & git checkout -b $args}
Set-Alias -Name qchb -Value Get-GitCheckoutCreateToBranch

function Get-GitCheckoutRewriteFile { & git checkout -- $args}
Set-Alias -Name qchf -Value Get-GitCheckoutRewriteFile

# >> log -------------
function Get-GitLog { & git log $args}
Set-Alias -Name ql -Value Get-GitLog

function Get-GitLogFormat { & git log --pretty=format:"%h - %an, %ar : %s" $args}
Set-Alias -Name qlf -Value Get-GitLogFormat

function Get-GitLogGraph { & git log --pretty=format:"%h %s" --graph $args}
Set-Alias -Name qlg -Value Get-GitLogGraph

# >> reset -----------
function Get-GitResesSoftHEAD { & git reset HEAD $args}
Set-Alias -Name qrssh -Value Get-GitResesSoftHEAD

# >> merge -----------
function Get-GitMerge { & git merge $args}
Set-Alias -Name qm -Value Get-GitMerge

# >> branch ---------
function Get-GitBranchDelete { & git branch -d $args}
Set-Alias -Name qbd -Value Get-GitBranchDelete

# >> mv ---------
function Get-GitMove { & git mv $args}
Set-Alias -Name qmv -Value Get-GitMove





