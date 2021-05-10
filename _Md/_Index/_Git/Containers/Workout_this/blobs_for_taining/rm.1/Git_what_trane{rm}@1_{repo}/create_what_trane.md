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
git-rm - Remove files from the working tree and from the index

##  SYNOPSIS
    git rm [-f | --force] [-n] [-r] [--cached] [--ignore-unmatch]
          [--quiet] [--pathspec-from-file=<file> [--pathspec-file-nul]]
          [--] [<pathspec>…​]
            
## DESCRIPTION
Remove files matching pathspec from the index, or from the working tree and the index. git rm will not remove a file from just your working directory. (There is no option to remove a file only from the working tree and yet keep it in the index; `use /bin/rm` if you want to do that.) The files being removed have to be identical to the tip of the branch, and no updates to their contents can be staged in the index, though that default behavior can be overridden with the -f option. When --cached is given, the staged content has to match either the tip of the branch or the file on disk, allowing the file to be removed from just the index.

Удалите файлы, соответствующие pathspec, из индекса или из рабочего дерева и индекса. `git rm`не удалит файл только из вашего рабочего каталога. (Нет возможности удалить файл только из рабочего дерева и при этом сохранить его в индексе; используйте, `/bin/rm`если вы хотите это сделать.) Удаляемые файлы должны быть идентичны верхушке ветви, и никаких обновлений для их содержимое может быть помещено в индекс, хотя это поведение по умолчанию можно переопределить с помощью этой `-f`опции. Когда `--cached`указан, поэтапное содержимое должно соответствовать либо кончику ветви, либо файлу на диске, что позволяет удалить файл только из индекса.


## OPTIONS
### <pathspec>…​
Files to remove. A leading directory name (e.g. dir to remove `dir/file1` and `dir/file2`) can be given to remove all files in the directory, and recursively all sub-directories, but this requires the `-r` option to be explicitly given.

Файлы для удаления. Начальное имя каталога (например, `dir`для удаления `dir/file1`и `dir/file2`) может быть дано для удаления всех файлов в каталоге и рекурсивно всех подкаталогов, но для этого необходимо `-r`явно указать параметр.

The command removes only the paths that are known to Git.

Команда удаляет только пути, известные Git.

File globbing matches across directory boundaries. Thus, given two directories d and d2, there is a difference between using git rm 'd*' and git rm 'd/*', as the former will also remove all of directory d2.

Подстановка файлов соответствует границам каталогов. Таким образом, для двух каталогов dи d2существует разница между использованием `git rm 'd*'`и `git rm 'd/*'`, поскольку первый также удалит весь каталог d2.

For more details, see the pathspec entry in gitglossary(7).

### -f
    --force
Override the up-to-date check.

Отменить проверку актуальности.

### -n
    --dry-run
Don’t actually remove any file(s). Instead, just show if they exist in the index and would otherwise be removed by the command.

На самом деле не удаляйте никакие файлы. Вместо этого просто покажите, существуют ли они в индексе и в противном случае были бы удалены командой.

### -r
Allow recursive removal when a leading directory name is given.

Разрешить рекурсивное удаление, если указано имя ведущего каталога.

###  --
This option can be used to separate command-line options from the list of files, (useful when filenames might be mistaken for command-line options).

    --cached
Use this option to unstage and remove paths only from the index. Working tree files, whether modified or not, will be left alone.

    --ignore-unmatch
Exit with a zero status even if no files matched.

### -q
    --quiet
git rm normally outputs one line (in the form of an rm command) for each file removed. This option suppresses that output.

`git rm`обычно выводит одну строку (в виде rmкоманды) для каждого удаленного файла. Эта опция подавляет этот вывод.

    --pathspec-from-file=<file>
Pathspec is passed in \<file> instead of commandline args. If \<file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config(1)). See also `--pathspec-file-nul` and global `--literal-pathspecs`.

Pathspec передается \<file>вместо аргументов командной строки. Если \<file>это точно, -то используется стандартный ввод. Элементы Pathspec разделяются LF или CR / LF. Элементы pathspec могут быть указаны в кавычках, как описано для переменной конфигурации core.quotePath (см. Git-config (1) ). Смотрите также `--pathspec-file-nul`и global `--literal-pathspecs`.

    --pathspec-file-nul
Only meaningful with `--pathspec-from-file`. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).

Только значимый с `--pathspec-from-file`. Элементы Pathspec разделяются символом NUL, а все остальные символы воспринимаются буквально (включая символы новой строки и кавычки).

## REMOVING FILES THAT HAVE DISAPPEARED FROM THE FILESYSTEM
There is no option for `git rm` to remove from the index only the paths that have disappeared from the filesystem. However, depending on the use case, there are several ways that can be done.

Нет возможности `git rm`удалить из индекса только те пути, которые исчезли из файловой системы. Однако, в зависимости от варианта использования, это можно сделать несколькими способами.

### Using “git commit -a”
If you intend that your next commit should record all modifications of tracked files in the working tree and record all removals of files that have been removed from the working tree with `rm `(as opposed to `git rm`), use `git commit -a`, as it will automatically notice and record all removals. You can also have a similar effect without committing by using `git add -u`.

