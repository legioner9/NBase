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
git-tag - Create, list, delete or verify a tag object signed with GPG

git-tag - создание, список, удаление или проверка объекта тега, подписанного с помощью GPG

## SYNOPSIS
    git tag [-a | -s | -u <keyid>] [-f] [-m <msg> | -F <file>] [-e]
            <tagname> [<commit> | <object>]
    git tag -d <tagname>…​
    git tag [-n[<num>]] -l [--contains <commit>] [--no-contains <commit>]
            [--points-at <object>] [--column[=<options>] | --no-column]
            [--create-reflog] [--sort=<key>] [--format=<format>]
            [--[no-]merged [<commit>]] [<pattern>…​]
    git tag -v [--format=<format>] <tagname>…​
    
## DESCRIPTION
Add a tag reference in refs/tags/, unless -d/-l/-v is given to delete, list or verify tags.

Добавьте ссылку на тег refs/tags/, если -d/-l/-vне указано для удаления, перечисления или проверки тегов.

Unless -f is given, the named tag must not yet exist.

Если не указано -fиное, именованный тег еще не должен существовать.

If one of -a, -s, or -u <keyid> is passed, the command creates a tag object, and requires a tag message. Unless -m <msg> or -F <file> is given, an editor is started for the user to type in the tag message.

Если передано одно из -a, -sили -u <keyid>, команда создает объект тега и требует сообщения тега. Если не указано -m <msg>или -F <file>, запускается редактор, чтобы пользователь мог ввести сообщение тега.

If -m <msg> or -F <file> is given and -a, -s, and -u <keyid> are absent, -a is implied.

Если задано -m <msg>или, -F <file>а -a, -sи -u <keyid> отсутствуют, -aподразумевается.

Otherwise, a tag reference that points directly at the given object (i.e., a lightweight tag) is created.

В противном случае создается ссылка на тег, которая указывает непосредственно на данный объект (т. Е. Облегченный тег).

A GnuPG signed tag object will be created when -s or -u <keyid> is used. When -u <keyid> is not used, the committer identity for the current user is used to find the GnuPG key for signing. The configuration variable gpg.program is used to specify custom GnuPG binary.

Объект тега, подписанный GnuPG, будет создан при использовании -sили -u <keyid>. Когда -u <keyid>не используется, идентификатор коммиттера для текущего пользователя используется для поиска ключа GnuPG для подписи. Переменная конфигурации gpg.program используется для указания пользовательского двоичного файла GnuPG.

Tag objects (created with -a, -s, or -u) are called "annotated" tags; they contain a creation date, the tagger name and e-mail, a tagging message, and an optional GnuPG signature. Whereas a "lightweight" tag is simply a name for an object (usually a commit object).

Объекты тегов (созданные с помощью -a, -sили -u) называются «аннотированными» тегами; они содержат дату создания, имя тега и адрес электронной почты, сообщение тегирования и необязательную подпись GnuPG. В то время как «облегченный» тег - это просто имя объекта (обычно это объект фиксации).

Annotated tags are meant for release while lightweight tags are meant for private or temporary object labels. For this reason, some git commands for naming objects (like git describe) will ignore lightweight tags by default.

Аннотированные теги предназначены для выпуска, в то время как легкие теги предназначены для меток частных или временных объектов. По этой причине некоторые команды git для именования объектов (например git describe) по умолчанию игнорируют облегченные теги.

## OPTIONS
### -a
    --annotate
Make an unsigned, annotated tag object

Создайте беззнаковый аннотированный объект тега

### -s
    --sign
Make a GPG-signed tag, using the default e-mail address’s key. The default behavior of tag GPG-signing is controlled by tag.gpgSign configuration variable if it exists, or disabled otherwise. See git-config(1).

Сделайте тег, подписанный GPG, используя ключ адреса электронной почты по умолчанию. Поведение тега GPG-подписывания по умолчанию контролируется tag.gpgSign переменной конфигурации, если она существует, или отключена в противном случае. См. Git-config (1) .

    --no-sign
