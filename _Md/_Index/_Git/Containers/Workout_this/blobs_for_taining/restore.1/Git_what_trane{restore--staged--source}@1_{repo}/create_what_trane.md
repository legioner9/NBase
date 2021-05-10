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

## SYNOPSIS

    git restore [<options>] [--source=<tree>] [--staged] [--worktree] [--] <pathspec>…​
    
    git restore [<options>] [--source=<tree>] [--staged] [--worktree] --pathspec-from-file=<file> [--pathspec-file-nul]
    
    git restore (-p|--patch) [<options>] [--source=<tree>] [--staged] [--worktree] [--] [<pathspec>…​]
     

## DESCRIPTION
Restore specified paths in the working tree with some contents from a restore source. If a path is tracked but does not exist in the restore source, it will be removed to match the source.

Восстановить указанные пути в рабочем дереве с некоторым содержимым из источника восстановления. Если путь отслеживается, но не существует в источнике восстановления, он будет удален в соответствии с источником.

The command can also be used to restore the content in the index with `--staged`, or `restore` both the working tree and the index with `--staged --worktree`.

Эту команду также можно использовать для восстановления содержимого индекса с помощью `--staged`или восстановления рабочего дерева и индекса с помощью `--staged --worktree`.

By default, if --staged is given, the contents are restored from HEAD, otherwise from the index. Use --source to restore from a different commit.

По умолчанию, если `--staged`задано, содержимое восстанавливается из `HEAD`индекса, в противном случае - из индекса. Используйте `--source`для восстановления из другого коммита.

See "Reset, restore and revert" in git(1) for the differences between the three commands.

## EXAMPLES
The following sequence switches to the master branch, reverts the Makefile to two revisions back, deletes hello.c by mistake, and gets it back from the index.

$ git switch master
$ git restore --source master~2 Makefile  (1)
$ rm -f hello.c
$ git restore hello.c                     (2)
take a file out of another commit

restore hello.c from the index

If you want to restore all C source files to match the version in the index, you can say

$ git restore '*.c'
Note the quotes around *.c. The file hello.c will also be restored, even though it is no longer in the working tree, because the file globbing is used to match entries in the index (not in the working tree by the shell).

To restore all files in the current directory

$ git restore .
or to restore all working tree files with top pathspec magic (see gitglossary(7))

$ git restore :/
To restore a file in the index to match the version in HEAD (this is the same as using git-reset(1))

$ git restore --staged hello.c
or you can restore both the index and the working tree (this the same as using git-checkout(1))

$ git restore --source=HEAD --staged --worktree hello.c
or the short form which is more practical but less readable:

$ git restore -s@ -SW hello.c