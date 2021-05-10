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
`git-help` - Display help information about Git

`git-help` - Показать справочную информацию о Git

## SYNOPSIS
    git help [-a|--all [--[no-]verbose]] [-g|--guide]
           [-i|--info|-m|--man|-w|--web] [COMMAND|GUIDE]
            
## DESCRIPTION
With no options and no COMMAND or GUIDE given, the synopsis of the git command and a list of the most commonly used Git commands are printed on the standard output.

Без параметров и без указания КОМАНД или РУКОВОДСТВА синопсис команды git и список наиболее часто используемых команд Git выводятся на стандартный вывод.

If the option `--all` or `-a` is given, all available commands are printed on the standard output.

Если задана опция --allили -a, все доступные команды выводятся на стандартный вывод.

If the option `--guide` or `-g` is given, a list of the useful Git guides is also printed on the standard output.

Если задана опция `--guide`или `-g`, список полезных руководств Git также будет напечатан на стандартном выводе.

If a command, or a guide, is given, a manual page for that command or guide is brought up. The `man` program is used by default for this purpose, but this can be overridden by other options or configuration variables.

Если дана команда или руководство, открывается страница руководства для этой команды или руководства. По умолчанию для этой цели используется программа man , но это может быть отменено другими параметрами или переменными конфигурации.

If an alias is given, git shows the definition of the alias on standard output. To get the manual page for the aliased command, use `git COMMAND --help`.

Если указан псевдоним, git показывает определение псевдонима в стандартном выводе. Чтобы получить страницу руководства для команды с псевдонимом, используйте git COMMAND --help.

Note that `git --help ...` is identical to `git help ...` because the former is internally converted into the latter.

Обратите внимание, что git --help ...это идентично, git help ...потому что первое внутренне преобразовано во второе.

To display the git(1) man page, use `git help git`.

Чтобы отобразить справочную страницу git (1) , используйте `git help git`.

This page can be displayed with `git help help` or `git help --help`

Эту страницу можно отобразить с помощью `git help help` или`git help --help`

## OPTIONS
### -a
    --all
Prints all the available commands on the standard output. This option overrides any given command or guide name.

Выводит все доступные команды на стандартный вывод. Эта опция отменяет любую заданную команду или имя руководства.

    --verbose
When used with `--all` print description for all recognized commands. This is the default.

При использовании с `--all`описанием печати для всех распознанных команд. Это значение по умолчанию.

### -c
    --config
List all available configuration variables. This is a short summary of the list in git-config(1).

Список всех доступных переменных конфигурации. Это краткое изложение списка в git-config (1) .

### -g
    --guides
Prints a list of useful guides on the standard output. This option overrides any given command or guide name.

Печатает список полезных руководств на стандартном выходе. Эта опция отменяет любую заданную команду или имя руководства.

### -i
    --info
Display manual page for the command in the info format. The info program will be used for that purpose.

Вывести справочную страницу для команды в информационном формате. Для этого будет использована информационная программа.

### -m
    --man
Display manual page for the command in the man format. This option may be used to override a value set in the help.format configuration variable.

Вывести справочную страницу для команды в формате man . Эта опция может использоваться для переопределения значения, установленного в help.formatпеременной конфигурации.

By default the man program will be used to display the manual page, but the man.viewer configuration variable may be used to choose other display programs (see below).

По умолчанию программа man будет использоваться для отображения страницы руководства, но man.viewerпеременная конфигурации может использоваться для выбора других программ отображения (см. Ниже).

### -w
    --web
Display manual page for the command in the web (HTML) format. A web browser will be used for that purpose.

Отобразить справочную страницу для команды в формате Интернета (HTML). Для этого будет использоваться веб-браузер.

The web browser can be specified using the configuration variable help.browser, or web.browser if the former is not set. If none of these config variables is set, the git web--browse helper script (called by git help) will pick a suitable default. See git-web--browse(1) for more information about this.

Веб-браузер можно указать с помощью переменной конфигурации help.browserили, web.browserесли первая не задана. Если ни одна из этих переменных конфигурации не задана, вспомогательный скрипт git web - browse (вызываемый git help ) выберет подходящее значение по умолчанию. См. Git-web - browse (1) для получения дополнительной информации об этом.

## CONFIGURATION VARIABLES
### help.format
If no command-line option is passed, the help.format configuration variable will be checked. The following values are supported for this variable; they make git help behave as their corresponding command- line option:

    "man" corresponds to -m|--man,
    
    "info" corresponds to -i|--info,
    
    "web" or "html" correspond to -w|--web.
 
Если параметр командной строки не передан, help.formatпеременная конфигурации будет проверена. Для этой переменной поддерживаются следующие значения; они заставляют git help работать как соответствующий параметр командной строки:

    "человек" соответствует -m | --man ,
    
    "info" соответствует -i | --info ,
    
    "web" или "html" соответствуют -w | --web . 

### help.browser, web.browser and browser.\<tool>.path
The help.browser, web.browser and browser.\<tool>.path will also be checked if the web format is chosen (either by command-line option or configuration variable). See -w|--web in the OPTIONS section above and git-web--browse(1).