Override tag.gpgSign configuration variable that is set to force each and every tag to be signed.

Переопределить tag.gpgSignпеременную конфигурации, которая настроена для принудительной подписи каждого тега.

### -u <keyid>
    --local-user=<keyid>
Make a GPG-signed tag, using the given key.

Сделайте подписанный GPG тег, используя данный ключ.

### -f
    --force
Replace an existing tag with the given name (instead of failing)

Заменить существующий тег с заданным именем (вместо сбоя)

### -d
    --delete
Delete existing tags with the given names.

Удалите существующие теги с заданными именами.

### -v
    --verify
Verify the GPG signature of the given tag names.

Проверьте подпись GPG для заданных имен тегов.

### -n<num>
<num> specifies how many lines from the annotation, if any, are printed when using -l. Implies --list.

<num> указывает, сколько строк из аннотации, если таковые имеются, печатаются при использовании -l. Подразумевает --list.

The default is not to print any annotation lines. If no number is given to -n, only the first line is printed. If the tag is not annotated, the commit message is displayed instead.

По умолчанию никакие строки аннотации не печатаются. Если номер не указан -n, печатается только первая строка. Если тег не аннотирован, вместо него отображается сообщение о фиксации.

-l

### -l
    --list
List tags. With optional <pattern>..., e.g. git tag --list 'v-*', list only the tags that match the pattern(s).

Список тегов. Необязательно <pattern>..., например git tag --list 'v-*', перечислить только те теги, которые соответствуют шаблону (шаблонам).

Running "git tag" without arguments also lists all tags. The pattern is a shell wildcard (i.e., matched using fnmatch(3)). Multiple patterns may be given; if any of them matches, the tag is shown.

Запуск «git tag» без аргументов также выводит список всех тегов. Шаблон представляет собой подстановочный знак оболочки (т. Е. Сопоставлен с помощью fnmatch (3)). Могут быть даны несколько шаблонов; если какой-либо из них совпадает, отображается тег

This option is implicitly supplied if any other list-like option such as --contains is provided. See the documentation for each of those options for details.

Эта опция неявно предоставляется, если предоставляется любая другая опция в виде списка, такая как --contains. Подробности см. В документации по каждому из этих вариантов.

    --sort=<key>
Sort based on the key given. Prefix - to sort in descending order of the value. You may use the --sort=<key> option multiple times, in which case the last key becomes the primary key. Also supports "version:refname" or "v:refname" (tag names are treated as versions). The "version:refname" sort order can also be affected by the "versionsort.suffix" configuration variable. The keys supported are the same as those in git for-each-ref. Sort order defaults to the value configured for the tag.sort variable if it exists, or lexicographic order otherwise. See git-config(1).

Сортировка по заданному ключу. Префикс -для сортировки в порядке убывания значения. Вы можете использовать опцию --sort = <key> несколько раз, и в этом случае последний ключ становится первичным ключом. Также поддерживает "version: refname" или "v: refname" (имена тегов рассматриваются как версии). На порядок сортировки «version: refname» также может влиять конфигурационная переменная «versionsort.suffix». Поддерживаемые ключи такие же, как в git for-each-ref. Порядок сортировки по умолчанию равен значению, настроенному для tag.sort переменной, если она существует, или лексикографическому порядку в противном случае. См. Git-config (1) .


    --color[=<when>]
Respect any colors specified in the --format option. The <when> field must be one of always, never, or auto (if <when> is absent, behave as if always was given).

Уважайте любые цвета, указанные в --formatопции. <when>Поле должно быть одним из always, neverили auto(если <when>отсутствует, ведут себя , как если бы alwaysбыло дано).

### -i
    --ignore-case
Sorting and filtering tags are case insensitive.

Теги сортировки и фильтрации нечувствительны к регистру.

    --column[=<options>]
    --no-column
Display tag listing in columns. See configuration variable column.tag for option syntax.--column and --no-column without options are equivalent to always and never respectively.

Отображение списка тегов в столбцах. См. Синтаксис опции в переменной конфигурации column.tag. --columnи --no-column без опций эквивалентны всегда и никогда соответственно.

