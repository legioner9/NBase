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
git-commit - Record changes to the repository

## SYNOPSIS

    git commit [-a | --interactive | --patch] [-s] [-v] [-u<mode>] [--amend]
               [--dry-run] [(-c | -C | --fixup | --squash) <commit>]
               [-F <file> | -m <msg>] [--reset-author] [--allow-empty]
               [--allow-empty-message] [--no-verify] [-e] [--author=<author>]
               [--date=<date>] [--cleanup=<mode>] [--[no-]status]
               [-i | -o] [--pathspec-from-file=<file> [--pathspec-file-nul]]
               [-S[<keyid>]] [--] [<pathspec>…​]

## DESCRIPTION
Create a new commit containing the current contents of the index and the given log message describing the changes. The new commit is a direct child of HEAD, usually the tip of the current branch, and the branch is updated to point to it (unless no branch is associated with the working tree, in which case HEAD is "detached" as described in git-checkout(1)).

Создайте новую фиксацию, содержащую текущее содержимое индекса и данное сообщение журнала, описывающее изменения. Новая фиксация является прямым потомком HEAD, обычно вершиной текущей ветки, и ветка обновляется так, чтобы указывать на нее (если с рабочим деревом не связана ни одна ветка, в этом случае HEAD «отсоединяется», как описано в git -касса (1) ).

The content to be committed can be specified in several ways:

Контент, который нужно зафиксировать, можно указать несколькими способами:

1. by using git-add(1) to incrementally "add" changes to the index before using the commit command (Note: even modified files must be "added");'''''''
с помощью git-add (1) для постепенного «добавления» изменений в индекс перед использованием команды фиксации (Примечание: даже измененные файлы должны быть «добавлены»);
2. by using git-rm(1) to remove files from the working tree and the index, again before using the commit command;''''''''
используя git-rm (1) для удаления файлов из рабочего дерева и индекса, снова перед использованием команды фиксации ;
3. by listing files as arguments to the commit command (without --interactive or --patch switch), in which case the commit will ignore changes staged in the index, and instead record the current content of the listed files (which must already be known to Git);'''''''''путем перечисления файлов в качестве аргументов команды фиксации (без переключателя --interactive или --patch), и в этом случае фиксация будет игнорировать изменения, внесенные в индекс, и вместо этого запишет текущее содержимое перечисленных файлов (которое уже должно быть известно в Git)
4. by using the -a switch with the commit command to automatically "add" changes from all known files (i.e. all files that are already listed in the index) and to automatically "rm" files in the index that have been removed from the working tree, and then perform the actual commit;'''''''с помощью переключателя -a с командой фиксации для автоматического «добавления» изменений из всех известных файлов (то есть всех файлов, которые уже указаны в индексе) и для автоматического «rm» файлов в индексе, которые были удалены из рабочего дерева , а затем выполнить фактическую фиксацию;
5. by using the --interactive or --patch switches with the commit command to decide one by one which files or hunks should be part of the commit in addition to contents in the index, before finalizing the operation. See the “Interactive Mode” section of git-add(1) to learn how to operate these modes.''''''''с помощью переключателей --interactive или --patch с командой фиксации, чтобы решить один за другим, какие файлы или блоки должны быть частью фиксации в дополнение к содержимому в индексе, перед завершением операции. См. Раздел «Интерактивный режим» в git-add (1), чтобы узнать, как работать с этими режимами.


The `--dry-run` option can be used to obtain a summary of what is included by any of the above for the next commit by giving the same set of parameters (options and paths).

`--dry-run`Опция может быть использована для получения резюме того , что входит в любом из указанных выше для следующей фиксации, давая тот же набор параметров (опции и путей).

If you make a commit and then find a mistake immediately after that, you can recover from it with git reset.   

Если вы делаете коммит, а затем сразу после этого обнаруживаете ошибку, вы можете исправить это с помощью `git reset` .

## OPTIONS
### -a
    --all
Tell the command to automatically stage files that have been modified and deleted, but new files you have not told Git about are not affected.

Сообщите команде, что файлы, которые были изменены и удалены, автоматически обрабатывают файлы, но новые файлы, о которых вы не сообщили Git, не затрагиваются.

### -p
    --patch
Use the interactive patch selection interface to chose which changes to commit. See git-add(1) for details.

Используйте интерактивный интерфейс выбора патчей, чтобы выбрать, какие изменения следует зафиксировать. Подробнее см. Git-add (1) .

### -C \<commit>
    --reuse-message=<commit>
Take an existing commit object, and reuse the log message and the authorship information (including the timestamp) when creating the commit.

Возьмите существующий объект фиксации и повторно используйте сообщение журнала и информацию об авторстве (включая временную метку) при создании фиксации

### -c \<commit>
    --reedit-message=<commit>
Like -C, but with -c the editor is invoked, so that the user can further edit the commit message.

Подобно -C , но с -cвызовом редактора, чтобы пользователь мог дальше редактировать сообщение фиксации.

    --fixup=<commit>
Construct a commit message for use with `rebase --autosquash`. The commit message will be the subject line from the specified commit with a prefix of "fixup! ". See git-rebase(1) for details.

Создайте сообщение фиксации для использования с `rebase --autosquash`. Сообщение фиксации будет строкой темы из указанного коммита с префиксом «fixup!». Подробнее см. Git-rebase (1) .

    --squash=<commit>
Construct a commit message for use with `rebase --autosquash`. The commit message subject line is taken from the specified commit with a prefix of "squash! ". Can be used with additional commit message options (-m/-c/-C/-F). See git-rebase(1) for details.

Создайте сообщение фиксации для использования с `rebase --autosquash`. Строка темы сообщения коммита берется из указанного коммита с префиксом «сквош!». Может использоваться с дополнительными параметрами сообщения фиксации ( -m/ -c/ -C/ -F). Подробнее см. Git-rebase (1) .

    --reset-author
When used with `-C/-c/--amend` options, or when committing after a conflicting cherry-pick, declare that the authorship of the resulting commit now belongs to the committer. This also renews the author timestamp.

При использовании с параметрами -C / -c / - изменить или при фиксации после конфликтующего выбора вишни объявить, что авторство получившейся фиксации теперь принадлежит коммиттеру. Это также обновляет временную метку автора.

    --short
When doing a dry-run, give the output in the short-format. See git-status(1) for details. Implies `--dry-run`.

При выполнении пробного прогона дайте результат в кратком формате. Подробнее см. Git-status (1) . Подразумевает `--dry-run`.

    --branch
Show the branch and tracking info even in short-format.

Показывать информацию о ветке и отслеживании даже в сокращенном формате.

    --porcelain
When doing a dry-run, give the output in a porcelain-ready format. See git-status(1) for details. Implies --dry-run.

Выполняя пробный прогон, дайте результат в формате, готовом для фарфора. Подробнее см. Git-status (1) . Подразумевает --dry-run.

    --long
When doing a dry-run, give the output in the long-format. Implies --dry-run.

При выполнении пробного прогона дайте результат в длинном формате. Подразумевает --dry-run.

### -z
    --null
When showing `short` or `porcelain` status output, print the filename verbatim and terminate the entries with NUL, instead of LF. If no format is given, implies the `--porcelain` output format. Without the `-z` option, filenames with "unusual" characters are quoted as explained for the configuration variable `core.quotePath` (see git-config(1)).

При отображении `short`или `porcelain`выводе состояния напечатайте дословно имя файла и завершите записи NUL вместо LF. Если формат не указан, подразумевается `--porcelain`выходной формат. Без этой `-z`опции имена файлов с «необычными» символами заключаются в кавычки, как описано для переменной конфигурации `core.quotePath` (см. Git-config (1) ).

### -F \<file>
    --file=<file>
Take the commit message from the given file. Use - to read the message from the standard input.

Возьмите сообщение фиксации из данного файла. Используйте -, чтобы прочитать сообщение со стандартного ввода.

    --author=<author>
Override the commit author. Specify an explicit author using the standard A U Thor <author@example.com> format. Otherwise \<author> is assumed to be a pattern and is used to search for an existing commit by that author (i.e. rev-list `--all -i --author=\<author>`); the commit author is then copied from the first such commit found.

Заменить автора фиксации. Укажите явного автора в стандартном A U Thor <author@example.com>формате. В противном случае предполагается, что \<author> является шаблоном и используется для поиска существующей фиксации этого автора (то есть rev-list `--all -i --author = <author>`); затем автор фиксации копируется из первой найденной такой фиксации.

    --date=<date>
Override the author date used in the commit.

Заменить дату автора, используемую в коммите.

### -m \<msg>
    --message=<msg>
Use the given \<msg> as the commit message. If multiple `-m` options are given, their values are concatenated as separate paragraphs.

The `-m` option is mutually exclusive with `-c`, `-C`, and `-F`.

Используйте данный \<msg> как сообщение фиксации. Если `-m`указано несколько вариантов, их значения объединяются в отдельные абзацы.

`-m`Вариант является взаимоисключающим с `-c`, `-C`и `-F`.

### -t \<file>
    --template=<file>
When editing the commit message, start the editor with the contents in the given file. The `commit.template` configuration variable is often used to give this option implicitly to the command. This mechanism can be used by projects that want to guide participants with some hints on what to write in the message in what order. If the user exits the editor without editing the message, the commit is aborted. This has no effect when a message is given by other means, e.g. with the `-m` or `-F` options.

При редактировании сообщения о фиксации запустите редактор с содержимым данного файла. `commit.template`Переменной конфигурации часто используется , чтобы дать этот параметр неявно к команде. Этот механизм может использоваться проектами, которые хотят дать участникам подсказки о том, что писать в сообщении в каком порядке. Если пользователь выходит из редактора, не отредактировав сообщение, фиксация прерывается. Это не действует, когда сообщение передается другими способами, например, с помощью параметров `-m`или `-F`.

### -s
    --signoff
Add Signed-off-by line by the committer at the end of the commit log message. The meaning of a signoff depends on the project, but it typically certifies that committer has the rights to submit this work under the same license and agrees to a Developer Certificate of Origin (see http://developercertificate.org/ for more information).

Добавьте строку Signed-off-by коммиттера в конец сообщения журнала фиксации. Значение подписи зависит от проекта, но обычно он удостоверяет, что коммиттер имеет право отправлять эту работу под той же лицензией и соглашается с Сертификатом разработчика происхождения (см. Http://developercertificate.org/ для получения дополнительной информации).

### -n
    --no-verify
This option bypasses the pre-commit and commit-msg hooks. See also githooks(5).

Эта опция обходит перехватчики pre-commit и commit-msg. См. Также githooks (5) .

    --allow-empty
Usually recording a commit that has the exact same tree as its sole parent commit is a mistake, and the command prevents you from making such a commit. This option bypasses the safety, and is primarily for use by foreign SCM interface scripts.

Обычно запись фиксации, которая имеет то же дерево, что и ее единственный родительский коммит, является ошибкой, и команда не позволяет вам сделать такую ​​фиксацию. Этот параметр обходит безопасность и предназначен в первую очередь для использования скриптами внешнего интерфейса SCM.

    --allow-empty-message
Like --allow-empty this command is primarily for use by foreign SCM interface scripts. It allows you to create a commit with an empty commit message without using plumbing commands like git-commit-tree(1).

Как и --allow-empty, эта команда в первую очередь предназначена для использования скриптами внешнего интерфейса SCM. Он позволяет создавать фиксацию с пустым сообщением фиксации без использования команд подключения, таких как git-commit-tree (1) .

    --cleanup=<mode>
This option determines how the supplied commit message should be cleaned up before committing. The \<mode> can be `strip`, `whitespace`, `verbatim`, `scissors` or `default`.

Этот параметр определяет, как предоставленное сообщение фиксации должно быть очищено перед фиксацией. <Режим> может быть strip, whitespace, verbatim, scissorsили default.

### strip
Strip leading and trailing empty lines, trailing whitespace, commentary and collapse consecutive empty lines.

Удаляйте начальные и конечные пустые строки, конечные пробелы, комментарии и сворачивайте следующие друг за другом пустые строки.

### whitespace
Same as `strip` except #commentary is not removed.

То же, `strip`за исключением того, что # комментарий не удаляется.

### verbatim
Do not change the message at all.

### scissors
Same as `whitespace` except that everything from (and including) the line found below is truncated, if the message is to be edited. "`#`" can be customized with `core.commentChar`.

То же, что и whitespaceза исключением того, что все, что находится в строке ниже (включая ее), усекается, если сообщение подлежит редактированию. " #" можно настроить с помощью core.commentChar.

    # ------------------------ >8 ------------------------
     
### default
Same as strip if the message is to be edited. Otherwise whitespace.

The default can be changed by the commit.cleanup configuration variable (see git-config(1)).

Так же, как `strip`если бы сообщение редактировалось. В противном случае `whitespace`.

Значение по умолчанию можно изменить с `commit.cleanup`помощью переменной конфигурации (см. Git-config (1) ).

### -e
    --edit
The message taken from file with `-F`, command line with `-m`, and from commit object with `-C` are usually used as the commit log message unmodified. This option lets you further edit the message taken from these sources.

Сообщение, полученное из файла с помощью -F, командной строки с -mи из объекта фиксации с помощью -Cобычно используется как неизмененное сообщение журнала фиксации. Эта опция позволяет вам редактировать сообщение, полученное из этих источников.

    --no-edit
Use the selected commit message without launching an editor. For example, `git commit --amend --no-edit` amends a commit without changing its commit message.

Использовать выбранное сообщение фиксации без запуска редактора. Например, git commit --amend --no-editисправляет фиксацию, не изменяя ее сообщение фиксации.

    --amend
Replace the tip of the current branch by creating a new commit. The recorded tree is prepared as usual (including the effect of the -i and -o options and explicit pathspec), and the message from the original commit is used as the starting point, instead of an empty message, when no other message is specified from the command line via options such as `-m`, `-F`, `-c`, etc. The new commit has the same parents and author as the current one (the `--reset-author` option can countermand this).

It is a rough equivalent for:

Замените верхушку текущей ветки, создав новую фиксацию. Записанное дерево готовят как обычно ( в том числе эффекта -iи -oпараметров и явного pathspec), и сообщение от оригинала коммит используются в качестве отправной точки, вместо пустого сообщения, когда нет другого сообщения не указано в командной строке с помощью опций , таких как -m, -F, -cи т.д. Новые коммят те же родители и автор как текущие один ( `--reset-author` опция может отменяет это).

Это приблизительный эквивалент:

        $ git reset --soft HEAD^
        $ ... do something else to come up with the right tree ...
        $ git commit -c ORIG_HEAD
but can be used to amend a merge commit.

> git commit -c ORIG_HEAD — вернутся к последнему коммиту, будет предложено
редактировать его сообщение. Если сообщение оставить прежним, то
достаточно изменить регистр ключа -с:

но может использоваться для изменения фиксации слияния.

You should understand the implications of rewriting history if you amend a commit that has already been published. (See the "RECOVERING FROM UPSTREAM REBASE" section in git-rebase(1).)

Вы должны понимать последствия перезаписи истории, если вы изменяете коммит, который уже был опубликован. (См. Раздел «ВОССТАНОВЛЕНИЕ ИЗ UPSTREAM REBASE» в git-rebase (1) .)

    --no-post-rewrite
Bypass the post-rewrite hook.

Обойти ловушку пост-перезаписи.

### -i
    --include
Before making a commit out of staged contents so far, stage the contents of paths given on the command line as well. This is usually not what you want unless you are concluding a conflicted merge.

Перед тем, как сделать коммит из промежуточного содержимого, также выполните этапы содержимого путей, указанных в командной строке. Обычно это не то, что вам нужно, если только вы не завершаете конфликтующее слияние.

### -o
    --only
Make a commit by taking the updated working tree contents of the paths specified on the command line, disregarding any contents that have been staged for other paths. This is the default mode of operation of git commit if any paths are given on the command line, in which case this option can be omitted. If this option is specified together with --amend, then no paths need to be specified, which can be used to amend the last commit without committing changes that have already been staged. If used together with `--allow-empty` paths are also not required, and an empty commit will be created.

Сделайте фиксацию, взяв обновленное содержимое рабочего дерева из путей, указанных в командной строке, игнорируя любое содержимое, которое было размещено для других путей. Это режим работы git commit по умолчанию, если в командной строке указаны какие-либо пути, и в этом случае этот параметр можно опустить. Если этот параметр указан вместе с --amend, тогда не нужно указывать пути, которые можно использовать для изменения последней фиксации без фиксации изменений, которые уже были поставлены. Если они используются вместе с `--allow-empty` путями, они также не требуются, и будет создана пустая фиксация.

    --pathspec-from-file=\<file>
Pathspec is passed in \<file> instead of commandline args. If \<file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config(1)). See also `--pathspec-file-nul` and global `--literal-pathspecs`.

Pathspec передается <file>вместо аргументов командной строки. Если <file>это точно, -то используется стандартный ввод. Элементы Pathspec разделяются LF или CR / LF. Элементы pathspec могут быть указаны в кавычках, как описано для переменной конфигурации `core.quotePath` (см. Git-config (1) ). Смотрите также `--pathspec-file-nul`и global `--literal-pathspecs`.

    --pathspec-file-nul
Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).

Только значимый с `--pathspec-from-file`. Элементы Pathspec разделяются символом NUL, а все остальные символы воспринимаются буквально (включая символы новой строки и кавычки).

### -u[\<mode>]
    --untracked-files[=<mode>]
Show untracked files.

The mode parameter is optional (defaults to all), and is used to specify the handling of untracked files; when -u is not used, the default is normal, i.e. show untracked files and directories.

The possible options are:

Показать неотслеживаемые файлы.

Параметр режима является необязательным (по умолчанию все ) и используется для указания обработки неотслеживаемых файлов; когда -u не используется, по умолчанию используется нормальный режим, т.е. показывать неотслеживаемые файлы и каталоги.

Возможные варианты:

- no - Show no untracked files

- normal - Shows untracked files and directories

- all - Also shows individual files in untracked directories.

#

- no - не показывать неотслеживаемые файлы

- нормальный - показывает неотслеживаемые файлы и каталоги

- all - также показывает отдельные файлы в неотслеживаемых каталогах.

The default can be changed using the status.showUntrackedFiles configuration variable documented in git-config(1).

### -v
    --verbose
Show unified diff between the HEAD commit and what would be committed at the bottom of the commit message template to help the user describe the commit by reminding what changes the commit has. Note that this diff output doesn’t have its lines prefixed with #. This diff will not be a part of the commit message. See the commit.verbose configuration variable in git-config(1).

Покажите унифицированное различие между фиксацией HEAD и тем, что будет зафиксировано в нижней части шаблона сообщения фиксации, чтобы помочь пользователю описать фиксацию, напоминая, какие изменения есть в фиксации. Обратите внимание, что в этом выводе diff нет строк с префиксом # . Эта разница не будет частью сообщения о фиксации. См. commit.verboseПеременную конфигурации в git-config (1) .

If specified twice, show in addition the unified diff between what would be committed and the worktree files, i.e. the unstaged changes to tracked files.

Если указано дважды, дополнительно отобразить унифицированное различие между тем, что будет зафиксировано, и файлами рабочего дерева, то есть неустановленными изменениями в отслеживаемых файлах.

### -q
    --quiet
Suppress commit summary message.

Подавить сводное сообщение о фиксации.

    --dry-run
Do not create a commit, but show a list of paths that are to be committed, paths with local changes that will be left uncommitted and paths that are untracked.

Не создавайте фиксацию, но покажите список путей, которые должны быть зафиксированы, путей с локальными изменениями, которые будут оставлены незафиксированными, и пути, которые не отслеживаются.

    --status
Include the output of git-status(1) in the commit message template when using an editor to prepare the commit message. Defaults to on, but can be used to override configuration variable `commit.status`.

Включите вывод git-status (1) в шаблон сообщения фиксации при использовании редактора для подготовки сообщения фиксации. По умолчанию включено, но может использоваться для переопределения переменной конфигурации `commit.status`.

    --no-status
Do not include the output of git-status(1) in the commit message template when using an editor to prepare the default commit message.

Не включайте вывод git-status (1) в шаблон сообщения фиксации при использовании редактора для подготовки сообщения фиксации по умолчанию.

### -S[\<keyid>]
    --gpg-sign[=<keyid>]
    --no-gpg-sign
GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. `--no-gpg-sign` is useful to countermand both commit.gpgSign configuration variable, and earlier `--gpg-sign`.

GPG-подписывает коммиты. `keyid`Аргумент является необязательным и по умолчанию идентичности коммиттеров; если указано, он должен быть прикреплен к опции без пробела. `--no-gpg-sign`полезно отменить как `commit.gpgSign`конфигурационную переменную, так и ранее `--gpg-sign`.

###     --
Do not interpret any more arguments as options.

    <pathspec>…​
When pathspec is given on the command line, commit the contents of the files that match the pathspec without recording the changes already added to the index. The contents of these files are also staged for the next commit on top of what have been staged before.

For more details, see the pathspec entry in gitglossary(7).

## EXAMPLES
When recording your own work, the contents of modified files in your working tree are temporarily stored to a staging area called the "index" with git add. A file can be reverted back, only in the index but not in the working tree, to that of the last commit with `git restore --staged <file>`, which effectively reverts `git add` and prevents the changes to this file from participating in the next commit. After building the state to be committed incrementally with these commands, `git commit` (without any pathname parameter) is used to record what has been staged so far. This is the most basic form of the command. An example:

При записи вашей собственной работы содержимое измененных файлов в вашем рабочем дереве временно сохраняется в промежуточной области, называемой «индексом» с помощью `git add` . Файл может быть возвращен обратно, только в индексе, но не в рабочем дереве, к тому из последнего коммита `git restore --staged <file>`, что эффективно отменяет `git add` и предотвращает участие изменений этого файла в следующем коммите. После создания состояния, которое будет постепенно фиксироваться с помощью этих команд, `git commit`(без какого-либо параметра имени пути) используется для записи того, что было поставлено на данный момент. Это самая основная форма команды. Пример:

    $ edit hello.c
    $ git rm goodbye.c
    $ git add hello.c
    $ git commit
Instead of staging files after each individual change, you can tell `git commit` to notice the changes to the files whose contents are tracked in your working tree and do corresponding `git add` and `git rm` for you. That is, this example does the same as the earlier example if there is no other change in your working tree:

Вместо постановки файлов после каждого отдельного изменения, вы можете сказать , `git commit`чтобы заметить изменения в файлы, содержимое которых отслеживаются в рабочем дереве и сделать соответствующие `git add`и `git rm` для вас. То есть этот пример делает то же самое, что и предыдущий, если в вашем рабочем дереве нет других изменений:

    $ edit hello.c
    $ rm goodbye.c
    $ git commit -a
The command `git commit -a` first looks at your working tree, notices that you have modified hello.c and removed goodbye.c, and performs necessary `git add` and `git rm` for you.

Команда `git commit -a`сначала смотрит на ваше рабочее дереве, замечает , что вы изменили `hello.c` и снятую `goodbye.c` и выполняемые необходимы `git add`и `git rm`для вас.

After staging changes to many files, you can alter the order the changes are recorded in, by giving pathnames to git commit. When pathnames are given, the command makes a commit that only records the changes made to the named paths:

    $ edit hello.c hello.h
    $ git add hello.c hello.h
    $ edit Makefile
    $ git commit Makefile
This makes a commit that records the modification to Makefile. The changes staged for hello.c and hello.h are not included in the resulting commit. However, their changes are not lost — they are still staged and merely held back. After the above sequence, if you do:

    $ git commit
this second commit would record the changes to `hello.c` and `hello.h` as expected.

это второе обязательство будет записывать изменения `hello.c`и , `hello.h`как ожидалось.

After a merge (initiated by git merge or git pull) stops because of conflicts, cleanly merged paths are already staged to be committed for you, and paths that conflicted are left in unmerged state. You would have to first check which paths are conflicting with git status and after fixing them manually in your working tree, you would stage the result as usual with git add:

    $ git status | grep unmerged
    unmerged: hello.c
    $ edit hello.c
    $ git add hello.c
After resolving conflicts and staging the result, git ls-files -u would stop mentioning the conflicted path. When you are done, run git commit to finally record the merge:

    $ git commit
As with the case to record your own changes, you can use `-a` option to save typing. One difference is that during a merge resolution, you cannot use git commit with pathnames to alter the order the changes are committed, because the merge should be recorded as a single commit. In fact, the command refuses to run when given pathnames (but see `-i` option).

## OUR LIVE

    $ git commit
        hint: Waiting for your editor to close the file...

in redactor:

    # Please enter the commit message for your changes. Lines starting
    # with '#' will be ignored, and an empty message aborts the commit.
    #
    # On branch master
    # Your branch is up to date with 'lo_repo/master'.
    #
    # Changes to be committed:
    #	new file:   cl_in
    #	new file:   mo_in
    #
    # Changes not staged for commit:
    #	modified:   mo_in
    #
    # Untracked files:
    #	cl_ws
    #
    
### git restore --staged  is opposit git add

    $ touch file_is
    $ git add file_is
    $ git co {aborting}
        hint: Waiting for your editor to close the file...
        
        # Changes to be committed:
        #	new file:   cl_in
        #	new file:   file_is
        #	new file:   mo_in
        #
        # Changes not staged for commit:
        #	modified:   mo_in
        #
        # Untracked files:
        #	cl_ws
        
    $ git restore --staged file_is
    
    $ git co {aborting}
    
        # Untracked files:
        #	cl_ws
        #	file_is
        
### git commit -a

    $ rm file_is
    $ git co {aborting}
        # Changes to be committed:
        #	new file:   cl_in
        #	new file:   mo_in
        #
        # Changes not staged for commit:
        #	modified:   mo_in
        #
        # Untracked files:
        #	cl_ws
    $ git co -a {aborting}
    # Changes to be committed:
        #	new file:   cl_in
        #	new file:   mo_in
        #
        # Untracked files:
        #	cl_ws
         

#### is commit without modified     

## COMMIT INFORMATION
Author and committer information is taken from the following environment variables, if set:

Информация об авторе и коммиттере берется из следующих переменных среды, если они установлены:

    GIT_AUTHOR_NAME
    GIT_AUTHOR_EMAIL
    GIT_AUTHOR_DATE
    GIT_COMMITTER_NAME
    GIT_COMMITTER_EMAIL
    GIT_COMMITTER_DATE
(nb "<", ">" and "\n"s are stripped)

(nb "<", ">" и "\ n" удаляются)

The author and committer names are by convention some form of a personal name (that is, the name by which other humans refer to you), although Git does not enforce or require any particular form. Arbitrary Unicode may be used, subject to the constraints listed above. This name has no effect on authentication; for that, see the `credential.username` variable in git-config(1).

Имена автора и коммиттера по соглашению представляют собой некоторую форму личного имени (то есть имени, которым другие люди обращаются к вам), хотя Git не требует и не требует какой-либо конкретной формы. Может использоваться произвольный Unicode при соблюдении перечисленных выше ограничений. Это имя не влияет на аутентификацию; для этого см. `credential.user`nameпеременную в git-config (1) .

In case (some of) these environment variables are not set, the information is taken from the configuration items user.name and user.email, or, if not present, the environment variable EMAIL, or, if that is not set, system user name and the hostname used for outgoing mail (taken from `/etc/mailname` and falling back to the fully qualified hostname when that file does not exist).

Если (некоторые из) эти переменные среды не установлены, информация берется из элементов конфигурации user.nameи user.email, или, если нет, из переменной среды EMAIL, или, если она не задана, из имени пользователя системы и имени хоста, используемых для исходящая почта (берется с /etc/mailnameполного имени хоста и возвращается к нему, если этот файл не существует)

The `author.name `and `committer.name` and their corresponding email options override `user.name` and `user.email` if set and are overridden themselves by the environment variables.

И author.nameи committer.nameсоответствующие им параметры электронной почты переопределяют user.nameи, user.emailесли они установлены, и переопределяют сами себя переменными среды.

The typical usage is to set just the user.name and `user.email` variables; the other options are provided for more complex use cases.

Типичное использование заключается в наборе только user.nameи user.emailпеременных; другие варианты предназначены для более сложных случаев использования.
    
## DATE FORMATS
The GIT_AUTHOR_DATE, GIT_COMMITTER_DATE environment variables and the --date option support the following date formats:

### Git internal format
It is \<unix timestamp> \<time zone offset>, where \<unix timestamp> is the number of seconds since the UNIX epoch. \<time zone offset> is a positive or negative offset from UTC. For example CET (which is 1 hour ahead of UTC) is +0100.

### RFC 2822
The standard email format as described by RFC 2822, for example Thu, `07 Apr 2005 22:13:13 +0200`.

### ISO 8601
Time and date specified by the ISO 8601 standard, for example `2005-04-07T22:13:13`. The parser accepts a space instead of the T character as well. Fractional parts of a second will be ignored, for example `2005-04-07T22:13:13.019` will be treated as `2005-04-07T22:13:13`.

>NOTE
In addition, the date part is accepted in the following formats: YYYY.MM.DD, MM/DD/YYYY and DD.MM.YYYY.

## DISCUSSION
Though not required, it’s a good idea to begin the commit message with a single short (less than 50 character) line summarizing the change, followed by a blank line and then a more thorough description. The text up to the first blank line in a commit message is treated as the commit title, and that title is used throughout Git. For example, git-format-patch(1) turns a commit into email, and it uses the title on the Subject line and the rest of the commit in the body.

Хотя это и не обязательно, рекомендуется начинать сообщение о фиксации с одной короткой (менее 50 символов) строки, обобщающей изменение, за которой следует пустая строка, а затем более подробное описание. Текст до первой пустой строки в сообщении фиксации рассматривается как заголовок фиксации, и этот заголовок используется во всем Git. Например, git-format-patch (1) превращает фиксацию в электронное письмо и использует заголовок в строке «Тема», а остальную часть фиксации в теле

Git is to some extent character encoding agnostic.

Git в некоторой степени не зависит от кодировки символов.

- The contents of the blob objects are uninterpreted sequences of bytes. There is no encoding translation at the core level.

    Содержимое объектов BLOB-объектов - это неинтерпретированные последовательности байтов. На базовом уровне нет перевода кодировки.

- Path names are encoded in UTF-8 normalization form C. This applies to tree objects, the index file, ref names, as well as path names in command line arguments, environment variables and config files (.git/config (see git-config(1)), gitignore(5), gitattributes(5) and gitmodules(5)).

    Имена путей кодируются в форме нормализации UTF-8 C. Это относится к объектам дерева, индексному файлу, именам ссылок, а также к именам путей в аргументах командной строки, переменных среды и файлах конфигурации ( .git/config(см. Git-config (1) ) , gitignore (5) , gitattributes (5) и gitmodules (5) ).

    Note that Git at the core level treats path names simply as sequences of non-NUL bytes, there are no path name encoding conversions (except on Mac and Windows). Therefore, using non-ASCII path names will mostly work even on platforms and file systems that use legacy extended ASCII encodings. However, repositories created on such systems will not work properly on UTF-8-based systems (e.g. Linux, Mac, Windows) and vice versa. Additionally, many Git-based tools simply assume path names to be UTF-8 and will fail to display other encodings correctly.
    
    Обратите внимание, что Git на уровне ядра обрабатывает имена путей просто как последовательности байтов, отличных от NUL, преобразование кодировки имени пути не выполняется (кроме Mac и Windows). Следовательно, использование имен путей, отличных от ASCII, в основном будет работать даже на платформах и файловых системах, которые используют устаревшие расширенные кодировки ASCII. Однако репозитории, созданные в таких системах, не будут работать должным образом в системах на основе UTF-8 (например, Linux, Mac, Windows) и наоборот. Кроме того, многие инструменты на основе Git просто предполагают, что имена путей являются UTF-8, и не могут правильно отображать другие кодировки.

- Commit log messages are typically encoded in UTF-8, but other extended ASCII encodings are also supported. This includes ISO-8859-x, CP125x and many others, but not UTF-16/32, EBCDIC and CJK multi-byte encodings (GBK, Shift-JIS, Big5, EUC-x, CP9xx etc.).
Сообщения журнала фиксации обычно кодируются в UTF-8, но также поддерживаются другие расширенные кодировки ASCII. Это включает в себя ISO-8859-x, CP125x и многие другие, но не многобайтовые кодировки UTF-16/32, EBCDIC и CJK (GBK, Shift-JIS, Big5, EUC-x, CP9xx и т. Д.).

Although we encourage that the commit log messages are encoded in UTF-8, both the core and Git Porcelain are designed not to force UTF-8 on projects. If all participants of a particular project find it more convenient to use legacy encodings, Git does not forbid it. However, there are a few things to keep in mind.

Хотя мы рекомендуем, чтобы сообщения журнала фиксации были закодированы в UTF-8, и ядро, и Git Porcelain предназначены не для принудительного использования UTF-8 в проектах. Если всем участникам конкретного проекта удобнее использовать устаревшие кодировки, Git не запрещает этого. Однако следует помнить о нескольких вещах.

1. git commit and git commit-tree issues a warning if the commit log message given to it does not look like a valid UTF-8 string, unless you explicitly say your project uses a legacy encoding. The way to say this is to have i18n.commitencoding in .git/config file, like this:

git commit и git commit-tree выдает предупреждение, если переданное ему сообщение журнала фиксации не выглядит как допустимая строка UTF-8, если вы явно не указали, что ваш проект использует устаревшую кодировку. Можно сказать, что i18n.commitencoding находится в .git/configфайле, например:

        [i18n]
                commitEncoding = ISO-8859-1
Commit objects created with the above setting record the value of i18n.commitEncoding in its encoding header. This is to help other people who look at them later. Lack of this header implies that the commit log message is encoded in UTF-8.

Объекты фиксации, созданные с помощью вышеуказанного параметра, записывают значение i18n.commitEncodingв его encodingзаголовке. Это поможет другим людям, которые посмотрят на них позже. Отсутствие этого заголовка означает, что сообщение журнала фиксации закодировано в UTF-8.

2. git log, git show, git blame and friends look at the encoding header of a commit object, and try to re-code the log message into UTF-8 unless otherwise specified. You can specify the desired output encoding with i18n.logOutputEncoding in .git/config file, like this:

git log , git show , git blame и друзья просматривают encodingзаголовок объекта фиксации и пытаются перекодировать сообщение журнала в UTF-8, если не указано иное. Вы можете указать желаемую кодировку вывода с помощью i18n.logOutputEncodingin .git/configfile, например:

        [i18n]
                logOutputEncoding = ISO-8859-1
If you do not have this configuration variable, the value of i18n.commitEncoding is used instead.

Если у вас нет этой переменной конфигурации, i18n.commitEncodingвместо нее используется значение.

Note that we deliberately chose not to re-code the commit log message when a commit is made to force UTF-8 at the commit object level, because re-coding to UTF-8 is not necessarily a reversible operation.

Обратите внимание, что мы сознательно решили не перекодировать сообщение журнала фиксации, когда фиксация выполняется, чтобы принудительно использовать UTF-8 на уровне объекта фиксации, потому что перекодирование в UTF-8 не обязательно является обратимой операцией.

## ENVIRONMENT AND CONFIGURATION VARIABLES
The editor used to edit the commit log message will be chosen from the GIT_EDITOR environment variable, the core.editor configuration variable, the VISUAL environment variable, or the EDITOR environment variable (in that order). See git-var(1) for details.

Редактор, используемый для редактирования сообщения журнала фиксации, будет выбран из GIT_EDITORпеременной среды, переменной конфигурации core.editor, переменной VISUALсреды или EDITORпеременной среды (в указанном порядке). Подробнее см. Git-var (1) .

## HOOKS
This command can run commit-msg, `prepare-commit-msg`, `pre-commit`, `post-commit` and `post-rewrite` hooks. See githooks(5) for more information.

Эта команда может работать commit-msg, `prepare-commit-msg`, `pre-commit`, `post-commit`и post-rewriteкрючки. См. Githooks (5) для получения дополнительной информации.

## FILES
    $GIT_DIR/COMMIT_EDITMSG
This file contains the commit message of a commit in progress. If git commit exits due to an error before creating a commit, any commit message that has been provided by the user (e.g., in an editor session) will be available in this file, but will be overwritten by the next invocation of `git commit`.

Этот файл содержит сообщение фиксации выполняющейся фиксации. Если происходит `git commit`выход из-за ошибки перед созданием фиксации, любое сообщение фиксации, которое было предоставлено пользователем (например, в сеансе редактора), будет доступно в этом файле, но будет перезаписано при следующем вызове `git commit`.

## SEE ALSO
git-add(1), git-rm(1), git-mv(1), git-merge(1), git-commit-tree(1)