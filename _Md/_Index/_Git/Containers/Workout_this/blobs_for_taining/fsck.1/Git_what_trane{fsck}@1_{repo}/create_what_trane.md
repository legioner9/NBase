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
`git-fsck` - Verifies the connectivity and validity of the objects in the database

`git-fsck` - проверяет возможность подключения и действительность объектов в базе данных

## SYNOPSIS
    git fsck [--tags] [--root] [--unreachable] [--cache] [--no-reflogs]
             [--[no-]full] [--strict] [--verbose] [--lost-found]
             [--[no-]dangling] [--[no-]progress] [--connectivity-only]
             [--[no-]name-objects] [<object>*]
              
## DESCRIPTION
Verifies the connectivity and validity of the objects in the database.

`git-fsck` - проверяет возможность подключения и действительность объектов в базе данных

## OPTIONS
    <object>
An object to treat as the head of an unreachability trace.

Объект, который следует рассматривать как начало следа недостижимости.

If no objects are given, `git fsck` defaults to using the index file, all SHA-1 references in refs namespace, and all reflogs (unless `--no-reflogs` is given) as heads.

Если объекты не заданы, `git fsck` по умолчанию использует индексный файл, все ссылки SHA-1 в refsпространстве имен и все журналы рефлогов (если не указан `--no-reflogs`) в качестве заголовков.

    --unreachable
Print out objects that exist but that aren’t reachable from any of the reference nodes.

Распечатайте объекты, которые существуют, но недоступны ни для одного из ссылочных узлов.

    --[no-]dangling
Print objects that exist but that are never directly used (default). `--no-dangling` can be used to omit this information from the output.

Печатать объекты, которые существуют, но никогда не используются напрямую (по умолчанию). `--no-dangling`можно использовать для исключения этой информации из вывода.

    --root
Report root nodes.

Сообщите о корневых узлах.

    --tags
Report tags.

Теги отчетов.

    --cache
Consider any object recorded in the index also as a head node for an unreachability trace.

Считайте любой объект, записанный в индексе, также головным узлом для трассировки недоступности

    --no-reflogs
Do not consider commits that are referenced only by an entry in a reflog to be reachable. This option is meant only to search for commits that used to be in a ref, but now aren’t, but are still in that corresponding reflog.

Не считайте коммиты, на которые ссылается только запись в журнале ссылок, достижимыми. Эта опция предназначена только для поиска коммитов, которые раньше были в рефлоге, но теперь нет, но все еще находятся в соответствующем рефлоге.

    --full
Check not just objects in GIT_OBJECT_DIRECTORY ($GIT_DIR/objects), but also the ones found in alternate object pools listed in GIT_ALTERNATE_OBJECT_DIRECTORIES or $GIT_DIR/objects/info/alternates, and in packed Git archives found in $GIT_DIR/objects/pack and corresponding pack subdirectories in alternate object pools. This is now default; you can turn it off with `--no-full`.

Проверяйте не только объекты в GIT_OBJECT_DIRECTORY ($ GIT_DIR / objects), но и те, которые находятся в альтернативных пулах объектов, перечисленных в GIT_ALTERNATE_OBJECT_DIRECTORIES или $ GIT_DIR / objects / info / alternates, а также в упакованных архивах Git, найденных в $ GIT_DIR / objects / pack и соответствующих упаковать подкаталоги в альтернативные пулы объектов. Теперь это значение по умолчанию; вы можете выключить его с помощью --no-full.

    --connectivity-only
Check only the connectivity of reachable objects, making sure that any objects referenced by a reachable tag, commit, or tree is present. This speeds up the operation by avoiding reading blobs entirely (though it does still check that referenced blobs exist). This will detect corruption in commits and trees, but not do any semantic checks (e.g., for format errors). Corruption in blob objects will not be detected at all.

Проверьте возможность подключения только доступных объектов, убедившись, что все объекты, на которые ссылается достижимый тег, фиксация или дерево, присутствуют. Это ускоряет операцию, полностью избегая чтения BLOB-объектов (хотя при этом проверяется, существуют ли указанные BLOB-объекты). Это позволит обнаружить повреждение в коммитах и ​​деревьях, но не будет выполнять никаких семантических проверок (например, на наличие ошибок формата). Повреждение в объектах blob вообще не будет обнаружено.

