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
giteveryday - A useful minimum set of commands for Everyday Git


## SYNOPSIS
Everyday Git With 20 Commands Or So

Ежедневный Git с 20 командами или около того

## DESCRIPTION
Git users can broadly be grouped into four categories for the purposes of describing here a small set of useful command for everyday Git.

Пользователи Git могут быть сгруппированы в четыре категории для описания небольшого набора полезных команд для повседневного использования Git.

- <a href="file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/giteveryday.html#STANDALONE" target="_blank">Individual Developer (Standalone)</a> commands are essential for anybody who makes a commit, even for somebody who works alone.

Команды индивидуального разработчика (автономные) важны для всех, кто делает коммит, даже для тех, кто работает один.

- If you work with other people, you will need commands listed in the <a href="file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/giteveryday.html#PARTICIPANT" target="_blank">Individual Developer (Participant)</a> section as well.

Если вы работаете с другими людьми, вам также потребуются команды, перечисленные в разделе « Индивидуальный разработчик (участник) ».



- People who play the <a href="file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/giteveryday.html#INTEGRATOR" target="_blank">Integrator</a> role need to learn some more commands in addition to the above.

Людям, играющим роль интегратора, необходимо выучить еще несколько команд в дополнение к указанным выше.

- <a href="file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/giteveryday.html#ADMINISTRATION" target="_blank">Repository Administration</a> commands are for system administrators who are responsible for the care and feeding of Git repositories.

Команды администрирования репозитория предназначены для системных администраторов, отвечающих за обслуживание и загрузку репозиториев Git.

## Individual Developer (Standalone)
A standalone individual developer does not exchange patches with other people, and works alone in a single repository, using the following commands.

Автономный индивидуальный разработчик не обменивается патчами с другими людьми и работает самостоятельно в едином репозитории, используя следующие команды.

* git-init(1) to create a new repository.
для создания нового репозитория.
* git-log(1) to see what happened.
чтобы узнать, что произошло.
* git-switch(1) and git-branch(1) to switch branches.
для переключения ветвей.
* git-add(1) to manage the index file.
для управления индексным файлом.
* git-diff(1) and git-status(1) to see what you are in the middle of doing.
чтобы узнать, чем вы занимаетесь.
* git-commit(1) to advance the current branch.
чтобы продвинуть текущую ветку.
* git-restore(1) to undo changes.
для отмены изменений.
* git-merge(1) to merge between local branches.
для слияния локальных веток.
* git-rebase(1) to maintain topic branches.
для слияния локальных веток.
* git-tag(1) to mark a known point.
для слияния локальных веток.

### Examples
#### Use a tarball as a starting point for a new repository.

Используйте тарбол как отправную точку для нового репозитория.

    $ tar zxf frotz.tar.gz
    $ cd frotz
    $ git init
    $ git add . (1)
    $ git commit -m "import of frotz source tree."
    $ git tag v2.43 (2)
     
1. add everything under the current directory.
добавить все в текущий каталог.
2. make a lightweight, unannotated tag.
сделайте легкий неаннотированный тег.


#### Create a topic branch and develop.
Создайте тематическую ветку и развивайтесь.

    $ git switch -c alsa-audio (1)
    $ edit/compile/test
    $ git restore curses/ux_audio_oss.c (2)
    $ git add curses/ux_audio_alsa.c (3)
    $ edit/compile/test
    $ git diff HEAD (4)
    $ git commit -a -s (5)
    $ edit/compile/test
    $ git diff HEAD^ (6)
    $ git commit -a --amend (7)
    $ git switch master (8)
    $ git merge alsa-audio (9)
    $ git log --since='3 days ago' (10)
    $ git log v2.43.. curses/ (11)