This option is only applicable when listing tags without annotation lines.

Эта опция применима только при перечислении тегов без строк аннотации.

    --contains [<commit>]
Only list tags which contain the specified commit (HEAD if not specified). Implies --list.

Список только тегов, которые содержат указанную фиксацию (HEAD, если не указан). Подразумевает --list.

    --no-contains [<commit>]
Only list tags which don’t contain the specified commit (HEAD if not specified). Implies --list.

Список только тегов, которые не содержат указанную фиксацию (HEAD, если не указан). Подразумевает --list.

    --merged [<commit>]
Only list tags whose commits are reachable from the specified commit (HEAD if not specified), incompatible with --no-merged.

Список только тегов, коммиты которых доступны из указанного коммита ( HEADесли не указано), несовместимых с --no-merged.

    --no-merged [<commit>]
Only list tags whose commits are not reachable from the specified commit (HEAD if not specified), incompatible with --merged.

Список только тегов, чьи коммиты недоступны из указанного коммита ( HEADесли не указан), несовместимых с --merged.

    --points-at <object>
Only list tags of the given object (HEAD if not specified). Implies --list.

Только перечислить теги данного объекта (HEAD, если не указан). Подразумевает --list.

### -m <msg>
    --message=<msg>
Use the given tag message (instead of prompting). If multiple -m options are given, their values are concatenated as separate paragraphs. Implies -a if none of -a, -s, or -u <keyid> is given.

Используйте данное сообщение тега (вместо запроса). Если -mуказано несколько вариантов, их значения объединяются в отдельные абзацы. Не Подразумевает , -aесли ни один из -a, -sили -u <keyid> дается.

### -F <file>
    --file=<file>
Take the tag message from the given file. Use - to read the message from the standard input. Implies -a if none of -a, -s, or -u <keyid> is given.

Возьмите сообщение тега из данного файла. Используйте -, чтобы прочитать сообщение со стандартного ввода. Не Подразумевает , -aесли ни один из -a, -sили -u <keyid> дается.

### -e
    --edit
The message taken from file with -F and command line with -m are usually used as the tag message unmodified. This option lets you further edit the message taken from these sources.

Сообщение, взятое из файла с -Fи в командной строке -m, обычно используется как неизмененное сообщение тега. Эта опция позволяет вам редактировать сообщение, полученное из этих источников.

    --cleanup=<mode>
This option sets how the tag message is cleaned up. The <mode> can be one of verbatim, whitespace and strip. The strip mode is default. The verbatim mode does not change message at all, whitespace removes just leading/trailing whitespace lines and strip removes both whitespace and commentary.

Этот параметр устанавливает способ очистки сообщения тега. <Режим> может быть одним из Verbatim , пробелы и полосы . Режим полосы по умолчанию. Дословный режим не меняет сообщение на всех, пробельные удаляет только ведущие / конечные пробелы линии и полосы удаляет как пробелы и комментарии.

    --create-reflog
Create a reflog for the tag. To globally enable reflogs for tags, see core.logAllRefUpdates in git-config(1). The negated form --no-create-reflog only overrides an earlier --create-reflog, but currently does not negate the setting of core.logAllRefUpdates.

Создайте рефлог для тега. Чтобы глобально включить reflogs для тегов см core.logAllRefUpdatesв GIT-конфигурации (1) . Инвертированная форма --no-create-reflogтолько отменяет более раннюю --create-reflog, но в настоящее время не отменяет установку core.logAllRefUpdates.

    --format=<format>
A string that interpolates %(fieldname) from a tag ref being shown and the object it points at. The format is the same as that of git-for-each-ref(1). When unspecified, defaults to %(refname:strip=2).

Строка, которая интерполируется %(fieldname)из показываемой ссылки тега и объекта, на который она указывает. Формат такой же, как у git-for-each-ref (1) . Если не указано иное, по умолчанию используется %(refname:strip=2).

    <tagname>
