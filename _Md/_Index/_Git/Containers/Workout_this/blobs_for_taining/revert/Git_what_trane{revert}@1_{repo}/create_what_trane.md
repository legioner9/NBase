    {shape_11}={
            {st}={
                [e3874cc commit mas2]:[
                    sta1:'sta1 to stash',
                ]
            }
            {fs}={
                mas1:'',
                mas2:'',
                mas3:'',
                cl_ws:'',
                cl_in:'',
                mo_in:'modify mo_in',                
            }
            {ws}={
                cl_ws:'',
                mo_in:'modify mo_in',          
            }
            {in}={
                cl_in:'',
                mo_in:'',                                
            }
            }
            {lr}={
                [master (root-commit) ae177be]:[
                    mas1:'',
                ],
                [master e3874cc]:[
                    mas2:'',
                ],
                [master bc9d637]:{
                    mas3:'',
                }
            }
            {ur}={}
        }

    $ git st
        Refresh index: 100% (5/5), done.
        On branch master
        Changes to be committed:
        (use "git restore --staged <file>..." to unstage)
                new file:   cl_in
                new file:   mo_in

        Changes not staged for commit:
        (use "git add <file>..." to update what will be committed)
        (use "git restore <file>..." to discard changes in working directory)
                modified:   mo_in

        Untracked files:
        (use "git add <file>..." to include in what will be committed)
                cl_ws

    $ git lg
        * bc9d637 - (HEAD -> master) commit mas3 (20 hours ago) <legioner9>
        * e3874cc - commit mas2 (24 hours ago) <legioner9>
        * ae177be - commit mas1 (32 hours ago) <legioner9>

    $ git stash list
        stash@{0}: WIP on master: e3874cc commit mas2

![](_src/create_start_blob_1@1.1_{ws}.png)

![](_src/create_start_blob_1@1.1_{st}.png)

## NAME
git-revert - Revert some existing commits
git-revert - Отменить некоторые существующие коммиты

## SYNOPSIS
    git revert [--[no-]edit] [-n] [-m parent-number] [-s] [-S[<keyid>]] <commit>…​
    git revert (--continue | --skip | --abort | --quit)
## DESCRIPTION
Given one or more existing commits, revert the changes that the related patches introduce, and record some new commits that record them. This requires your working tree to be clean (no modifications from the HEAD commit).

Учитывая один или несколько существующих коммитов, отмените изменения, вносимые соответствующими патчами, и запишите некоторые новые коммиты, которые их записывают. Это требует, чтобы ваше рабочее дерево было чистым (без изменений из фиксации HEAD).

Note: `git revert` is used to record some new commits to reverse the effect of some earlier commits (often only a faulty one). If you want to throw away all uncommitted changes in your working directory, you should see git-reset(1), particularly the `--hard` option. If you want to extract specific files as they were in another commit, you should see git-restore(1), specifically the `--source` option. Take care with these alternatives as both will discard uncommitted changes in your working directory.

Примечание: `git revert` используется для записи некоторых новых коммитов, чтобы отменить эффект некоторых более ранних коммитов (часто только ошибочных). Если вы хотите выбросить все незафиксированные изменения в вашем рабочем каталоге, вы должны увидеть git-reset (1) , особенно `--hard`параметр. Если вы хотите извлечь определенные файлы, как они были в другом коммите, вы должны увидеть git-restore (1) , в частности `--source` параметр. Будьте осторожны с этими альтернативами, так как оба будут отбрасывать незафиксированные изменения в вашем рабочем каталоге.

See "Reset, restore and revert" in git(1) for the differences between the three commands.

