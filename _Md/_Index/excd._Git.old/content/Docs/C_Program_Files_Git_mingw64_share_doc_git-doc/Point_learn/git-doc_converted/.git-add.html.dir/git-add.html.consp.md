# [git-add(1) Manual Page](file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/git-add.html)

##  NAME

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

The "index" holds a snapshot of the content of the working tree, and it is this snapshot that is taken as the contents of the next commit. Thus after making any changes to the working tree, and before running the commit command, you must use the add command to add any new or modified files to the index.

«Индекс» содержит снимок содержимого рабочего дерева, и именно этот снимок используется в качестве содержимого следующей фиксации. Таким образом, после внесения каких-либо изменений в рабочее дерево и перед запуском команды фиксации вы должны использовать addкоманду для добавления любых новых или измененных файлов в индекс.

This command can be performed multiple times before a commit. It only adds the content of the specified file(s) at the time the add command is run; if you want subsequent changes included in the next commit, then you must run git add again to add the new content to the index.

Эту команду можно выполнить несколько раз перед фиксацией. Он только добавляет содержимое указанного файла (ов) во время выполнения команды добавления; если вы хотите, чтобы последующие изменения были включены в следующую фиксацию, вы должны запустить `git add` снова, чтобы добавить новое содержимое в индекс.

The `git status` command can be used to obtain a summary of which files have changes that are staged for the next commit.

`git status` Команда может быть использована для получения резюме, какие файлы имеют изменения, постановочные для следующей фиксации.

The `git add` command will not add ignored files by default. If any ignored files were explicitly specified on the command line, git add will fail with a list of ignored files. Ignored files reached by directory recursion or filename globbing performed by Git (quote your globs before the shell) will be silently ignored. The git add command can be used to add ignored files with the `-f` (force) option.

По `git add` умолчанию команда не добавляет игнорируемые файлы. Если какие-либо игнорируемые файлы были явно указаны в командной строке, git add произойдет сбой со списком игнорируемых файлов. Игнорируемые файлы, доступные в результате рекурсии каталогов или подстановки имен файлов, выполняемой Git (укажите ваши глобусы перед оболочкой), будут автоматически игнорироваться. Мерзавец добавить команду можно использовать для добавления игнорируемых файлов с -fопцией (силы).

Please [see git-commit(1)](file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/git-commit.html) for alternative ways to add content to a commit.

## OPTIONS
### \<pathspec\> …​
Files to add content from. Fileglobs (e.g. `*.c`) can be given to add all matching files. Also a leading directory name (e.g. dir to add dir/file1 and dir/file2) can be given to update the index to match the current state of the directory as a whole (e.g. specifying dir will record not just a file dir/file1 modified in the working tree, a file dir/file2 added to the working tree, but also a file dir/file3 removed from the working tree). Note that older versions of Git used to ignore removed files; use --no-all option if you want to add modified or new files but ignore removed ones.

For more details about the \<pathspec> syntax, see the pathspec  entry in [gitglossary(7)](file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/gitglossary.html).

Файлы, из которых нужно добавить контент. Fileglobs (например `*.c`) могут быть предоставлены для добавления всех совпадающих файлов. Также можно указать начальное имя каталога (например, dirдля добавления dir/file1 и dir/file2) для обновления индекса, чтобы он соответствовал текущему состоянию каталога в целом (например, указание dirбудет записывать не только файл, dir/file1 измененный в рабочем дереве, файл, dir/file2добавленный в рабочее дерево. tree, но и файл, dir/file3удаленный из рабочего дерева). Обратите внимание, что старые версии Git игнорировали удаленные файлы; используйте `--no-all`опцию, если вы хотите добавить измененные или новые файлы, но игнорировать удаленные.

Дополнительные сведения о синтаксисе <pathspec> см. В записи pathspec в gitglossary (7) 

### -n
`--dry-run`

Don’t actually add the file(s), just show if they exist and/or will be ignored.

Фактически не добавляйте файл (ы), просто покажите, существуют ли они и / или будут ли они проигнорированы.

### -v
`--verbose`

Be verbose.

Будьте многословны.

### -f
`--force`

Allow adding otherwise ignored files.

