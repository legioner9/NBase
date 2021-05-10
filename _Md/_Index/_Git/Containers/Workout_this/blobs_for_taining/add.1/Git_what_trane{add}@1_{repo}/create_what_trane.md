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



• e.g. /iːˈdʒiː/ — это аббревиатура от непростой латинской фразы «exempli gratia», которая означает «например». Она используется в качестве сокращения фразы «for example» (например, к примеру, для примера).

В качестве примера: I like citrus fruits (e.g., oranges and lemons) / Я люблю цитрусы (например, апельсины и лимоны)


• i.e. /ʌɪˈiː/ — это тоже аббревиатура от еще одной экзотической латинской фразы (на этот раз — «id est»), которая очень часто используется как сокращение выражения «that is to say» (другими словами, иначе говоря, то есть).

# [git-add(1) Manual Page](file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/git-add.html)

## NAME
git-add - Add file contents to the index

## SYNOPSIS
    git add [--verbose | -v] [--dry-run | -n] [--force | -f] [--interactive | -i] [--patch | -p]
              [--edit | -e] [--[no-]all | --[no-]ignore-removal | [--update | -u]]
              [--intent-to-add | -N] [--refresh] [--ignore-errors] [--ignore-missing] [--renormalize]
              [--chmod=(+|-)x] [--pathspec-from-file=<file> [--pathspec-file-nul]]
              [--] [<pathspec>…​]
               
## DESCRIPTION
This command updates the index using the current content found in the working tree, to prepare the content staged for the next commit. It typically adds the current content of existing paths as a whole, but with some options it can also be used to add content with only part of the changes made to the working tree files applied, or remove paths that do not exist in the working tree anymore.

Эта команда обновляет индекс, используя текущее содержимое, найденное в рабочем дереве, чтобы подготовить содержимое для следующей фиксации. Обычно он добавляет текущее содержимое существующих путей в целом, но с некоторыми параметрами его также можно использовать для добавления содержимого с применением только части изменений, внесенных в файлы рабочего дерева, или удаления путей, которые не существуют в рабочем дереве. больше.

The "index" holds a snapshot of the content of the working tree, and it is this snapshot that is taken as the contents of the next commit. Thus after making any changes to the working tree, and before running the commit command, you must use the `add` command to add any new or modified files to the index.

«Индекс» содержит снимок содержимого рабочего дерева, и именно этот снимок используется в качестве содержимого следующей фиксации. Таким образом, после внесения каких-либо изменений в рабочее дерево и перед запуском команды фиксации вы должны использовать `add`команду для добавления любых новых или измененных файлов в индекс.

This command can be performed multiple times before a commit. It only adds the content of the specified file(s) at the time the add command is run; if you want subsequent changes included in the next commit, then you must run `git add` again to add the new content to the index.

Эту команду можно выполнить несколько раз перед фиксацией. Он только добавляет содержимое указанного файла (ов) во время выполнения команды добавления; если вы хотите, чтобы последующие изменения были включены в следующую фиксацию, вы должны запустить git addснова, чтобы добавить новое содержимое в индекс.

The `git status` command can be used to obtain a summary of which files have changes that are staged for the next commit.

`git status`Команда может быть использована для получения резюме, какие файлы имеют изменения, постановочные для следующей фиксации.

The git add command will not add ignored files by default. If any ignored files were explicitly specified on the command line, git add will fail with a list of ignored files. Ignored files reached by directory recursion or filename globbing performed by Git (quote your globs before the shell) will be silently ignored. The git add command can be used to add ignored files with the -f (force) option.

По `git add`умолчанию команда не добавляет игнорируемые файлы. Если какие-либо игнорируемые файлы были явно указаны в командной строке, `git add` произойдет сбой со списком игнорируемых файлов. Игнорируемые файлы, доступные в результате рекурсии каталогов или подстановки имен файлов, выполняемой Git (укажите ваши глобусы перед оболочкой), будут автоматически игнорироваться. Мерзавец добавить команду можно использовать для добавления игнорируемых файлов с `-f`опцией (силы).

Please see git-commit(1) for alternative ways to add content to a commit.  

