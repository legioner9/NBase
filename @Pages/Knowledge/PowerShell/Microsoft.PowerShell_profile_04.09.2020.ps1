# D:\Node_Projects v.2\Node_Docs\node_modules\st_doc1\Knowledge\PowerShell\Shell_init\settings.ps1
# D:\Node_Projects_v.2\Node_Docs\node_modules\st_doc1\Knowledge\PowerShell\Shell_init\set_alias.ps1

<# cd /home/user/git/2
git init --bare
cd /home/user/git/1
git remote add origin /home/user/git/2
git push origin master #>

<# cd /home/user/git/2
git init --bare
git daemon --base-path=/home/user/git --detach --syslog --export-all --enable=receive-pack /home/user/git
cd /home/user/git/1
git remote add origin git://127.0.0.1/2
git push origin master #>

<# 
git remote  add fss  file//:J:/Node_Way_Repo_second/ 
E:\Node_projects\Node_Way [master +20 ~0 -0 !]> git remote -v
fss     file//:J:/Node_Way_Repo_second/ (fetch)
fss     file//:J:/Node_Way_Repo_second/ (push)
orign   https://github.com/legioner9/Node_Way_third.git (fetch
orign   https://github.com/legioner9/Node_Way_third.git (push)

#>

<# git archive -o ./project.zip HEAD # создать архив с файловой структурой проекта по указанному пути (состояние репозитория, соответствующее указателю HEAD) #>

<# git archive -o J:/Node_Way.zip HEAD | git push orign master #>

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

$size.width = 126
$size.height = 42
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

(Get-Host).UI.RawUI.WindowPosition.X= -1381;
(Get-Host).UI.RawUI.WindowPosition.Y= -109;

<# (Get-Host).UI.RawUI.Options.FontSize= 18;
(Get-Host).UI.RawUI.Options.FontName= "Pragmata Pro Mono"; #>

<# (Get-Host).UI.RawUI.MaxWindowSize.width= 195;
(Get-Host).UI.RawUI.MaxWindowSize.height= 200;
 #>


# Очищаем экран
#cls

# Выводим приветствие
echo '$profile';
echo 'C:\Users\StNN\Documents\PowerShell\Microsoft.PowerShell_profile.ps1';
echo " ";
echo "Hi, Legioner9";
echo " ";
echo " ";

# Устанавливаем начальный каталог
$MyRoot = "E:\Node_projects\Node_Way";
CD $MyRoot;

$alias_1 = "