1. create a new topic branch.
создать новую тематическую ветку.
2. revert your botched changes in curses/ux_audio_oss.c.
отменить неудачные изменения в curses/ux_audio_oss.c.
3. you need to tell Git if you added a new file; removal and modification will be caught if you do git commit -a later.
вам нужно сообщить Git, если вы добавили новый файл; удаление и модификация будут обнаружены, если вы сделаете это git commit -aпозже.
4. to see what changes you are committing.
чтобы увидеть, какие изменения вы совершаете
5. commit everything, as you have tested, with your sign-off.
зафиксировать все, как вы тестировали, с вашей подписью.
6. look at all your changes including the previous commit.
посмотрите на все свои изменения, включая предыдущий коммит.
7. amend the previous commit, adding all your new changes, using your original message.
исправить предыдущий коммит, добавив все ваши новые изменения, используя исходное сообщение.
8. switch to the master branch.
переключиться на главную ветку.
9. merge a topic branch into your master branch.
объединить тематическую ветку с основной веткой.
10. review commit logs; other forms to limit output can be combined and include -10 (to show up to 10 commits), --until=2005-12-10, etc.
просматривать журналы фиксации; другие формы для ограничения вывода могут быть объединены и включать -10(для отображения до 10 коммитов) --until=2005-12-10и т. д.
11. view only the changes that touch what’s in curses/ directory, since v2.43 tag.
просматривать только изменения, которые касаются содержимого curses/ каталога, поскольку v2.43tag.

## Individual Developer (Participant)
A developer working as a participant in a group project needs to learn how to communicate with others, and uses these commands in addition to the ones needed by a standalone developer.

* git-clone(1) from the upstream to prime your local repository.
git-clone (1) из восходящего потока для загрузки вашего локального репозитория.
* git-pull(1) and git-fetch(1) from "origin" to keep up-to-date with the upstream.
git-pull (1) и git-fetch (1) из "origin", чтобы быть в курсе последних событий.
* git-push(1) to shared repository, if you adopt CVS style shared repository workflow.
git-push (1) в общий репозиторий, если вы используете рабочий процесс общего репозитория в стиле CVS.
* git-format-patch(1) to prepare e-mail submission, if you adopt Linux kernel-style public forum workflow.
git-format-patch (1) для подготовки отправки электронной почты, если вы используете рабочий процесс открытого форума в стиле ядра Linux.
* git-send-email(1) to send your e-mail submission without corruption by your MUA.
git-send-email (1), чтобы отправить сообщение электронной почты без повреждения вашим MUA.
* git-request-pull(1) to create a summary of changes for your upstream to pull.
git-request-pull (1), чтобы создать сводку изменений для вашего восходящего потока.

###  Examples
#### Clone the upstream and work on it. Feed changes to upstream.

Клонируйте апстрим и работайте над ним. Подача изменений вверх по течению.

    $ git clone git://git.kernel.org/pub/scm/.../torvalds/linux-2.6 my2.6
    $ cd my2.6
    $ git switch -c mine master (1)
    $ edit/compile/test; git commit -a -s (2)
    $ git format-patch master (3)
    $ git send-email --to="person <email@example.com>" 00*.patch (4)
    $ git switch master (5)
    $ git pull (6)
    $ git log -p ORIG_HEAD.. arch/i386 include/asm-i386 (7)
    $ git ls-remote --heads http://git.kernel.org/.../jgarzik/libata-dev.git (8)
    $ git pull git://git.kernel.org/pub/.../jgarzik/libata-dev.git ALL (9)
    $ git reset --hard ORIG_HEAD (10)
    $ git gc (11)
    
1. checkout a new branch mine from master.
оформить новую ветку mineот мастера.
2. repeat as needed.
при необходимости повторите.
3. extract patches from your branch, relative to master,
извлекать патчи из вашей ветки относительно мастера,
4. and email them.
извлекать патчи из вашей ветки относительно мастера,
5. return to master, ready to see what’s new
вернуться master, готов посмотреть, что нового
6. git pull fetches from origin by default and merges into the current branch.
git pullвыбирается из originпо умолчанию и объединяется с текущей веткой.
7. immediately after pulling, look at the changes done upstream since last time we checked, only in the area we are interested in.
сразу после извлечения посмотрите на изменения, сделанные выше по течению с момента последней проверки, только в интересующей нас области
8. check the branch names in an external repository (if not known).
проверьте имена веток во внешнем репозитории (если они не известны).
9. fetch from a specific branch ALL from a specific repository and merge it.
получить из определенной ветки ALLиз определенного репозитория и объединить ее.
10. revert the pull.
вернуть тягу.
11. garbage collect leftover objects from reverted pull.
сборщик мусора, оставшиеся после возврата.