## OPTIONS
    <pathspec>…​
Files to add content from. Fileglobs (e.g. `*.c`) can be given to add all matching files. Also a leading directory name (e.g. dir to add d`ir/file1` and `dir/file2`) can be given to update the index to match the current state of the directory as a whole (e.g. specifying dir will record not just a file `dir/file1` modified in the working tree, a file `dir/file2` added to the working tree, but also a file `dir/file3` removed from the working tree). Note that older versions of Git used to ignore removed files; use `--no-all` option if you want to add modified or new files but ignore removed ones.

Файлы, из которых нужно добавить контент. Fileglobs (например `*.c`) могут быть предоставлены для добавления всех совпадающих файлов. Также можно указать начальное имя каталога (например, `dir`для добавления `dir/file1` и `dir/file2`) для обновления индекса, чтобы он соответствовал текущему состоянию каталога в целом (например, указание `dir`будет записывать не только файл, `dir/file1` измененный в рабочем дереве, файл, `dir/file2`добавленный в рабочее дерево. tree, но и файл, `dir/file`3удаленный из рабочего дерева). Обратите внимание, что старые версии Git игнорировали удаленные файлы; используйте `--no-all`опцию, если вы хотите добавить измененные или новые файлы, но игнорировать удаленные.

For more details about the \<pathspec> syntax, see the pathspec entry in gitglossary(7).

### -n
    --dry-run
Don’t actually add the file(s), just show if they exist and/or will be ignored.

Фактически не добавляйте файл (ы), просто покажите, существуют ли они и / или будут ли они проигнорированы.

### -v
    --verbose
Be verbose.

### -f
    --force
Allow adding otherwise ignored files.

### -i
    --interactive
Add modified contents in the working tree interactively to the index. Optional path arguments may be supplied to limit operation to a subset of the working tree. See “Interactive mode” for details.

### -p
    --patch
Interactively choose hunks of patch between the index and the work tree and add them to the index. This gives the user a chance to review the difference before adding modified contents to the index.

В интерактивном режиме выберите фрагменты патча между индексом и деревом работы и добавьте их в индекс. Это дает пользователю возможность проверить разницу перед добавлением измененного содержимого в индекс.

This effectively runs `add --interactive`, but bypasses the initial command menu and directly jumps to the patch subcommand. See “Interactive mode” for details.

Это эффективно работает add --interactive, но обходит начальное меню команд и сразу переходит к patchподкоманде. Подробнее см. «Интерактивный режим»

### -e
    --edit
Open the diff vs. the index in an editor and let the user edit it. After the editor was closed, adjust the hunk headers and apply the patch to the index.

Откройте сравнение с индексом в редакторе и позвольте пользователю редактировать его. После закрытия редактора настройте заголовки блоков и примените исправление к индексу.

The intent of this option is to pick and choose lines of the patch to apply, or even to modify the contents of lines to be staged. This can be quicker and more flexible than using the interactive hunk selector. However, it is easy to confuse oneself and create a patch that does not apply to the index. See EDITING PATCHES below.

Назначение этой опции состоит в том, чтобы выбрать строки патча для применения или даже изменить содержимое строк для постановки. Это может быть быстрее и гибче, чем использование интерактивного селектора фрагментов. Однако легко запутаться и создать патч, не относящийся к индексу. См. РЕДАКТИРОВАНИЕ ПАТЧЕЙ ниже.

### -u
    --update
Update the index just where it already has an entry matching \<pathspec>. This removes as well as modifies index entries to match the working tree, but adds no new files.

Обновите индекс там, где уже есть запись, соответствующая \<pathspec>. Это удаляет, а также изменяет записи индекса в соответствии с рабочим деревом, но не добавляет новых файлов.

If no \<pathspec> is given when -u option is used, all tracked files in the entire working tree are updated (old versions of Git used to limit the update to the current directory and its subdirectories).

Если при использовании -uпараметра не указан \<pathspec> , обновляются все отслеживаемые файлы во всем рабочем дереве (старые версии Git использовались для ограничения обновления текущим каталогом и его подкаталогами).

### -A
    --all
    --no-ignore-removal