Если вы предполагаете, что ваша следующая фиксация должна записывать все модификации отслеживаемых файлов в рабочем дереве и записывать все удаления файлов, которые были удалены из рабочего дерева с помощью `rm` (в отличие от `git rm`), используйте `git commit -a`, поскольку он автоматически заметит и запишет все удаления . Вы также можете получить аналогичный эффект без фиксации, используя `git add -u`.

### Using “git add -A”
When accepting a new code drop for a vendor branch, you probably want to record both the removal of paths and additions of new paths as well as modifications of existing paths.

Принимая новый код для ветки поставщика, вы, вероятно, захотите записать как удаление путей, так и добавление новых путей, а также модификации существующих путей.

Typically you would first remove all tracked files from the working tree using this command:

Обычно вы сначала удаляете все отслеживаемые файлы из рабочего дерева с помощью этой команды:

    git ls-files -z | xargs -0 rm -f
and then untar the new code in the working tree. Alternately you could rsync the changes into the working tree.

а затем распаковать новый код в рабочем дереве. В качестве альтернативы вы можете синхронизировать изменения в рабочем дереве.

After that, the easiest way to record all removals, additions, and modifications in the working tree is:

После этого самый простой способ записать все удаления, дополнения и модификации в рабочем дереве:

    git add -A
    
### Other ways
If all you really want to do is to remove from the index the files that are no longer present in the working tree (perhaps because your working tree is dirty so that you cannot use git commit -a), use the following command:

    git diff --name-only --diff-filter=D -z | xargs -0 git rm --cached
     

## SUBMODULES
Only submodules using a gitfile (which means they were cloned with a Git version 1.7.8 or newer) will be removed from the work tree, as their repository lives inside the .git directory of the superproject. If a submodule (or one of those nested inside it) still uses a .git directory, git rm will move the submodules git directory into the superprojects git directory to protect the submodule’s history. If it exists the `submodule.\<name>` section in the gitmodules(5) file will also be removed and that file will be staged (unless --cached or -n are used).

Только подмодули, использующие gitfile (что означает, что они были клонированы с Git версии 1.7.8 или новее), будут удалены из рабочего дерева, поскольку их репозиторий находится в каталоге .git суперпроекта. Если подмодуль (или один из вложенных в него) по-прежнему использует каталог .git, `git rm`он переместит каталог git подмодулей в каталог git суперпроектов для защиты истории подмодуля. Если он существует, раздел `submodule .\<name>` в файле gitmodules (5) также будет удален, и этот файл будет поставлен (если не используются --cached или -n).

A submodule is considered up to date when the HEAD is the same as recorded in the index, no tracked files are modified and no untracked files that aren’t ignored are present in the submodules work tree. Ignored files are deemed expendable and won’t stop a submodule’s work tree from being removed.

Подмодуль считается актуальным, если HEAD совпадает с записанным в индексе, отслеживаемые файлы не изменяются и в дереве работы подмодулей нет неотслеживаемых файлов, которые не игнорируются. Игнорируемые файлы считаются расходуемыми и не препятствуют удалению рабочего дерева подмодуля.

If you only want to remove the local checkout of a submodule from your work tree without committing the removal, use git-submodule(1) `deinit` instead. Also see gitsubmodules(7) for details on submodule removal.

Если вы хотите удалить только локальную проверку подмодуля из своего рабочего дерева без подтверждения удаления, используйте вместо этого git-submodule (1) `deinit` . Также см. Gitsubmodules (7) для получения подробной информации об удалении подмодуля.

## EXAMPLES
    git rm Documentation/\*.txt
Removes all `*.txt` files from the index that are under the Documentation directory and any of its subdirectories.

Удаляет `*.txt`из индекса все файлы, находящиеся в Documentationкаталоге и любых его подкаталогах.

Note that the asterisk * is quoted from the shell in this example; this lets Git, and not the shell, expand the pathnames of files and subdirectories under the `Documentation/` directory.

Обратите внимание, что *в этом примере звездочка цитируется в оболочке; это позволяет Git, а не оболочке, расширять пути к файлам и подкаталогам в `Documentation/`каталоге.

    git rm -f git-*.sh
Because this example lets the shell expand the asterisk (i.e. you are listing the files explicitly), it does not remove `subdir/git-foo.sh`.

Поскольку этот пример позволяет оболочке расширять звездочку (т.е. вы явно перечисляете файлы), она не удаляет subdir/git-foo.sh.

## BUGS
Each time a superproject update removes a populated submodule (e.g. when switching between commits before and after the removal) a stale submodule checkout will remain in the old location. Removing the old directory is only safe when it uses a gitfile, as otherwise the history of the submodule will be deleted too. This step will be obsolete when recursive submodule update has been implemented.

Каждый раз, когда обновление суперпроекта удаляет заполненный подмодуль (например, при переключении между фиксациями до и после удаления), проверка устаревшего подмодуля будет оставаться в старом месте. Удаление старого каталога безопасно только при использовании gitfile, иначе история подмодуля также будет удалена. Этот шаг станет устаревшим, если будет реализовано рекурсивное обновление подмодуля.