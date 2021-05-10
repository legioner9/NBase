## Bash Commands



## file git config

    [user]
    	email = legioner9@inbox.ru
    	name = legioner9
    [core]
    	editor = 'C:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin
    [alias]
    	lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
 
### Настройка ветки по умолчанию

    $ git config --global init.defaultBranch main
### Проверка настроек

    $ git config --list
    
## Как получить помощь?

    $ git help <команда>
    $ git <команда> --help
    $ man git-<команда>
    $ git help config   
    
    $ git add -h
    usage: git add [<options>] [--] <pathspec>...
    -n, --dry-run dry run
    -v, --verbose be verbose
    -i, --interactive interactive picking
    -p, --patch select hunks interactively
    -e, --edit edit current diff and apply
    -f, --force allow adding otherwise ignored files
    -u, --update update tracked files
    --renormalize renormalize EOL of tracked files (implies -u)
    -N, --intent-to-add record only the fact that the path will be added later
    -A, --all add changes from all tracked and untracked files
    --ignore-removal ignore paths removed in the working tree (same as --no-all)
    --refresh don't add, only refresh the index
    --ignore-errors just skip files which cannot be added because of errors
    --ignore-missing check if - even missing - files are ignored in dry run
    --chmod (+|-)x override the executable bit of the listed files

## commit [create commit from HEAD]

    //COM - commit
    //BR - branch
    //HEAD<->BR - BR is activ
    //BR->COM - BR poinds to COM
    //HEAD->COM - HEAD poinds to COM
    //chCOM!=ch(COM!)=(child from COM!)

    git {from HEAD->COM!} 
    commit {=> create chCOM! & HEAD->chCOM!};
     

## make branch [create branch from HEAD]

    git {HEAD->COM!} 
    branch <BR::new:arg> {=> create arg->COM!};
    
## checkout [transfer HEAD to arg1]

    git  checkout <COM:arg> {=> HEAD->arg};
    git  checkout <BR:arg> {=> HEAD<->arg};
    
### checkout -b [transfer HEAD to new branch]

    git {HEAD->COM!} 
    checkout -b <BR::new:arg> {=>create (BR::new<->HEAD)->COM!};
     
## merge [create & transfer HEAD to commit new(HEAD+arg1)']

    ch(COM) - chaild of COM

    git {with HEAD} 
    merge <COM:arg> {=> HEAD->(new ch(HEAD+arg))};

## rebase

    //comPAR=comPAR(COM,COM!) - common not close parent COM and COM!
    //chainPar=chainPar(COM!,PAR!=comPAR(COM,COM!)) - chain of //commits from COM! to PAR!
    //chainFree=chainFree(COM!,PAR!=comPAR(COM,COM!))=chainPar-comP//AR
    //first(chainFree) - first commit from chainFree
    //last(chainFree) - last commit from chainFree


    git {from HEAD->COM! to COM} 
    rebase <toCOM:arg> {=>  HEAD->last(chainFree) & ch(COM)=first(chainFree)}
     
    
![](_src/rebase_before.png)

![](_src/rebase_c3.png)

![](_src/rebase_afer_rebase_c3.png)

## ^

    git checkout HEAD^
    
## ~ 

    git checkout HEAD~2
    
## remote

### -v

    git remote -v
    





    