Update the index not only where the working tree has a file matching \<pathspec> but also where the index already has an entry. This adds, modifies, and removes index entries to match the working tree.

Обновите индекс не только там, где в рабочем дереве есть файл, соответствующий \<pathspec>, но и там, где в индексе уже есть запись. Это добавляет, изменяет и удаляет записи индекса в соответствии с рабочим деревом.

If no \<pathspec> is given when -A option is used, all files in the entire working tree are updated (old versions of Git used to limit the update to the current directory and its subdirectories).

Если при использовании -Aпараметра не указан \<pathspec> , обновляются все файлы во всем рабочем дереве (старые версии Git использовались для ограничения обновления текущим каталогом и его подкаталогами).

    --no-all
    --ignore-removal
Update the index by adding new files that are unknown to the index and files modified in the working tree, but ignore files that have been removed from the working tree. This option is a no-op when no \<pathspec> is used.

Обновите индекс, добавляя новые файлы, которые неизвестны индексу, и файлы, измененные в рабочем дереве, но игнорируйте файлы, которые были удалены из рабочего дерева. Эта опция не работает, когда не используется \<pathspec>.

This option is primarily to help users who are used to older versions of Git, whose "git add \<pathspec>…​" was a synonym for "git add --no-all \<pathspec>…​", i.e. ignored removed files.

Этот параметр в первую очередь предназначен для помощи пользователям, которые привыкли к более старым версиям Git, чьи «git add \<pathspec>…» были синонимом «git add --no-all \<pathspec>…», то есть игнорировали удаленные файлы.

### -N
    --intent-to-add
