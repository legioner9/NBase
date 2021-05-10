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

## OPTIONS
### -s \<tree>
    --source=<tree>
Restore the working tree f
iles with the content from the given tree. It is common to specify the source tree by naming a commit, branch or tag associated with it.

If not specified, the contents are restored from `HEAD` if `--staged` is given, otherwise from the index.

###  -p
    --patch
Interactively select hunks in the difference between the restore source and the restore location. See the “Interactive Mode” section of git-add(1) to learn how to operate the --patch mode.

Note that --patch can accept no pathspec and will prompt to restore all modified paths.

### -W

    --worktree
### -S

    --staged
Specify the restore location. If neither option is specified, by default the working tree is restored. Specifying --staged will only restore the index. Specifying both restores both.

### -q
    --quiet
Quiet, suppress feedback messages. Implies `--no-progress`.

    --progress
    --no-progress
Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified. This flag enables progress reporting even if not attached to a terminal, regardless of --quiet.

    --ours
    --theirs
When restoring files in the working tree from the index, use stage #2 (ours) or #3 (theirs) for unmerged paths.

Note that during git rebase and git pull --rebase, ours and theirs may appear swapped. See the explanation of the same options in git-checkout(1) for details.

### -m
    --merge
When restoring files on the working tree from the index, recreate the conflicted merge in the unmerged paths.

    --conflict=<style>
The same as --merge option above, but changes the way the conflicting hunks are presented, overriding the merge.conflictStyle configuration variable. Possible values are "merge" (default) and "diff3" (in addition to what is shown by "merge" style, shows the original contents).

    --ignore-unmerged
When restoring files on the working tree from the index, do not abort the operation if there are unmerged entries and neither --ours, --theirs, --merge or --conflict is specified. Unmerged paths on the working tree are left alone.

    --ignore-skip-worktree-bits
In sparse checkout mode, by default is to only update entries matched by \<pathspec> and sparse patterns in $GIT_DIR/info/sparse-checkout. This option ignores the sparse patterns and unconditionally restores any files in \<pathspec>.

    --recurse-submodules
    --no-recurse-submodules
If \<pathspec> names an active submodule and the restore location includes the working tree, the submodule will only be updated if this option is given, in which case its working tree will be restored to the commit recorded in the superproject, and any local modifications overwritten. If nothing (or --no-recurse-submodules) is used, submodules working trees will not be updated. Just like git-checkout(1), this will detach HEAD of the submodule.

    --overlay
    --no-overlay
In overlay mode, the command never removes files when restoring. In no-overlay mode, tracked files that do not appear in the --source tree are removed, to make them match \<tree> exactly. The default is no-overlay mode.

    --pathspec-from-file=<file>
Pathspec is passed in \<file> instead of commandline args. If \<file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config(1)). See also --pathspec-file-nul and global --literal-pathspecs.

    --pathspec-file-nul
Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).

    --
Do not interpret any more arguments as options.

    <pathspec>…​
Limits the paths affected by the operation.

For more details, see the pathspec entry in gitglossary(7).

## EXAMPLES
The following sequence switches to the master branch, reverts the Makefile to two revisions back, deletes hello.c by mistake, and gets it back from the index.

Следующая последовательность переключается на `master`ветвь, возвращает `Makefile`две версии назад, по ошибке удаляет hello.c и возвращает его из индекса.

    $ git switch master
    $ git restore --source master~2 Makefile  (1)
    $ rm -f hello.c
    $ git restore hello.c                     (2)
1. take a file out of another commit
2. restore hello.c from the index

# 

1. взять файл из другого коммита
2. восстановить hello.c из индекса



If you want to restore all C source files to match the version in the index, you can say

Если вы хотите восстановить все исходные файлы C в соответствии с версией в индексе, вы можете сказать

    $ git restore '*.c'
Note the quotes around *.c. The file hello.c will also be restored, even though it is no longer in the working tree, because the file globbing is used to match entries in the index (not in the working tree by the shell).

Обратите внимание на цитаты вокруг *.c. Файл hello.cтакже будет восстановлен, даже если он больше не находится в рабочем дереве, поскольку подстановка файлов используется для сопоставления записей в индексе (а не в рабочем дереве оболочкой).

To restore all files in the current directory

Чтобы восстановить все файлы в текущем каталоге

    $ git restore .
or to restore all working tree files with top pathspec magic (see gitglossary(7))

или восстановить все рабочие файлы дерева с помощью магии top pathspec (см. gitglossary (7) )

    $ git restore :/
To restore a file in the index to match the version in HEAD (this is the same as using git-reset(1))

Чтобы восстановить файл в индексе, чтобы он соответствовал версии в HEAD(это то же самое, что использовать git-reset (1) )



    $ git restore --staged hello.c
or you can restore both the index and the working tree (this the same as using git-checkout(1))

или вы можете восстановить как индекс, так и рабочее дерево (это то же самое, что и при использовании git-checkout (1) )

    $ git restore --source=HEAD --staged --worktree hello.c
or the short form which is more practical but less readable:

или краткая форма, более практичная, но менее читаемая:

    $ git restore -s@ -SW hello.c