Разрешить добавление игнорируемых в противном случае файлов.

### -i
`--interactive`

Add modified contents in the working tree interactively to the index. Optional path arguments may be supplied to limit operation to a subset of the working tree. See “Interactive mode” for details.

Интерактивно добавлять измененное содержимое рабочего дерева в индекс. Необязательные аргументы пути могут быть предоставлены для ограничения операции подмножеством рабочего дерева. Подробнее см. «Интерактивный режим».

### -p
`--patch`

Interactively choose hunks of patch between the index and the work tree and add them to the index. This gives the user a chance to review the difference before adding modified contents to the index.

В интерактивном режиме выберите фрагменты исправлений между индексом и деревом работы и добавьте их в индекс. Это дает пользователю возможность проверить разницу перед добавлением измененного содержимого в индекс.



This effectively runs `add --interactive`, but bypasses the initial command menu and directly jumps to the patch subcommand. See “Interactive mode” for details.

Это эффективно работает `add --interactive`, но обходит начальное меню команд и сразу переходит к patchподкоманде. Подробнее см. «Интерактивный режим».

### -e
`--edit`
Open the diff vs. the index in an editor and let the user edit it. After the editor was closed, adjust the hunk headers and apply the patch to the index.

Откройте сравнение с индексом в редакторе и позвольте пользователю редактировать его. После закрытия редактора настройте заголовки блоков и примените исправление к индексу.

The intent of this option is to pick and choose lines of the patch to apply, or even to modify the contents of lines to be staged. This can be quicker and more flexible than using the interactive hunk selector. However, it is easy to confuse oneself and create a patch that does not apply to the index. See EDITING PATCHES below.

Назначение этой опции состоит в том, чтобы выбрать строки патча для применения или даже изменить содержимое строк для постановки. Это может быть быстрее и гибче, чем использование интерактивного селектора фрагментов. Однако легко запутаться и создать патч, не относящийся к индексу. См. РЕДАКТИРОВАНИЕ ПАТЧЕЙ ниже.

### -u
`--update`

Update the index just where it already has an entry matching \<pathspec>. This removes as well as modifies index entries to match the working tree, but adds no new files.

Обновите индекс там, где уже есть запись, соответствующая \<pathspec>. Это удаляет, а также изменяет записи индекса в соответствии с рабочим деревом, но не добавляет новых файлов.

If no \<pathspec> is given when -u option is used, all tracked files in the entire working tree are updated (old versions of Git used to limit the update to the current directory and its subdirectories)

Если при использовании -uопции не указан \<pathspec> , обновляются все отслеживаемые файлы во всем рабочем дереве (старые версии Git использовались для ограничения обновления текущим каталогом и его подкаталогами)

### -A
`--all`

`--no-ignore-removal`

Update the index not only where the working tree has a file matching \<pathspec> but also where the index already has an entry. This adds, modifies, and removes index entries to match the working tree.

Обновите индекс не только там, где в рабочем дереве есть файл, соответствующий \<pathspec>, но также и там, где в индексе уже есть запись. Это добавляет, изменяет и удаляет записи индекса в соответствии с рабочим деревом.

If no \<pathspec> is given when -A option is used, all files in the entire working tree are updated (old versions of Git used to limit the update to the current directory and its subdirectories).

Если при использовании -Aпараметра не указан \<pathspec> , обновляются все файлы во всем рабочем дереве (старые версии Git использовались для ограничения обновления текущим каталогом и его подкаталогами).

`--no-all`

`--ignore-removal`

Update the index by adding new files that are unknown to the index and files modified in the working tree, but ignore files that have been removed from the working tree. This option is a no-op when no \<pathspec> is used.

Обновите индекс, добавляя новые файлы, которые неизвестны индексу, и файлы, измененные в рабочем дереве, но игнорируйте файлы, которые были удалены из рабочего дерева. Эта опция не работает, когда не используется \<pathspec>.

This option is primarily to help users who are used to older versions of Git, whose "git add \<pathspec>…​" was a synonym for "git add --no-all \<pathspec>…​", i.e. ignored removed files.