Unreachable tags, commits, and trees will also be accessed to find the tips of dangling segments of history. Use --no-dangling if you don’t care about this output and want to speed it up further.

Недостижимые теги, коммиты и деревья также будут доступны для поиска подсказок висящих сегментов истории. Используйте, --no-danglingесли вам не важен этот вывод и вы хотите его еще больше ускорить.

    --strict
Enable more strict checking, namely to catch a file mode recorded with g+w bit set, which was created by older versions of Git. Existing repositories, including the Linux kernel, Git itself, and sparse repository have old objects that triggers this check, but it is recommended to check new projects with this flag.

Включите более строгую проверку, а именно перехват файлового режима, записанного с установленным битом g + w, который был создан более старыми версиями Git. В существующих репозиториях, включая ядро ​​Linux, сам Git и разреженный репозиторий, есть старые объекты, которые запускают эту проверку, но рекомендуется проверять новые проекты с этим флагом.

    --verbose
Be chatty.

    --lost-found
Write dangling objects into .git/lost-found/commit/ or .git/lost-found/other/, depending on type. If the object is a blob, the contents are written into the file, rather than its object name.

Записывать висячие объекты в .git / lost-found / commit / или .git / lost-found / other /, в зависимости от типа. Если объект является большим двоичным объектом, в файл записывается содержимое, а не его имя объекта

    --name-objects
When displaying names of reachable objects, in addition to the SHA-1 also display a name that describes how they are reachable, compatible with git-rev-parse(1), e.g. HEAD@{1234567890}~25^2:src/.

При отображении имен доступных объектов в дополнение к SHA-1 также отображается имя, описывающее, как они достижимы, совместимо с git-rev-parse (1) , например HEAD@{1234567890}~25^2:src/.

    --[no-]progress
Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --no-progress or --verbose is specified. --progress forces progress status even if the standard error stream is not directed to a terminal.

Состояние выполнения сообщается в стандартном потоке ошибок по умолчанию, когда он подключен к терминалу, если не указаны --no-progress или --verbose. --progress принудительно устанавливает статус выполнения, даже если стандартный поток ошибок не направлен на терминал.

## CONFIGURATION
### fsck.\<msg-id>
During fsck git may find issues with legacy data which wouldn’t be generated by current versions of git, and which wouldn’t be sent over the wire if transfer.fsckObjects was set. This feature is intended to support working with legacy repositories containing such data.

Во время fsck git может обнаружить проблемы с устаревшими данными, которые не будут генерироваться текущими версиями git и которые не будут отправлены по сети, если они transfer.fsckObjectsустановлены. Эта функция предназначена для поддержки работы с устаревшими репозиториями, содержащими такие данные.

Setting fsck.\<msg-id> will be picked up by git-fsck(1), but to accept pushes of such data set receive.fsck.\<msg-id> instead, or to clone or fetch it set fetch.fsck.\<msg-id>.

Настройка fsck.\<msg-id>будет подобрана git-fsck (1) , но receive.fsck.\<msg-id>вместо этого будет принимать push-уведомления с таким набором данных или клонировать или получать его fetch.fsck.\<msg-id>.

The rest of the documentation discusses fsck.* for brevity, but the same applies for the corresponding receive.fsck.* and fetch.\<msg-id>.*. variables.

Остальная часть документации обсуждается fsck.*для краткости, но то же самое относится и к соответствующим receive.fsck.*и fetch.\<msg-id>.*. переменные.

Unlike variables like color.ui and core.editor the receive.fsck.\<msg-id> and fetch.fsck.\<msg-id> variables will not fall back on the fsck.\<msg-id> configuration if they aren’t set. To uniformly configure the same fsck settings in different circumstances all three of them they must all set to the same values.

В отличие от таких переменных , как color.uiи и переменных не будет падать обратно на конфигурации , если они не установлены. Чтобы единообразно настроить одни и те же параметры fsck в разных обстоятельствах, все три из них должны иметь одинаковые значения.core.editorreceive.fsck.<msg-id>fetch.fsck.<msg-id>fsck.<msg-id>