The name of the tag to create, delete, or describe. The new tag name must pass all checks defined by git-check-ref-format(1). Some of these checks may restrict the characters allowed in a tag name.

Имя тега, который нужно создать, удалить или описать. Новое имя тега должно пройти все проверки, определенные git-check-ref-format (1) . Некоторые из этих проверок могут ограничивать символы, разрешенные в имени тега.

    <commit>
    <object>
The object that the new tag will refer to, usually a commit. Defaults to HEAD.

Объект, на который будет ссылаться новый тег, обычно фиксация. По умолчанию HEAD.

##  CONFIGURATION
By default, git tag in sign-with-default mode (-s) will use your committer identity (of the form Your Name <your@email.address>) to find a key. If you want to use a different default key, you can specify it in the repository configuration as follows:

По умолчанию тег git в режиме входа по умолчанию (-s) будет использовать вашу личность коммиттера (в форме Your Name <your@email.address>) для поиска ключа. Если вы хотите использовать другой ключ по умолчанию, вы можете указать его в конфигурации репозитория следующим образом:

    [user]
       signingKey = <gpg-keyid>
pager.tag is only respected when listing tags, i.e., when -l is used or implied. The default is to use a pager. See git-config(1).

pager.tagсоблюдается только при перечислении тегов, т. е. когда -lиспользуется или подразумевается. По умолчанию используется пейджер. См. Git-config (1) .

## DISCUSSION
### On Re-tagging

О смене тегов

What should you do when you tag a wrong commit and you would want to re-tag?

Что делать, если вы пометили неправильную фиксацию и хотите пометить заново?

If you never pushed anything out, just re-tag it. Use "-f" to replace the old one. And you’re done.

Если вы никогда ничего не выталкивали, просто пометьте его заново. Используйте "-f", чтобы заменить старый. И вы сделали.

But if you have pushed things out (or others could just read your repository directly), then others will have already seen the old tag. In that case you can do one of two things:

Но если вы что-то выдвинули (или другие могут просто читать ваш репозиторий напрямую), то другие уже увидят старый тег. В этом случае вы можете сделать одно из двух:

1. The sane thing. Just admit you screwed up, and use a different name. Others have already seen one tag-name, and if you keep the same name, you may be in the situation that two people both have "version X", but they actually have different "X"'s. So just call it "X.1" and be done with it.
Вменяемая вещь. Просто признайте, что вы облажались, и используйте другое имя. Другие уже видели одно имя тега, и если вы сохраните то же имя, вы можете оказаться в ситуации, когда у двух людей есть «версия X», но на самом деле у них разные «X». Так что просто назовите его «X.1» и покончите с этим.


2. The insane thing. You really want to call the new version "X" too, even though others have already seen the old one. So just use git tag -f again, as if you hadn’t already published the old one.
Безумие. Вы действительно хотите назвать новую версию «X», даже если другие уже видели старую. Так что просто снова используйте git tag -f , как будто вы еще не опубликовали старую версию.


However, Git does not (and it should not) change tags behind users back. So if somebody already got the old tag, doing a git pull on your tree shouldn’t just make them overwrite the old one.

Однако, Git делает не (и не должны) изменить метки позади пользователей назад. Поэтому, если у кого-то уже есть старый тег, выполнение git pull на вашем дереве не должно просто заставить его перезаписать старый.

If somebody got a release tag from you, you cannot just change the tag for them by updating your own one. This is a big security issue, in that people MUST be able to trust their tag-names. If you really want to do the insane thing, you need to just fess up to it, and tell people that you messed up. You can do that by making a very public announcement saying:

Если кто-то получил от вас метку выпуска, вы не можете просто изменить метку для него, обновив свой собственный. Это большая проблема безопасности, поскольку люди ДОЛЖНЫ доверять своим именам тегов. Если вы действительно хотите совершить безумный поступок, вам нужно просто признаться в этом и рассказать людям, что вы напортачили. Вы можете сделать это, сделав публичное объявление:

    Ok, I messed up, and I pushed out an earlier version tagged as X. I
    then fixed something, and retagged the *fixed* tree as X again.
    
    Хорошо, я напортачил и выложил более раннюю версию, помеченную как X. Я
    затем что-то исправил и снова пометил * исправленное * дерево как X.
    
    If you got the wrong tag, and want the new one, please delete
    the old one and fetch the new one by doing:
    
    Если вы ошиблись тегом и хотите использовать новый, удалите
    старый и получите новый, выполнив:
    
            git tag -d X
            git fetch origin tag X
    
    to get my updated tag.
    
    чтобы получить обновленный тег.
    
    You can test which tag you have by doing
    
    Вы можете проверить, какой у вас тег, выполнив
    
            git rev-parse X
    
    which should return 0123456789abcdef.. if you have the new version.
    
    который должен вернуть 0123456789abcdef .. если у вас новая версия.
    
    Sorry for the inconvenience.
    
    Приносим извинения за неудобства.
    
Does this seem a bit complicated? It should be. There is no way that it would be correct to just "fix" it automatically. People need to know that their tags might have been changed.

Это кажется немного сложным? Так и должно быть. Нет никакого способа, чтобы было бы правильно просто «исправить» это автоматически. Люди должны знать, что их теги могли быть изменены.

### On Automatic following

Автоматическое отслеживание

If you are following somebody else’s tree, you are most likely using remote-tracking branches (eg. refs/remotes/origin/master). You usually want the tags from the other end.

Если вы следуете за чужим деревом, вы, скорее всего, используете ветки удаленного отслеживания (например refs/remotes/origin/master). Обычно вам нужны теги с другого конца.

On the other hand, if you are fetching because you would want a one-shot merge from somebody else, you typically do not want to get tags from there. This happens more often for people near the toplevel but not limited to them. Mere mortals when pulling from each other do not necessarily want to automatically get private anchor point tags from the other person.

С другой стороны, если вы выполняете выборку, потому что вам нужно одноразовое слияние от кого-то еще, вы обычно не хотите получать теги оттуда. Это чаще случается с людьми, близкими к верхнему уровню, но не ограничиваясь ими. Простые смертные, тянущие друг от друга, не обязательно хотят автоматически получать частные теги точек привязки от другого человека.

Often, "please pull" messages on the mailing list just provide two pieces of information: a repo URL and a branch name; this is designed to be easily cut&pasted at the end of a git fetch command line:

Часто сообщения «пожалуйста, потяните» в списке рассылки просто предоставляют две части информации: URL-адрес репо и имя ветки; его можно легко вырезать и вставить в конец командной строки git fetch :

    Linus, please pull from

        git://git..../proj.git master

    to get the following updates...
     
becomes:

    $ git pull git://git..../proj.git master
     
In such a case, you do not want to automatically follow the other person’s tags.

В таком случае вы не хотите автоматически следить за тегами другого человека.

One important aspect of Git is its distributed nature, which largely means there is no inherent "upstream" or "downstream" in the system. On the face of it, the above example might seem to indicate that the tag namespace is owned by the upper echelon of people and that tags only flow downwards, but that is not the case. It only shows that the usage pattern determines who are interested in whose tags.

Одним из важных аспектов Git является его распределенная природа, что в значительной степени означает, что в системе нет присущих «восходящего» или «нисходящего» направления. На первый взгляд может показаться, что приведенный выше пример указывает на то, что пространство имен тегов принадлежит высшему эшелону людей и что теги текут только вниз, но это не так. Это только показывает, что шаблон использования определяет, кому чьи теги интересны.

A one-shot pull is a sign that a commit history is now crossing the boundary between one circle of people (e.g. "people who are primarily interested in the networking part of the kernel") who may have their own set of tags (e.g. "this is the third release candidate from the networking group to be proposed for general consumption with 2.6.21 release") to another circle of people (e.g. "people who integrate various subsystem improvements"). The latter are usually not interested in the detailed tags used internally in the former group (that is what "internal" means). That is why it is desirable not to follow tags automatically in this case.

