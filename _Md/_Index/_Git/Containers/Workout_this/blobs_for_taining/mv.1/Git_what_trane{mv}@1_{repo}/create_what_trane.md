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
git-mv - Move or rename a file, a directory, or a symlink

## SYNOPSIS
git mv \<options>…​ \<args>…​

## DESCRIPTION
Move or rename a file, directory or symlink.

Переместите или переименуйте файл, каталог или символическую ссылку.

    git mv [-v] [-f] [-n] [-k] <source> <destination>
    git mv [-v] [-f] [-n] [-k] <source> ... <destination directory>
     
In the first form, it renames \<source>, which must exist and be either a file, symlink or directory, to \<destination>. In the second form, the last argument has to be an existing directory; the given sources will be moved into this directory.

The index is updated after successful completion, but the change must still be committed.

В первой форме он переименовывает \<source>, который должен существовать и быть либо файлом, либо символической ссылкой, либо каталогом, в \<destination>. Во второй форме последним аргументом должен быть существующий каталог; указанные источники будут перемещены в этот каталог.

Индекс обновляется после успешного завершения, но изменение все равно необходимо зафиксировать.

## OPTIONS
### -f
    --force
Force renaming or moving of a file even if the target exists

### -k
Skip move or rename actions which would lead to an error condition. An error happens when a source is neither existing nor controlled by Git, or when it would overwrite an existing file unless `-f` is given.

Пропустите действия по перемещению или переименованию, которые могут привести к возникновению ошибки. Ошибка возникает, когда источник не существует и не контролируется Git, или когда он перезаписывает существующий файл, если он `-f`не указан.

### -n
    --dry-run
Do nothing; only show what would happen

### -v
    --verbose
Report the names of files as they are moved.

Сообщайте имена файлов по мере их перемещения.

## SUBMODULES
Moving a submodule using a gitfile (which means they were cloned with a Git version 1.7.8 or newer) will update the gitfile and `core.worktree` setting to make the submodule work in the new location. It also will attempt to update the `submodule.\<name>`.path setting in the gitmodules(5) file and stage that file (unless `-n` is used).

Перемещение подмодуля с использованием gitfile (что означает, что они были клонированы с Git версии 1.7.8 или новее) обновит настройки gitfile и `core.worktree`, чтобы подмодуль работал в новом месте. Он также попытается обновить параметр submodule. <name> .path в файле gitmodules (5) и обработать этот файл (если не используется -n).

## BUGS
Each time a superproject update moves a populated submodule (e.g. when switching between commits before and after the move) a stale submodule checkout will remain in the old location and an empty directory will appear in the new location. To populate the submodule again in the new location the user will have to run "git submodule update" afterwards. Removing the old directory is only safe when it uses a gitfile, as otherwise the history of the submodule will be deleted too. Both steps will be obsolete when recursive submodule update has been implemented.

Каждый раз, когда обновление суперпроекта перемещает заполненный подмодуль (например, при переключении между фиксациями до и после перемещения), проверка устаревшего подмодуля будет оставаться в старом месте, а пустой каталог появится в новом месте. Чтобы снова заполнить подмодуль в новом месте, пользователю нужно будет после этого запустить «git submodule update». Удаление старого каталога безопасно только при использовании gitfile, иначе история подмодуля также будет удалена. Оба шага станут устаревшими, когда будет реализовано рекурсивное обновление подмодуля.