>$profile - path to this

 Console Command
 ===========
 more [<file>] [[ show content file in console ]]
 git push --set-upstream origin master
 
 Service Aliases
 ===========
 als = alias 
 np = notepad
 
 Git Aliases
 ===========
 gi = git init [--bare] [[ create repository in folder ]]
 qst = git status
 
 qa = git add [<files>] [-m <text commit>]
 qaa = git add -a
 qai = git add -i
 
 qco = git commit [<files>]
 qcoa = git commit --amend [<files>] [[ overwrite last commit ]]

 qrm! = git rm -f [<files>] [[ from workSpace and index ]]
 qrmc = git rm --cached [<files>] [[ not from workSpace only from index ]]
 
 gsha = git stash
 gshk = git stash --keep-index [[ stashed only workspace without index
 qshl = git stash list [[ stash@{n}: ... ]]
 qshd = git stash drop [[ last stash and delete ]]
 qshnia = git stash apply [stash@{<n>}] [[ but without index ]]
 qshia = git stash apply --index [[ with index also ]]
 qshap = git stash apply pop [[=== qsha => apply last stash and delete this ]]
 
 
 qch = git checkout
 qchb = git checkout -b <new branch> <from branch>
				[[ <new branch to track remote !branch> <remote>/<!branch> ]]
 qchf = git checkout --[<files>]

 ql = git log 
 qlf = git log --pretty=format:%h - %an, %ar : %s
 qlg = git log --oneline --decorate --graph --all

 qm = git merge [<branch>] [[ drain <branch> with state branch ]]
 
 qrb = git rebase [<branch>] [[ rebase <branch> to state branch ]]
					[--onto <master> <server> <client>] [[ rebase to master only change client which not present in server]]
 
 qmt = git mergetool

 qrsh = git reset HEAD [<files>]

 qb = git branch
 qbv = git branch -v [[ every branch last commit ]]
 qbd = git branch -d [<branch>]
 qbm = git branch --merge [[ without * will be deleted ]]
 qbnm = git branch --no-merged [<branch>] [[ no merged with <branch> ]]

 qmv = git mv [<from file|dir> <to file|dir>]
 
 qre = git remote
 qrev = git remote -v [[ address and access rights ]]
 qrea = git remote add [<shortname> <url>] 
 
 qpus = git push [<remote name> || <shortname>] [ <m.b. you new branch> ]
										[--tags] [[push with all tags]]
										[--delete <tagname || branch>]
 qpusa = git push --all [[ to all remote ]]
 
 qfe = git fetch [<remote name> || <shortname>]
 
 qpul = git pull 
 
 qt = git tag 
 qta = git tag -a [<name of tag>] [<hash commit as target of tag>] [ -m '<content>' ]
 qtd = git tag -d [<name of tag>]
 
 qd = git diff
 qds = git diff --staged
 
 qdt = git difftool [--tool-help] [[ what sis tools to diff ]] 
 
 qacpx = qaA | qco . |qpus |qpus fss Value Composite-GitAddComitPushAll 
 
# >> AddCommit ---------
function Composite-pushToCloud { & qaA | qco .}
Set-Alias -Name q0 -Value Composite-AddCommit

# >> pushToCloud ---------
function Composite-pushToCloud { & git push orign master }
Set-Alias -Name q1 -Value Composite-pushToCloud

# >> pushToDisc ---------
function Composite-pushToDisc { git archive -o J:/Node_Way.zip HEAD }
Set-Alias -Name q2 -Value Composite-pushToDisc
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
Set-Alias -Name qst -Value Get-GitStatus

function Get-GitInit { & git init $args }
Set-Alias -Name qi -Value Get-GitInit

# >> add ----------
function Get-GitAdd { & git add $args }
Set-Alias -Name qa -Value Get-GitAdd

function Get-GitAddAllCange { & git add -A $args }
Set-Alias -Name qaA -Value Get-GitAddAllCange

function Get-GitAddInteractive { & git add -i $args }
Set-Alias -Name qai -Value Get-GitAddInteractive

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

# >> stash ---------
function Get-GitStach { & git stash $args}
Set-Alias -Name qsha -Value Get-GitStach

function Get-GitStachList { & git stash list $args}
Set-Alias -Name qshl -Value Get-GitStachList

function Get-GitStachList { & git stash --keep-index $args}
Set-Alias -Name qshk -Value Get-GitStachList

function Get-GitStachDrop { & git stash drop $args}
Set-Alias -Name qshd -Value Get-GitStachDrop

function Get-GitStachNoIndexApply { & git stash apply $args}
Set-Alias -Name qshnia -Value Get-GitStachApplyNoIndex

function Get-GitStachIndexApply { & git stash apply --index $args}
Set-Alias -Name qshia -Value Get-GitStachIndexApply

function Get-GitStachApplyPop { & git stash apply pop $args}
Set-Alias -Name qshap -Value Get-GitStachApplyPop

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

<# function Get-GitLogGraph1 { & git log --pretty=format:"%h %s" --graph $args}
Set-Alias -Name qlg1 -Value Get-GitLogGraph1 #>

function Get-GitLogGraph { & git log --oneline --decorate --graph --all $args}
Set-Alias -Name qlg -Value Get-GitLogGraph

# >> reset -----------
function Get-GitResesSoftHEAD { & git reset HEAD $args}
Set-Alias -Name qrsh -Value Get-GitResesSoftHEAD

# >> merge -----------
function Get-GitMerge { & git merge $args}
Set-Alias -Name qm -Value Get-GitMerge

# >> mergetool ---------
function Get-GitMergetool { & git mergetool $args}
Set-Alias -Name qmt -Value Get-GitMergetool

# >> branch ---------
function Get-GitBranch { & git branch $args}
Set-Alias -Name qb -Value Get-GitBranch

function Get-GitBranchDelete { & git branch -d $args}
Set-Alias -Name qbd -Value Get-GitBranchDelete

function Get-GitEveryBranchLastCommit { & git branch -v $args}
Set-Alias -Name qbv -Value Get-GitEveryBranchLastCommit

function Get-GitBranchMerge { & git branch --merge $args}
Set-Alias -Name qbm -Value Get-GitBranchMerge

function Get-GitBranchNoMergedWithCurrent { & git branch --no-merged $args}
Set-Alias -Name qbnm -Value Get-GitBranchNoMergedWithCurrent

# >> mv ---------
function Get-GitMove { & git mv $args}
Set-Alias -Name qmv -Value Get-GitMove

# >> remote ---------
function Get-GitRemote { & git remote $args}
Set-Alias -Name qre -Value Get-GitRemote

function Get-GitRemoteShowAddress { & git remote -v $args}
Set-Alias -Name qrev -Value Get-GitRemoteShowAddress

function Get-GitRemoteAddRepo { & git remote add $args}
Set-Alias -Name qrea -Value Get-GitRemoteAddRepo

# >> push ---------
function Get-GitPush { & git push $args}
Set-Alias -Name qpus -Value Get-GitPush

function Get-GitPushToAllRepo { & git push --all $args}
Set-Alias -Name qpusa -Value Get-GitPushToAllRepo

# >> fetch ---------
function Get-GitFetch { & git fetch $args}
Set-Alias -Name qfe -Value Get-GitFetch

# >> pull ---------
function Get-GitPull { & git pull $args}
Set-Alias -Name qpul -Value Get-GitPull

# >> tag ---------
function Get-GitTag { & git tag $args}
Set-Alias -Name qt -Value Get-GitTag

function Get-GitTagCreateAnnotate { & git tag -a $args}
Set-Alias -Name qta -Value Get-GitTagCreateAnnotate

function Get-GitTagDelete { & git tag -d $args}
Set-Alias -Name qtd -Value Get-GitTagDelete

# >> rebase ---------
function Get-GitRebase { & git rebase $args}
Set-Alias -Name qrb -Value Get-GitRebase

# >> diff ---------
function Get-GitDiff { & git diff $args}
Set-Alias -Name qd -Value Get-GitDiff

function Get-GitDiffStages { & git diff --staged $args}
Set-Alias -Name qds -Value Get-GitDiffStages

# >> difftool ---------
function Get-GitDifftool { & git difftool $args}
Set-Alias -Name qdt -Value Get-GitDifftool

# >> composite ---------
function Composite-GitAddComitPushAll { & qaA | qco . |qpus $args}
Set-Alias -Name qacpx -Value Composite-GitAddComitPushAll

# >> AddCommit ---------
function Composite-pushToCloud { & qaA | qco .}
Set-Alias -Name q0 -Value Composite-AddCommit

# >> pushToCloud ---------# D:\Node_Projects v.2\Node_Docs\node_modules\st_doc1\Knowledge\PowerShell\Shell_init\settings.ps1
# D:\Node_Projects_v.2\Node_Docs\node_modules\st_doc1\Knowledge\PowerShell\Shell_init\set_alias.ps1

<# cd /home/user/git/2
git init --bare
cd /home/user/git/1
git remote add origin /home/user/git/2
git push origin master #>

<# cd /home/user/git/2
git init --bare
git daemon --base-path=/home/user/git --detach --syslog --export-all --enable=receive-pack /home/user/git
cd /home/user/git/1
git remote add origin git://127.0.0.1/2
git push origin master #>

<# 
git remote  add fss  file//:J:/Node_Way_Repo_second/ 
E:\Node_projects\Node_Way [master +20 ~0 -0 !]> git remote -v
fss     file//:J:/Node_Way_Repo_second/ (fetch)
fss     file//:J:/Node_Way_Repo_second/ (push)
orign   https://github.com/legioner9/Node_Way_third.git (fetch
orign   https://github.com/legioner9/Node_Way_third.git (push)

#>

<# git archive -o ./project.zip HEAD # создать архив с файловой структурой проекта по указанному пути (состояние репозитория, соответствующее указателю HEAD) #>

<# git archive -o J:/Node_Way.zip HEAD | git push orign master #>

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

$size.width = 126
$size.height = 42
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

(Get-Host).UI.RawUI.WindowPosition.X= -1381;
(Get-Host).UI.RawUI.WindowPosition.Y= -109;

<# (Get-Host).UI.RawUI.Options.FontSize= 18;
(Get-Host).UI.RawUI.Options.FontName= "Pragmata Pro Mono"; #>

<# (Get-Host).UI.RawUI.MaxWindowSize.width= 195;
(Get-Host).UI.RawUI.MaxWindowSize.height= 200;
 #>


# Очищаем экран
#cls

# Выводим приветствие
echo '$profile';
echo 'C:\Users\StNN\Documents\PowerShell\Microsoft.PowerShell_profile.ps1';
echo " ";
echo "Hi, Legioner9";
echo " ";
echo " ";

# Устанавливаем начальный каталог
$MyRoot = "E:\Node_projects\Node_Way";
CD $MyRoot;

$alias_1 = "

>$profile - path to this

 Console Command
 ===========
 more [<file>] [[ show content file in console ]]
 git push --set-upstream origin master
 
 Service Aliases
 ===========
 als = alias 
 np = notepad
 
 Git Aliases
 ===========
 gi = git init [--bare] [[ create repository in folder ]]
 qst = git status
 
 qa = git add [<files>] [-m <text commit>]
 qaa = git add -a
 qai = git add -i
 
 qco = git commit [<files>]
 qcoa = git commit --amend [<files>] [[ overwrite last commit ]]

 qrm! = git rm -f [<files>] [[ from workSpace and index ]]
 qrmc = git rm --cached [<files>] [[ not from workSpace only from index ]]
 
 gsha = git stash
 gshk = git stash --keep-index [[ stashed only workspace without index
 qshl = git stash list [[ stash@{n}: ... ]]
 qshd = git stash drop [[ last stash and delete ]]
 qshnia = git stash apply [stash@{<n>}] [[ but without index ]]
 qshia = git stash apply --index [[ with index also ]]
 qshap = git stash apply pop [[=== qsha => apply last stash and delete this ]]
 
 
 qch = git checkout
 qchb = git checkout -b <new branch> <from branch>
				[[ <new branch to track remote !branch> <remote>/<!branch> ]]
 qchf = git checkout --[<files>]

 ql = git log 
 qlf = git log --pretty=format:%h - %an, %ar : %s
 qlg = git log --oneline --decorate --graph --all

 qm = git merge [<branch>] [[ drain <branch> with state branch ]]
 
 qrb = git rebase [<branch>] [[ rebase <branch> to state branch ]]
					[--onto <master> <server> <client>] [[ rebase to master only change client which not present in server]]
 
 qmt = git mergetool

 qrsh = git reset HEAD [<files>]

 qb = git branch
 qbv = git branch -v [[ every branch last commit ]]
 qbd = git branch -d [<branch>]
 qbm = git branch --merge [[ without * will be deleted ]]
 qbnm = git branch --no-merged [<branch>] [[ no merged with <branch> ]]

 qmv = git mv [<from file|dir> <to file|dir>]
 
 qre = git remote
 qrev = git remote -v [[ address and access rights ]]
 qrea = git remote add [<shortname> <url>] 
 
 qpus = git push [<remote name> || <shortname>] [ <m.b. you new branch> ]
										[--tags] [[push with all tags]]
										[--delete <tagname || branch>]
 qpusa = git push --all [[ to all remote ]]
 
 qfe = git fetch [<remote name> || <shortname>]
 
 qpul = git pull 
 
 qt = git tag 
 qta = git tag -a [<name of tag>] [<hash commit as target of tag>] [ -m '<content>' ]
 qtd = git tag -d [<name of tag>]
 
 qd = git diff
 qds = git diff --staged
 
 qdt = git difftool [--tool-help] [[ what sis tools to diff ]] 
 
 qacpx = qaA | qco . |qpus |qpus fss Value Composite-GitAddComitPushAll 
 
# >> AddCommit ---------
function Composite-pushToCloud { & qaA | qco .}
Set-Alias -Name q0 -Value Composite-AddCommit

# >> pushToCloud ---------
function Composite-pushToCloud { & git push orign master }
Set-Alias -Name q1 -Value Composite-pushToCloud

# >> pushToDisc ---------
function Composite-pushToDisc { git archive -o J:/Node_Way.zip HEAD }
Set-Alias -Name q2 -Value Composite-pushToDisc
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
Set-Alias -Name qst -Value Get-GitStatus

function Get-GitInit { & git init $args }
Set-Alias -Name qi -Value Get-GitInit

# >> add ----------
function Get-GitAdd { & git add $args }
Set-Alias -Name qa -Value Get-GitAdd

function Get-GitAddAllCange { & git add -A $args }
Set-Alias -Name qaA -Value Get-GitAddAllCange

function Get-GitAddInteractive { & git add -i $args }
Set-Alias -Name qai -Value Get-GitAddInteractive

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

# >> stash ---------
function Get-GitStach { & git stash $args}
Set-Alias -Name qsha -Value Get-GitStach

function Get-GitStachList { & git stash list $args}
Set-Alias -Name qshl -Value Get-GitStachList

function Get-GitStachList { & git stash --keep-index $args}
Set-Alias -Name qshk -Value Get-GitStachList

function Get-GitStachDrop { & git stash drop $args}
Set-Alias -Name qshd -Value Get-GitStachDrop

function Get-GitStachNoIndexApply { & git stash apply $args}
Set-Alias -Name qshnia -Value Get-GitStachApplyNoIndex

function Get-GitStachIndexApply { & git stash apply --index $args}
Set-Alias -Name qshia -Value Get-GitStachIndexApply

function Get-GitStachApplyPop { & git stash apply pop $args}
Set-Alias -Name qshap -Value Get-GitStachApplyPop

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

<# function Get-GitLogGraph1 { & git log --pretty=format:"%h %s" --graph $args}
Set-Alias -Name qlg1 -Value Get-GitLogGraph1 #>

function Get-GitLogGraph { & git log --oneline --decorate --graph --all $args}
Set-Alias -Name qlg -Value Get-GitLogGraph

# >> reset -----------
function Get-GitResesSoftHEAD { & git reset HEAD $args}
Set-Alias -Name qrsh -Value Get-GitResesSoftHEAD

# >> merge -----------
function Get-GitMerge { & git merge $args}
Set-Alias -Name qm -Value Get-GitMerge

# >> mergetool ---------
function Get-GitMergetool { & git mergetool $args}
Set-Alias -Name qmt -Value Get-GitMergetool

# >> branch ---------
function Get-GitBranch { & git branch $args}
Set-Alias -Name qb -Value Get-GitBranch

function Get-GitBranchDelete { & git branch -d $args}
Set-Alias -Name qbd -Value Get-GitBranchDelete

function Get-GitEveryBranchLastCommit { & git branch -v $args}
Set-Alias -Name qbv -Value Get-GitEveryBranchLastCommit

function Get-GitBranchMerge { & git branch --merge $args}
Set-Alias -Name qbm -Value Get-GitBranchMerge

function Get-GitBranchNoMergedWithCurrent { & git branch --no-merged $args}
Set-Alias -Name qbnm -Value Get-GitBranchNoMergedWithCurrent

# >> mv ---------
function Get-GitMove { & git mv $args}
Set-Alias -Name qmv -Value Get-GitMove

# >> remote ---------
function Get-GitRemote { & git remote $args}
Set-Alias -Name qre -Value Get-GitRemote

function Get-GitRemoteShowAddress { & git remote -v $args}
Set-Alias -Name qrev -Value Get-GitRemoteShowAddress

function Get-GitRemoteAddRepo { & git remote add $args}
Set-Alias -Name qrea -Value Get-GitRemoteAddRepo

# >> push ---------
function Get-GitPush { & git push $args}
Set-Alias -Name qpus -Value Get-GitPush

function Get-GitPushToAllRepo { & git push --all $args}
Set-Alias -Name qpusa -Value Get-GitPushToAllRepo

# >> fetch ---------
function Get-GitFetch { & git fetch $args}
Set-Alias -Name qfe -Value Get-GitFetch

# >> pull ---------
function Get-GitPull { & git pull $args}
Set-Alias -Name qpul -Value Get-GitPull

# >> tag ---------
function Get-GitTag { & git tag $args}
Set-Alias -Name qt -Value Get-GitTag

function Get-GitTagCreateAnnotate { & git tag -a $args}
Set-Alias -Name qta -Value Get-GitTagCreateAnnotate

function Get-GitTagDelete { & git tag -d $args}
Set-Alias -Name qtd -Value Get-GitTagDelete

# >> rebase ---------
function Get-GitRebase { & git rebase $args}
Set-Alias -Name qrb -Value Get-GitRebase

# >> diff ---------
function Get-GitDiff { & git diff $args}
Set-Alias -Name qd -Value Get-GitDiff

function Get-GitDiffStages { & git diff --staged $args}
Set-Alias -Name qds -Value Get-GitDiffStages

# >> difftool ---------
function Get-GitDifftool { & git difftool $args}
Set-Alias -Name qdt -Value Get-GitDifftool

# >> composite ---------
function Composite-GitAddComitPushAll { & qaA | qco . |qpus $args}
Set-Alias -Name qacpx -Value Composite-GitAddComitPushAll

# >> Add ---------
function Composite-pushToCloud { & qaA }
Set-Alias -Name q0 -Value Composite-Add

# >> Commit ---------
function Composite-pushToCloud { & qco .}
Set-Alias -Name q1 -Value Composite-Commit

# >> pushToCloud ---------
function Composite-pushToCloud { & git push orign master }
Set-Alias -Name q2 -Value Composite-pushToCloud

# >> pushToDisc ---------
function Composite-pushToDisc { & git archive -o J:/Node_Way.zip HEAD }
Set-Alias -Name q3 -Value Composite-pushToDisc

<# # >> pushToAll ---------
function Composite-pushToAll { & qaA | qco . |git archive -o J:/Node_Way.zip HEAD | git push orign master }
Set-Alias -Name q0 -Value Composite-pushToAll #>

<# function Composite-GitAddComitPushAll { & qaA | qco . |qpus |qpus fss  $args}
Set-Alias -Name qacpx -Value Composite-GitAddComitPushAll #>




function Composite-pushToCloud { & git push orign master }
Set-Alias -Name q1 -Value Composite-pushToCloud

# >> pushToDisc ---------
function Composite-pushToDisc { git archive -o J:/Node_Way.zip HEAD }
Set-Alias -Name q2 -Value Composite-pushToDisc

<# # >> pushToAll ---------
function Composite-pushToAll { & qaA | qco . |git archive -o J:/Node_Way.zip HEAD | git push orign master }
Set-Alias -Name q0 -Value Composite-pushToAll #>

<# function Composite-GitAddComitPushAll { & qaA | qco . |qpus |qpus fss  $args}
Set-Alias -Name qacpx -Value Composite-GitAddComitPushAll #>