#### Push into another repository.

    satellite$ git clone mothership:frotz frotz (1)
    satellite$ cd frotz
    satellite$ git config --get-regexp '^(remote|branch)\.' (2)
    remote.origin.url mothership:frotz
    remote.origin.fetch refs/heads/*:refs/remotes/origin/*
    branch.master.remote origin
    branch.master.merge refs/heads/master
    satellite$ git config remote.origin.push \
               +refs/heads/*:refs/remotes/satellite/* (3)
    satellite$ edit/compile/test/commit
    satellite$ git push origin (4)
    
    mothership$ cd frotz
    mothership$ git switch master
    mothership$ git merge satellite/master (5)
    
1. mothership machine has a frotz repository under your home directory; clone from it to start a repository on the satellite machine.
У материнской машины есть репозиторий frotz в вашем домашнем каталоге; клонировать из него, чтобы запустить репозиторий на вспомогательной машине.
2. clone sets these configuration variables by default. It arranges git pull to fetch and store the branches of mothership machine to local remotes/origin/* remote-tracking branches.
clone устанавливает эти переменные конфигурации по умолчанию. Он организует git pullвыборку и сохранение ветвей материнской машины в локальных remotes/origin/*ветвях удаленного отслеживания.
3. arrange git push to push all local branches to their corresponding branch of the mothership machine.
организовать git pushперемещение всех локальных веток в соответствующие ветки материнской машины.
4. push will stash all our work away on remotes/satellite/* remote-tracking branches on the mothership machine. You could use this as a back-up method. Likewise, you can pretend that mothership "fetched" from you (useful when access is one sided).
push поместит всю нашу работу в remotes/satellite/* ветки удаленного отслеживания на материнской машине. Вы можете использовать это как резервный метод. Точно так же вы можете притвориться, что материнский корабль «отобран» от вас (полезно, когда доступ односторонний).
5. on mothership machine, merge the work done on the satellite machine into the master branch.
на материнской машине объедините работу, проделанную на вспомогательной машине, в главную ветку.

#### Branch off of a specific tag.

Ответвление определенного тега.

    $ git switch -c private2.6.14 v2.6.14 (1)
    $ edit/compile/test; git commit -a
    $ git checkout master
    $ git cherry-pick v2.6.14..private2.6.14 (2)

1. create a private branch based on a well known (but somewhat behind) tag.
создать частную ветку на основе хорошо известного (но несколько отстающего) тега.
2. forward port all changes in private2.6.14 branch to master branch without a formal "merging". Or longhand
перенаправить все изменения из private2.6.14ветки в masterветку без формального «слияния». Или от руки

        git format-patch -k -m --stdout v2.6.14..private2.6.14 | git am -3 -k
         


An alternate participant submission mechanism is using the git request-pull or pull-request mechanisms (e.g as used on GitHub (www.github.com) to notify your upstream of your contribution.

Альтернативный механизм представления участников использует git request-pullмеханизмы запроса на включение или вытягивания (например, используемые на GitHub (www.github.com), чтобы уведомить вашу апстрим о вашем вкладе).

## Integrator
A fairly central person acting as the integrator in a group project receives changes made by others, reviews and integrates them and publishes the result for others to use, using these commands in addition to the ones needed by participants.

Довольно центральный человек, действующий в качестве интегратора в групповом проекте, получает изменения, сделанные другими, просматривает и интегрирует их и публикует результат для использования другими, используя эти команды в дополнение к тем, которые необходимы участникам.

This section can also be used by those who respond to git request-pull or pull-request on GitHub (www.github.com) to integrate the work of others into their history. A sub-area lieutenant for a repository will act both as a participant and as an integrator.

Этот раздел также может использоваться теми, кто отвечает git request-pullна GitHub (www.github.com) или запрашивает их, чтобы интегрировать работу других в свою историю. Лейтенант подобласти хранилища будет действовать как участник и как интегратор.

* git-am(1) to apply patches e-mailed in from your contributors.
для применения исправлений, присланных вашими участниками по электронной почте.
* git-pull(1) to merge from your trusted lieutenants.
для слияния с вашими доверенными лейтенантами.
* git-format-patch(1) to prepare and send suggested alternative to contributors.
для подготовки и отправки предлагаемой альтернативы участникам.
* git-revert(1) to undo botched commits.
чтобы отменить ошибочные фиксации.
* git-push(1) to publish the bleeding edge.
чтобы опубликовать последние новости.
 
### Examples
#### A typical integrator’s Git day.

    $ git status (1)
    $ git branch --no-merged master (2)
    $ mailx (3)
    & s 2 3 4 5 ./+to-apply
    & s 7 8 ./+hold-linus
    & q
    $ git switch -c topic/one master
    $ git am -3 -i -s ./+to-apply (4)
    $ compile/test
    $ git switch -c hold/linus && git am -3 -i -s ./+hold-linus (5)
    $ git switch topic/one && git rebase master (6)
    $ git switch -C seen next (7)
    $ git merge topic/one topic/two && git merge hold/linus (8)
    $ git switch maint
    $ git cherry-pick master~4 (9)
    $ compile/test
    $ git tag -s -m "GIT 0.99.9x" v0.99.9x (10)
    $ git fetch ko && for branch in master maint next seen (11)
        do
            git show-branch ko/$branch $branch (12)
        done
    $ git push --follow-tags ko (13)
    
1. see what you were in the middle of doing, if anything.
во всяком случае, посмотрите, чем вы занимались.
2. see which branches haven’t been merged into master yet. Likewise for any other integration branches e.g. maint, next and seen.
посмотрите, какие ветви еще не были объединены master. Аналогично для любых других ветвей интеграции, например maint, next и seen.
3. read mails, save ones that are applicable, and save others that are not quite ready (other mail readers are available).
читать письма, сохранять те, которые подходят, и сохранять другие, которые еще не совсем готовы (доступны другие программы чтения почты).
4. apply them, interactively, with your sign-offs.
применяйте их в интерактивном режиме с подпиской.
5. create topic branch as needed and apply, again with sign-offs.
создайте тематическую ветку по мере необходимости и примените, снова с подписями.
6. rebase internal topic branch that has not been merged to the master or exposed as a part of a stable branch.
перебазировать внутреннюю ветку темы, которая не была объединена с главной или выставлена ​​как часть стабильной ветки.
7. restart seen every time from the next.
перезапускать seenкаждый раз со следующего.
8. and bundle topic branches still cooking.
и связать тематические ветки еще готовятся.
9. backport a critical fix.
backport критическое исправление.
10. create a signed tag.
создать подписанный тег.
11. make sure master was not accidentally rewound beyond that already pushed out.
убедитесь, что мастер не был случайно перемотан за пределы уже вытолкнутого.
12. In the output from git show-branch, master should have everything ko/master has, and next should have everything ko/next has, etc.
На выходе из git show-branch, masterдолжно быть все ko/master, nextесть все ko/next, и т. Д.
13. push out the bleeding edge, together with new tags that point into the pushed history.
вытолкните передний край, вместе с новыми тегами, которые указывают на продвинутую историю.


In this example, the ko shorthand points at the Git maintainer’s repository at kernel.org, and looks like this:

В этом примере koсокращение указывает на репозиторий разработчика Git на kernel.org и выглядит так:

(in .git/config)
[remote "ko"]
        url = kernel.org:/pub/scm/git/git.git
        fetch = refs/heads/*:refs/remotes/ko/*
        push = refs/heads/master
        push = refs/heads/next
        push = +refs/heads/seen
        push = refs/heads/maint
        
## Repository Administration
A repository administrator uses the following tools to set up and maintain access to the repository by developers.

Администратор репозитория использует следующие инструменты для настройки и поддержания доступа разработчиков к репозиторию.

* git-daemon(1) to allow anonymous download from repository.
чтобы разрешить анонимную загрузку из репозитория.
* git-shell(1) can be used as a restricted login shell for shared central repository users.
может использоваться как ограниченная оболочка входа для пользователей общего центрального репозитория.
* git-http-backend(1) provides a server side implementation of Git-over-HTTP ("Smart http") allowing both fetch and push services.
 предоставляет серверную реализацию Git-over-HTTP ("Smart http"), позволяющую использовать сервисы извлечения и push.
* gitweb(1) provides a web front-end to Git repositories, which can be set-up using the git-instaweb(1) script.
предоставляет веб-интерфейс для репозиториев Git, который можно настроить с помощью скрипта git-instaweb (1) .

<a href="file:///E:/Node_projects/Node_Way/NBase/_Md/_Index/_Git/content/Docs/C_Program_Files_Git_mingw64_share_doc_git-doc/Point_learn/git-doc_converted/howto/update-hook-example.html" target="_blank">update hook howto</a> has a good example of managing a shared central repository.
содержит хороший пример управления общим центральным репозиторием.

In addition there are a number of other widely deployed hosting, browsing and reviewing solutions such as:

Кроме того, существует ряд других широко распространенных решений для хостинга, просмотра и просмотра, таких как:

* gitolite, gerrit code review, cgit and others.

### Examples
#### We assume the following in /etc/services

Мы предполагаем следующее в / etc / services

    $ grep 9418 /etc/services
    git             9418/tcp                # Git Version Control System
#### Run git-daemon to serve /pub/scm from inetd.

Запустите git-daemon для обслуживания / pub / scm из inetd.

    $ grep git /etc/inetd.conf
    git     stream  tcp     nowait  nobody \
      /usr/bin/git-daemon git-daemon --inetd --export-all /pub/scm
The actual configuration line should be on one line.

Фактическая строка конфигурации должна быть одной строкой.

#### Run git-daemon to serve /pub/scm from xinetd.

Запустите git-daemon для обслуживания / pub / scm из xinetd.

    $ cat /etc/xinetd.d/git-daemon
    # default: off
    # description: The Git server offers access to Git repositories
    service git
    {
            disable = no
            type            = UNLISTED
            port            = 9418
            socket_type     = stream
            wait            = no
            user            = nobody
            server          = /usr/bin/git-daemon
            server_args     = --inetd --export-all --base-path=/pub/scm
            log_on_failure  += USERID
    }
Check your xinetd(8) documentation and setup, this is from a Fedora system. Others might be different.

Проверьте документацию и настройку xinetd (8), это из системы Fedora. Другие могут быть другими.

#### Give push/pull only access to developers using git-over-ssh.

Предоставьте разработчикам доступ только для push / pull с помощью git-over-ssh.

e.g. those using: `$ git push/pull ssh://host.xz/pub/scm/project`

    $ grep git /etc/passwd (1)
    alice:x:1000:1000::/home/alice:/usr/bin/git-shell
    bob:x:1001:1001::/home/bob:/usr/bin/git-shell
    cindy:x:1002:1002::/home/cindy:/usr/bin/git-shell
    david:x:1003:1003::/home/david:/usr/bin/git-shell
    $ grep git /etc/shells (2)
    /usr/bin/git-shell
    
1. log-in shell is set to /usr/bin/git-shell, which does not allow anything but git push and git pull. The users require ssh access to the machine.
Оболочка входа в систему установлена ​​в / usr / bin / git-shell, что не позволяет ничего, кроме git pushи git pull. Пользователям требуется ssh-доступ к машине.
2. in many distributions /etc/shells needs to list what is used as the login shell.
во многих дистрибутивах / etc / shells необходимо указать, что используется в качестве оболочки входа.


#### CVS-style shared repository.

Общий репозиторий в стиле CVS.

    $ grep git /etc/group (1)
    git:x:9418:alice,bob,cindy,david
    $ cd /home/devo.git
    $ ls -l (2)
      lrwxrwxrwx   1 david git    17 Dec  4 22:40 HEAD -> refs/heads/master
      drwxrwsr-x   2 david git  4096 Dec  4 22:40 branches
      -rw-rw-r--   1 david git    84 Dec  4 22:40 config
      -rw-rw-r--   1 david git    58 Dec  4 22:40 description
      drwxrwsr-x   2 david git  4096 Dec  4 22:40 hooks
      -rw-rw-r--   1 david git 37504 Dec  4 22:40 index
      drwxrwsr-x   2 david git  4096 Dec  4 22:40 info
      drwxrwsr-x   4 david git  4096 Dec  4 22:40 objects
      drwxrwsr-x   4 david git  4096 Nov  7 14:58 refs
      drwxrwsr-x   2 david git  4096 Dec  4 22:40 remotes
    $ ls -l hooks/update (3)
      -r-xr-xr-x   1 david git  3536 Dec  4 22:40 update
    $ cat info/allowed-users (4)
    refs/heads/master       alice\|cindy
    refs/heads/doc-update   bob
    refs/tags/v[0-9]*       david
    
1. place the developers into the same git group.
поместите разработчиков в одну группу git.
2. and make the shared repository writable by the group.
и сделайте общий репозиторий доступным для записи для группы.
3. use update-hook example by Carl from Documentation/howto/ for branch policy control.
используйте пример ловушки обновления Карла из Documentation / howto / для управления политикой ветвления.
4. alice and cindy can push into master, only bob can push into doc-update. david is the release manager and is the only person who can create and push version tags.
Алиса и Синди могут вставлять в мастер, только Боб может вставлять в doc-update. Дэвид является менеджером выпуска и единственным человеком, который может создавать и отправлять теги версий.