Эта опция в первую очередь предназначена для помощи пользователям, которые привыкли к более старым версиям Git, чьи «git add \<pathspec>…» были синонимом «git add --no-all \<pathspec>…», то есть игнорировали удаленные файлы.

### -N
`--intent-to-add`

Record only the fact that the path will be added later. An entry for the path is placed in the index with no content. This is useful for, among other things, showing the unstaged content of such files with `git diff` and committing them with `git commit -a`.

Запишите только тот факт, что путь будет добавлен позже. Запись для пути помещается в указатель без содержимого. Это полезно, помимо прочего, для отображения неустановленного содержимого таких файлов `git diff`и фиксации их с помощью `git commit -a`.

`--refresh`

Don’t add the file(s), but only refresh their stat() information in the index.

Не добавляйте файлы, а только обновляйте их информацию stat () в индексе

`--ignore-errors`

If some files could not be added because of errors indexing them, do not abort the operation, but continue adding the others. The command shall still exit with non-zero status. The configuration variable `add.ignoreErrors` can be set to true to make this the default behaviour.

Если некоторые файлы не могут быть добавлены из-за ошибок их индексации, не прерывайте операцию, а продолжайте добавлять другие. Команда все равно должна завершиться с ненулевым статусом. Для переменной конфигурации `add.ignoreErrors`можно задать значение true, чтобы сделать это поведением по умолчанию.

`--ignore-missing`

This option can only be used together with `--dry-run`. By using this option the user can check if any of the given files would be ignored, no matter if they are already present in the work tree or not.

Этот параметр можно использовать только вместе с `--dry-run`. Используя эту опцию, пользователь может проверить, будет ли проигнорирован какой-либо из заданных файлов, независимо от того, присутствуют ли они уже в рабочем дереве или нет.

`--no-warn-embedded-repo`

By default, `git add` will warn when adding an embedded repository to the index without using `git submodule add` to create an entry in `.gitmodules`. This option will suppress the warning (e.g., if you are manually performing operations on submodules).

По умолчанию `git add`будет предупреждать при добавлении встроенного репозитория в индекс без использования `git submodule add`для создания записи в `.gitmodules`. Эта опция подавляет предупреждение (например, если вы вручную выполняете операции с подмодулями).

`--renormalize`

Apply the "clean" process freshly to all tracked files to forcibly add them again to the index. This is useful after changing `core.autocrlf` configuration or the `text` attribute in order to correct files added with wrong CRLF/LF line endings. This option implies `-u`.

Примените «чистый» процесс заново ко всем отслеживаемым файлам, чтобы принудительно добавить их снова в индекс. Это полезно после изменения `core.autocrlf`конфигурации или `text`атрибута, чтобы исправить файлы, добавленные с неправильными окончаниями строк CRLF / LF. Этот вариант подразумевает -u.

`--chmod=(+|-)x`

Override the executable bit of the added files. The executable bit is only changed in the index, the files on disk are left unchanged.

Заменить исполняемый бит добавленных файлов. Исполняемый бит изменяется только в индексе, файлы на диске остаются без изменений.

`--pathspec-from-file=<file>`

Pathspec is passed in \<file> instead of commandline args. If \<file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable `core.quotePath` (see git-config(1)). See also `--pathspec-file-nul` and global `--literal-pathspecs`.

Pathspec передается \<file>вместо аргументов командной строки. Если \<file>это точно, -то используется стандартный ввод. Элементы Pathspec разделяются LF или CR / LF. Элементы pathspec могут быть указаны в кавычках, как описано для переменной конфигурации core.quotePath (см. [Git-config (1)](file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/git-config.html ). Смотрите также `--pathspec-file-nul`и `global --literal-pathspecs`.

`--pathspec-file-nul`

Only meaningful with `--pathspec-from-file`. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).

Только значимый с `--pathspec-from-file`. Элементы Pathspec разделяются символом NUL, а все остальные символы воспринимаются буквально (включая символы новой строки и кавычки).

`--`

This option can be used to separate command-line options from the list of files, (useful when filenames might be mistaken for command-line options).

Этот параметр можно использовать для отделения параметров командной строки от списка файлов (полезно, когда имена файлов могут быть ошибочно приняты за параметры командной строки).