When fsck.\<msg-id> is set, errors can be switched to warnings and vice versa by configuring the fsck.\<msg-id> setting where the \<msg-id> is the fsck message ID and the value is one of error, warn or ignore. For convenience, fsck prefixes the error/warning with the message ID, e.g. "missingEmail: invalid author/committer line - missing email" means that setting fsck.missingEmail = ignore will hide that issue.

Если fsck.\<msg-id>установлено, ошибки можно переключить на предупреждения и наоборот, настроив fsck.\<msg-id>параметр, где \<msg-id>это идентификатор сообщения fsck, а значение - одно из error, warnили ignore. Для удобства fsck добавляет перед ошибкой / предупреждением идентификатор сообщения, например, «missingEmail: недопустимая строка автора / коммиттера - отсутствует адрес электронной почты» означает, что параметр fsck.missingEmail = ignore скроет эту проблему.

In general, it is better to enumerate existing objects with problems with fsck.skipList, instead of listing the kind of breakages these problematic objects share to be ignored, as doing the latter will allow new instances of the same breakages go unnoticed.

В общем, лучше перечислить существующие объекты, с которыми есть проблемы fsck.skipList, вместо того, чтобы перечислять виды поломок, которые эти проблемные объекты разделяют, которые следует игнорировать, поскольку выполнение последнего позволит новым экземплярам тех же самых поломок остаться незамеченными.

Setting an unknown fsck.\<msg-id> value will cause fsck to die, but doing the same for receive.fsck.\<msg-id> and fetch.fsck.\<msg-id> will only cause git to warn.

Установка неизвестного fsck.<msg-id>значения приведет к смерти fsck, но то же самое для receive.fsck.<msg-id>и fetch.fsck.<msg-id> вызовет только предупреждение git.