Одноразовое извлечение - это признак того, что история фиксации теперь пересекает границу между одним кругом людей (например, «людьми, которые в первую очередь заинтересованы в сетевой части ядра»), которые могут иметь свой собственный набор тегов (например, « это третий выпуск-кандидат от сетевой группы, который будет предложен для общего использования с выпуском 2.6.21 ») другому кругу людей (например,« людям, которые интегрируют различные улучшения подсистем »). Последних обычно не интересуют подробные теги, используемые внутри первой группы (это то, что означает «внутренние»). Поэтому в этом случае желательно не следовать за тегами автоматически.

It may well be that among networking people, they may want to exchange the tags internal to their group, but in that workflow they are most likely tracking each other’s progress by having remote-tracking branches. Again, the heuristic to automatically follow such tags is a good thing.

Вполне возможно, что люди, работающие в сети, могут захотеть обмениваться тегами внутри своей группы, но в этом рабочем процессе они, скорее всего, отслеживают прогресс друг друга, имея ветки удаленного отслеживания. Опять же, эвристика автоматического отслеживания таких тегов - это хорошо.

### On Backdating Tags

О тэгах задним числом

If you have imported some changes from another VCS and would like to add tags for major releases of your work, it is useful to be able to specify the date to embed inside of the tag object; such data in the tag object affects, for example, the ordering of tags in the gitweb interface.

Если вы импортировали некоторые изменения из другой VCS и хотели бы добавить теги для основных выпусков вашей работы, полезно иметь возможность указать дату для встраивания в объект тега; такие данные в объекте тега влияют, например, на порядок тегов в интерфейсе gitweb.

To set the date used in future tag objects, set the environment variable GIT_COMMITTER_DATE (see the later discussion of possible values; the most common form is "YYYY-MM-DD HH:MM").

Чтобы установить дату, которая будет использоваться в будущих объектах тегов, установите переменную среды GIT_COMMITTER_DATE (см. Обсуждение возможных значений ниже; наиболее распространенная форма - «ГГГГ-ММ-ДД ЧЧ: ММ»).

For example:

    $ GIT_COMMITTER_DATE="2006-10-02 10:31" git tag -s v1.0.1
    
## DATE FORMATS
The GIT_AUTHOR_DATE, GIT_COMMITTER_DATE environment variables support the following date formats:

В GIT_AUTHOR_DATE, GIT_COMMITTER_DATEпеременные среды поддерживают следующие форматы даты

### Git internal format
It is <unix timestamp> <time zone offset>, where <unix timestamp> is the number of seconds since the UNIX epoch. <time zone offset> is a positive or negative offset from UTC. For example CET (which is 1 hour ahead of UTC) is +0100.

Это <unix timestamp> <time zone offset>, где <unix timestamp>- количество секунд, прошедших с эпохи UNIX. <time zone offset>положительное или отрицательное смещение от UTC. Например, CET (что на 1 час опережает UTC) равно +0100.

### RFC 2822
The standard email format as described by RFC 2822, for example Thu, 07 Apr 2005 22:13:13 +0200.

Стандартный формат электронной почты, например, описанный в RFC 2822 Thu, 07 Apr 2005 22:13:13 +0200.

### ISO 8601
Time and date specified by the ISO 8601 standard, for example 2005-04-07T22:13:13. The parser accepts a space instead of the T character as well. Fractional parts of a second will be ignored, for example 2005-04-07T22:13:13.019 will be treated as 2005-04-07T22:13:13.

Например, время и дата, указанные в стандарте ISO 8601 2005-04-07T22:13:13. Парсер также принимает пробел вместо Tсимвола. Дробные доли секунды будут игнорироваться, например, 2005-04-07T22:13:13.019будут рассматриваться как 2005-04-07T22:13:13.

> NOTE
In addition, the date part is accepted in the following formats: YYYY.MM.DD, MM/DD/YYYY and DD.MM.YYYY.


> ЗАПИСЬ
Кроме того, дата часть принимается в следующих форматах: YYYY.MM.DD, MM/DD/YYYYи DD.MM.YYYY.