Символы help.browser, web.browserи browser.\<tool>.pathтакже будут проверяться, если выбран веб- формат (с помощью параметра командной строки или переменной конфигурации). Смотрите -w | --web в разделе ОПЦИИ выше и git-web - browse (1) .

### man.viewer
The man.viewer configuration variable will be checked if the man format is chosen. The following values are currently supported:

man.viewerПеременная конфигурации будет проверяться , если человек выбран формат. В настоящее время поддерживаются следующие значения:

"man": use the man program as usual,

"man": используйте программу man как обычно,

"woman": use emacsclient to launch the "woman" mode in emacs (this only works starting with emacsclient versions 22),

"женщина": используйте emacsclient для запуска режима "женщина" в emacs (это работает только начиная с версии 22 emacsclient),

"konqueror": use kfmclient to open the man page in a new konqueror tab (see Note about konqueror below).

"konqueror": используйте kfmclient, чтобы открыть страницу руководства на новой вкладке konqueror (см. примечание о konqueror ниже).

Values for other tools can be used if there is a corresponding man.\<tool>.cmd configuration entry (see below).

Значения для других инструментов могут быть использованы при наличии соответствующей man.\<tool>.cmdзаписи конфигурации (см. Ниже).

Multiple values may be given to the man.viewer configuration variable. Their corresponding programs will be tried in the order listed in the configuration file.

man.viewerПеременной конфигурации может быть присвоено несколько значений . Соответствующие программы будут проверены в порядке, указанном в файле конфигурации.

For example, this configuration:

Например, такая конфигурация:

        [man]
                viewer = konqueror
                viewer = woman
will try to use konqueror first. But this may fail (for example, if DISPLAY is not set) and in that case emacs' woman mode will be tried.

сначала попробую использовать konqueror. Но это может потерпеть неудачу (например, если DISPLAY не установлен), и в этом случае будет использован женский режим emacs.

If everything fails, or if no viewer is configured, the viewer specified in the GIT_MAN_VIEWER environment variable will be tried. If that fails too, the man program will be tried anyway.

Если что-то не удается или если программа просмотра не настроена, будет использована программа просмотра, указанная в GIT_MAN_VIEWERпеременной среды. Если это тоже не удастся, программа man все равно будет проверена.

### man.\<tool>.path
You can explicitly provide a full path to your preferred man viewer by setting the configuration variable man.\<tool>.path. For example, you can configure the absolute path to konqueror by setting man.konqueror.path. Otherwise, git help assumes the tool is available in PATH.

Вы можете явно указать полный путь к предпочтительной программе просмотра man, установив переменную конфигурации man.\<tool>.path. Например, вы можете настроить абсолютный путь к konqueror, установив man.konqueror.path . В противном случае git help предполагает, что инструмент доступен в PATH.

### man.\<tool>.cmd
When the man viewer, specified by the man.viewer configuration variables, is not among the supported ones, then the corresponding man.\<tool>.cmd configuration variable will be looked up. If this variable exists then the specified tool will be treated as a custom command and a shell eval will be used to run the command with the man page passed as arguments.

Когда программа просмотра man, указанная в man.viewerпеременных конфигурации, не входит в число поддерживаемых, будет произведен поиск соответствующей man.\<tool>.cmdпеременной конфигурации. Если эта переменная существует, то указанный инструмент будет рассматриваться как пользовательская команда, и для выполнения команды будет использоваться eval оболочки с переданной в качестве аргументов страницей руководства.

### Note about konqueror
When konqueror is specified in the man.viewer configuration variable, we launch kfmclient to try to open the man page on an already opened konqueror in a new tab if possible.

Когда konqueror указан в man.viewerпеременной конфигурации, мы запускаем kfmclient, чтобы попытаться открыть страницу руководства на уже открытом konqueror в новой вкладке, если это возможно.

For consistency, we also try such a trick if man.konqueror.path is set to something like A_PATH_TO/konqueror. That means we will try to launch A_PATH_TO/kfmclient instead.

Для единообразия мы также пробуем такой трюк, если для man.konqueror.path установлено что-то вроде A_PATH_TO/konqueror. Значит, мы попробуем запустить A_PATH_TO/kfmclientвместо этого.

If you really want to use konqueror, then you can use something like the following:

Если вы действительно хотите использовать konqueror , вы можете использовать что-то вроде следующего:

        [man]
                viewer = konq

        [man "konq"]
                cmd = A_PATH_TO/konqueror
### Note about git config --global
Note that all these configuration variables should probably be set using the --global flag, for example like this:

Обратите внимание, что все эти переменные конфигурации, вероятно, должны быть установлены с помощью --globalфлага, например, следующим образом:

    $ git config --global help.format web
    $ git config --global web.browser firefox
as they are probably more user specific than repository specific. See git-config(1) for more information about this.

поскольку они, вероятно, более специфичны для пользователя, чем для репозитория. См. Git-config (1) для получения дополнительной информации об этом.




            
            