### fsck.skipList
The path to a list of object names (i.e. one unabbreviated SHA-1 per line) that are known to be broken in a non-fatal way and should be ignored. On versions of Git 2.20 and later comments (#), empty lines, and any leading and trailing whitespace is ignored. Everything but a SHA-1 per line will error out on older versions.

Путь к списку имен объектов (т. Е. По одному несокращенному SHA-1 на строку), которые, как известно, нарушены некритическим образом и должны быть проигнорированы. В версиях Git 2.20 и более поздних версиях комментарии ( # ), пустые строки и любые начальные и конечные пробелы игнорируются. Все, кроме SHA-1 на строку, будет ошибкой в ​​более старых версиях.

This feature is useful when an established project should be accepted despite early commits containing errors that can be safely ignored such as invalid committer email addresses. Note: corrupt objects cannot be skipped with this setting.

Эта функция полезна, когда установленный проект должен быть принят, несмотря на то, что ранние коммиты содержат ошибки, которые можно безопасно игнорировать, например, неверные адреса электронной почты коммиттера. Примечание: с помощью этого параметра нельзя пропустить поврежденные объекты.

Like fsck.\<msg-id> this variable has corresponding receive.fsck.skipList and fetch.fsck.skipList variants.

Как fsck.<msg-id>эта переменная имеет соответствующие receive.fsck.skipListи fetch.fsck.skipListварианты.

Unlike variables like color.ui and core.editor the receive.fsck.skipList and fetch.fsck.skipList variables will not fall back on the fsck.skipList configuration if they aren’t set. To uniformly configure the same fsck settings in different circumstances all three of them they must all set to the same values.

В отличие от таких переменных , как color.uiи и переменных не будет падать обратно на конфигурации , если они не установлены. Чтобы единообразно настроить одни и те же параметры fsck в разных обстоятельствах, все три из них должны иметь одинаковые значения.core.editorreceive.fsck.skipListfetch.fsck.skipListfsck.skipList

Older versions of Git (before 2.20) documented that the object names list should be sorted. This was never a requirement, the object names could appear in any order, but when reading the list we tracked whether the list was sorted for the purposes of an internal binary search implementation, which could save itself some work with an already sorted list. Unless you had a humongous list there was no reason to go out of your way to pre-sort the list. After Git version 2.20 a hash implementation is used instead, so there’s now no reason to pre-sort the list.

В более старых версиях Git (до 2.20) указывалось, что список имен объектов должен быть отсортирован. Это никогда не было обязательным требованием, имена объектов могли появляться в любом порядке, но при чтении списка мы отслеживали, был ли список отсортирован для целей реализации внутреннего двоичного поиска, что могло сэкономить некоторую работу с уже отсортированным списком. Если у вас нет огромного списка, не было причин стараться изо всех сил предварительно отсортировать список. После Git версии 2.20 вместо него используется хеш-реализация, поэтому теперь нет причин для предварительной сортировки списка.

## DISCUSSION
git-fsck tests SHA-1 and general object sanity, and it does full tracking of the resulting reachability and everything else. It prints out any corruption it finds (missing or bad objects), and if you use the --unreachable flag it will also print out objects that exist but that aren’t reachable from any of the specified head nodes (or the default set, as mentioned above).

git-fsck проверяет SHA-1 и общую работоспособность объекта, а также полностью отслеживает полученную достижимость и все остальное. Он распечатывает все найденные повреждения (отсутствующие или поврежденные объекты), и если вы используете --unreachableфлаг, он также распечатает объекты, которые существуют, но недоступны ни с одного из указанных головных узлов (или набора по умолчанию, как указано выше. ).

Any corrupt objects you will have to find in backups or other archives (i.e., you can just remove them and do an rsync with some other site in the hopes that somebody else has the object you have corrupted).

Любые поврежденные объекты, которые вам придется найти в резервных копиях или других архивах (т.е. вы можете просто удалить их и выполнить rsync с каким-либо другим сайтом в надежде, что у кого-то есть объект, который вы испортили).

If core.commitGraph is true, the commit-graph file will also be inspected using git commit-graph verify. See git-commit-graph(1).

Если core.commitGraph имеет значение true, файл commit-graph также будет проверен с помощью git commit-graph verify . См. Git-commit-graph (1) .

## Extracted Diagnostics
### expect dangling commits - potential heads - due to lack of head information
You haven’t specified any nodes as heads so it won’t be possible to differentiate between un-parented commits and root nodes.

ожидайте висящих коммитов - потенциальных голов - из-за отсутствия информации о голове
Вы не указали какие-либо узлы в качестве заголовков, поэтому будет невозможно отличить коммиты без родителей от корневых узлов.

### missing sha1 directory \<dir>
The directory holding the sha1 objects is missing.

Каталог, содержащий объекты sha1, отсутствует.

### unreachable \<type> \<object>
The \<type> object \<object>, isn’t actually referred to directly or indirectly in any of the trees or commits seen. This can mean that there’s another root node that you’re not specifying or that the tree is corrupt. If you haven’t missed a root node then you might as well delete unreachable nodes since they can’t be used.

Объект \<type> \<object> на самом деле не упоминается прямо или косвенно ни в одном из наблюдаемых деревьев или коммитов. Это может означать, что есть еще один корневой узел, который вы не указываете, или что дерево повреждено. Если вы не пропустили корневой узел, вы также можете удалить недоступные узлы, поскольку их нельзя использовать.

### missing \<type> \<object>
The \<type> object \<object>, is referred to but isn’t present in the database.

На объект \<type> \<object> есть ссылка, но он отсутствует в базе данных.

### dangling \<type> \<object>
The \<type> object \<object>, is present in the database but never directly used. A dangling commit could be a root node.

\<type> объект \<object> присутствует в базе данных, но никогда напрямую не используется. Висящий коммит может быть корневым узлом.

### hash mismatch \<object>
The database has an object whose hash doesn’t match the object database value. This indicates a serious data integrity problem.

В базе данных есть объект, хэш которого не соответствует значению базы данных объектов. Это указывает на серьезную проблему целостности данных.

## Environment Variables
    GIT_OBJECT_DIRECTORY
used to specify the object database root (usually $GIT_DIR/objects)

используется для указания корня базы данных объектов (обычно $ GIT_DIR / objects)

    GIT_INDEX_FILE
used to specify the index file of the index

используется для указания индексного файла индекса

    GIT_ALTERNATE_OBJECT_DIRECTORIES
     
used to specify additional object database roots (usually unset)

используется для указания дополнительных корней базы данных объектов (обычно не задано)