Record only the fact that the path will be added later. An entry for the path is placed in the index with no content. This is useful for, among other things, showing the unstaged content of such files with `git diff and committing them with `git commit -a`.

Запишите только тот факт, что путь будет добавлен позже. Запись для пути помещается в указатель без содержимого. Это полезно, помимо прочего, для отображения неустановленного содержимого таких файлов `git diff`и фиксации их с помощью `git commit -a`.

    --refresh
Don’t add the file(s), but only refresh their `stat()` information in the index.

Не добавляйте файлы, а только обновляйте их информацию `stat ()` в индексе.

    --ignore-errors
If some files could not be added because of errors indexing them, do not abort the operation, but continue adding the others. The command shall still exit with non-zero status. The configuration variable `add.ignoreErrors` can be set to true to make this the default behaviour.

Если некоторые файлы не могут быть добавлены из-за ошибок их индексации, не прерывайте операцию, а продолжайте добавлять другие. Команда по-прежнему должна завершиться с ненулевым статусом. Для переменной конфигурации `add.ignoreErrors`можно задать значение true, чтобы сделать это поведением по умолчанию.

    --ignore-missing
This option can only be used together with `--dry-run`. By using this option the user can check if any of the given files would be ignored, no matter if they are already present in the work tree or not.

Этот параметр можно использовать только вместе с `--dry-run`. Используя эту опцию, пользователь может проверить, будет ли проигнорирован какой-либо из заданных файлов, независимо от того, присутствуют ли они уже в рабочем дереве или нет.

    --no-warn-embedded-repo
By default, git add will warn when adding an embedded repository to the index without using git submodule add to create an entry in .gitmodules. This option will suppress the warning (e.g., if you are manually performing operations on submodules).

По умолчанию `git add`будет предупреждать при добавлении встроенного репозитория в индекс без использования `git submodule add`для создания записи в .gitmodules. Эта опция подавляет предупреждение (например, если вы вручную выполняете операции с подмодулями).

    --renormalize
Apply the "clean" process freshly to all tracked files to forcibly add them again to the index. This is useful after changing core.autocrlf configuration or the `text` attribute in order to correct files added with wrong CRLF/LF line endings. This option implies -u.

Примените «чистый» процесс заново ко всем отслеживаемым файлам, чтобы принудительно добавить их снова в индекс. Это полезно после изменения `core.autocrlf`конфигурации или `text`атрибута, чтобы исправить файлы, добавленные с неправильными окончаниями строк CRLF / LF. Этот вариант подразумевает -u.

    --chmod=(+|-)x
Override the executable bit of the added files. The executable bit is only changed in the index, the files on disk are left unchanged.

Замените исполняемый бит добавленных файлов. Исполняемый бит изменяется только в индексе, файлы на диске остаются без изменений.

    --pathspec-from-file=\<file>
Pathspec is passed in \<file> instead of commandline args. If \<file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config(1)). See also `--pathspec-file-nul` and global `--literal-pathspecs`.

    --pathspec-file-nul
Only meaningful with `--pathspec-from-file`. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).

### --
This option can be used to separate command-line options from the list of files, (useful when filenames might be mistaken for command-line options).

Этот параметр можно использовать для отделения параметров командной строки от списка файлов (полезно, когда имена файлов могут быть ошибочно приняты за параметры командной строки).

## EXAMPLES
- Adds content from all *.txt files under Documentation directory and its subdirectories:

Добавляет содержимое из всех *.txtфайлов в Documentationкаталоге и его подкаталогах:

        $ git add Documentation/\*.txt
Note that the asterisk * is quoted from the shell in this example; this lets the command include the files from subdirectories of Documentation/ directory.

Обратите внимание, что *в этом примере звездочка цитируется в оболочке; это позволяет команде включать файлы из подкаталогов Documentation/каталога.

- Considers adding content from all git-*.sh scripts:

Рассматривает возможность добавления содержимого из всех скриптов git - *. Sh:

        $ git add git-*.sh
Because this example lets the shell expand the asterisk (i.e. you are listing the files explicitly), it does not consider subdir/git-foo.sh.

Поскольку этот пример позволяет оболочке раскрывать звездочку (т.е. вы явно перечисляете файлы), он не учитывает subdir/git-foo.sh.

## INTERACTIVE MODE
When the command enters the interactive mode, it shows the output of the status subcommand, and then goes into its interactive command loop.

Когда команда входит в интерактивный режим, она показывает вывод подкоманды состояния , а затем переходит в интерактивный командный цикл.

The command loop shows the list of subcommands available, and gives a prompt "What now> ". In general, when the prompt ends with a single >, you can pick only one of the choices given and type return, like this:

Командный цикл показывает список доступных подкоманд и подсказку «Что теперь>». В общем, когда подсказка заканчивается одним > , вы можете выбрать только один из предложенных вариантов и ввести return, например:

    *** Commands ***
      1: status       2: update       3: revert       4: add untracked
      5: patch        6: diff         7: quit         8: help
    What now> 1
You also could say `s` or `sta` or `status` above as long as the choice is unique.

Вы также можете сказать `s`или `st`aили `status`выше, если выбор уникален.

The main command loop has 6 subcommands (plus help and quit).

В основном командном цикле есть 6 подкоманд (плюс помощь и выход).

### status
This shows the change between HEAD and index (i.e. what will be committed if you say `git commit`), and between index and working tree files (i.e. what you could stage further before `git commit` using `git add`) for each path. A sample output looks like this:

Это показывает изменение между `HEAD` и индексом (то есть, что будет зафиксировано, если вы скажете `git commit`), и между индексным файлом и файлом рабочего дерева (то есть то, что вы могли бы выполнить дальше перед `git commit`использованием `git add`) для каждого пути. Пример вывода выглядит так:

              staged     unstaged path
     1:       binary      nothing foo.png
     2:     +403/-35        +1/-1 git-add--interactive.perl  
It shows that `foo.png` has differences from HEAD (but that is binary so line count cannot be shown) and there is no difference between indexed copy and the working tree version (if the working tree version were also different, binary would have been shown in place of nothing). The other file, `git-add--interactive.perl`, has 403 lines added and 35 lines deleted if you commit what is in the index, but working tree file has further modifications (one addition and one deletion).

Он показывает, что foo.png имеет отличия от HEAD (но он является двоичным, поэтому количество строк не может быть показано), и нет никакой разницы между индексированной копией и версией рабочего дерева (если бы версия рабочего дерева также была другой, двоичный был бы показан вместо ничего ). В другой файл, `git-add - interactive.perl`, добавлено 403 строки и удалено 35 строк, если вы фиксируете то, что находится в индексе, но рабочий файл дерева имеет дальнейшие нения (одно добавление и одно удаление).

### update
This shows the status information and issues an "Update>>" prompt. When the prompt ends with double >>, you can make more than one selection, concatenated with whitespace or comma. Also you can say ranges. E.g. "2-5 7,9" to choose 2,3,4,5,7,9 from the list. If the second number in a range is omitted, all remaining patches are taken. E.g. "7-" to choose 7,8,9 from the list. You can say * to choose everything.

При этом отображается информация о состоянии и появляется запрос «Обновить >>». Когда подсказка заканчивается двойным >> , вы можете сделать более одного выбора, объединенные пробелом или запятой. Также вы можете сказать диапазоны. Например, «2-5 7,9» для выбора 2,3,4,5,7,9 из списка. Если второе число в диапазоне опущено, будут удалены все оставшиеся участки. Например, «7-», чтобы выбрать 7,8,9 из списка. Вы можете сказать *, чтобы выбрать все.



What you chose are then highlighted with *, like this:

То, что вы выбрали, затем выделяется * , например:

               staged     unstaged path
      1:       binary      nothing foo.png
    * 2:     +403/-35        +1/-1 git-add--interactive.perl
To remove selection, prefix the input with - like this:

Чтобы удалить выделение, добавьте к входу - следующий префикс :

    Update>> -2  
After making the selection, answer with an empty line to stage the contents of working tree files for selected paths in the index.

После выбора ответьте пустой строкой, чтобы поместить содержимое файлов рабочего дерева для выбранных путей в индекс.

### revert
This has a very similar UI to update, and the staged information for selected paths are reverted to that of the HEAD version. Reverting new paths makes them untracked.

У него очень похожий пользовательский интерфейс для обновления , а поэтапная информация для выбранных путей возвращается к версии HEAD. Обращение к новым путям делает их неотслеживаемыми.

### add untracked
This has a very similar UI to update and revert, and lets you add untracked paths to the index.

Он имеет очень похожий пользовательский интерфейс для обновления и возврата , и позволяет добавлять в индекс неотслеживаемые пути.

### patch
This lets you choose one path out of a status like selection. After choosing the path, it presents the diff between the index and the working tree file and asks you if you want to stage the change of each hunk. You can select one of the following options and type return:

Это позволяет вам выбрать один путь из такого статуса, как выбор. После выбора пути он представляет разницу между индексом и файлом рабочего дерева и спрашивает вас, хотите ли вы выполнить изменение каждого фрагмента. Вы можете выбрать один из следующих вариантов и ввести return:

    y - stage this hunk
    n - do not stage this hunk
    q - quit; do not stage this hunk or any of the remaining ones
    a - stage this hunk and all later hunks in the file
    d - do not stage this hunk or any of the later hunks in the file
    g - select a hunk to go to
    / - search for a hunk matching the given regex
    j - leave this hunk undecided, see next undecided hunk
    J - leave this hunk undecided, see next hunk
    k - leave this hunk undecided, see previous undecided hunk
    K - leave this hunk undecided, see previous hunk
    s - split the current hunk into smaller hunks
    e - manually edit the current hunk
    ? - print help
After deciding the fate for all hunks, if there is any hunk that was chosen, the index is updated with the selected hunks.

После определения судьбы всех блоков, если есть какой-либо выбранный блок, индекс обновляется выбранными блоками.

You can omit having to type return here, by setting the configuration variable `interactive.singleKey` to true.

Вы можете не вводить здесь return, установив для переменной конфигурации `interactive.singleKey`значение `true`.

### diff
This lets you review what will be committed (i.e. between HEAD and index).

Это позволяет вам просмотреть, что будет зафиксировано (например, между HEAD и index).

## EDITING PATCHES
Invoking `git add -e` or selecting `e` from the interactive hunk selector will open a patch in your editor; after the editor exits, the result is applied to the index. You are free to make arbitrary changes to the patch, but note that some changes may have confusing results, or even result in a patch that cannot be applied. If you want to abort the operation entirely (i.e., stage nothing new in the index), simply delete all lines of the patch. The list below describes some common things you may see in a patch, and which editing operations make sense on them.

Вызов `git add -e`или выбор `e`из интерактивного селектора фрагментов откроет патч в вашем редакторе; после выхода из редактора результат применяется к индексу. Вы можете вносить произвольные изменения в патч, но учтите, что некоторые изменения могут приводить к запутанным результатам или даже приводить к тому, что патч не может быть применен. Если вы хотите полностью прервать операцию (т.е. не добавлять в индекс ничего нового), просто удалите все строки патча. В списке ниже описаны некоторые общие вещи, которые вы можете увидеть в патче, и какие операции редактирования имеют для них смысл.

### added content
Added content is represented by lines beginning with "+". You can prevent staging any addition lines by deleting them.

Добавленный контент представлен строками, начинающимися с «+». Вы можете предотвратить постановку любых дополнительных строк, удалив их.

### removed content
Removed content is represented by lines beginning with "-". You can prevent staging their removal by converting the "-" to a " " (space).

Добавленный контент представлен строками, начинающимися с «+». Вы можете предотвратить постановку любых дополнительных строк, удалив их.

### modified content
Modified content is represented by "-" lines (removing the old content) followed by "+" lines (adding the replacement content). You can prevent staging the modification by converting "-" lines to " ", and removing "+" lines. Beware that modifying only half of the pair is likely to introduce confusing changes to the index.

Измененное содержимое представлено строками «-» (удаление старого содержимого), за которыми следуют строки «+» (добавление содержимого замены). Вы можете предотвратить постановку модификации, преобразовав строки «-» в «» и удалив строки «+». Помните, что изменение только половины пары может ввести в индекс непонятные изменения.

There are also more complex operations that can be performed. But beware that because the patch is applied only to the index and not the working tree, the working tree will appear to "undo" the change in the index. For example, introducing a new line into the index that is in neither the HEAD nor the working tree will stage the new line for commit, but the line will appear to be reverted in the working tree.

Есть также более сложные операции, которые можно выполнять. Но будьте осторожны, поскольку исправление применяется только к индексу, а не к рабочему дереву, рабочее дерево будет "отменять" изменение в индексе. Например, введение новой строки в индекс, который не находится ни в HEAD, ни в рабочем дереве, создаст новую строку для фиксации, но в рабочем дереве строка будет казаться перевернутой.

Avoid using these constructs, or do so with extreme caution.

Избегайте использования этих конструкций или делайте это с особой осторожностью.

### removing untouched content
Content which does not differ between the index and working tree may be shown on context lines, beginning with a " " (space). You can stage context lines for removal by converting the space to a "-". The resulting working tree file will appear to re-add the content.

Контент, который не отличается в индексе и рабочем дереве, может отображаться в контекстных строках, начиная с «» (пробела). Вы можете подготовить контекстные строки для удаления, преобразовав пробел в «-». Появится получившийся файл рабочего дерева для повторного добавления содержимого.

### modifying existing content
One can also modify context lines by staging them for removal (by converting " " to "-") and adding a "+" line with the new content. Similarly, one can modify "+" lines for existing additions or modifications. In all cases, the new modification will appear reverted in the working tree.

Можно также изменить строки контекста, подготовив их для удаления (преобразовав «» в «-») и добавив строку «+» с новым содержимым. Точно так же можно изменить строки «+» для существующих дополнений или модификаций. Во всех случаях новая модификация будет отображаться в рабочем дереве как возвращенная.

### new content
You may also add new content that does not exist in the patch; simply add new lines, each starting with "+". The addition will appear reverted in the working tree.

Вы также можете добавить новый контент, которого нет в патче; просто добавьте новые строки, каждая из которых начинается с "+". В рабочем дереве добавление появится в обратном порядке.

There are also several operations which should be avoided entirely, as they will make the patch impossible to apply:

Есть также несколько операций, которых следует полностью избегать, поскольку они сделают невозможным применение патча:

* adding context (" ") or removal ("-") lines
* deleting context or removal lines
* modifying the contents of context or removal lines

#

* добавление строки контекста ("") или удаления ("-")
* удаление контекста или удаление строк
* изменение содержимого контекстных строк или удаление строк




