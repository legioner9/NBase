# <a href="https://ru.stackoverflow.com/questions/420040/%D0%9E%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D1%80%D0%B5%D0%BF%D0%BE%D0%B7%D0%B8%D1%82%D0%BE%D1%80%D0%B8%D1%8F-git-%D0%B1%D0%B5%D0%B7-%D0%B2%D0%B2%D0%BE%D0%B4%D0%B0-%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D0%B5%D0%B9" target="_blank">Password</a>

Запустите в консоли команду git remote -v и посмотрите, через какой протокол у вас осуществляется доступ к репозиторию.

Если это https, то будет примерно следующий путь:

    https://github.com/USERNAME/OTHERREPOSITORY.git
     
     
Для ssh будет такой:

    git@github.com:USERNAME/OTHERREPOSITORY.git
     
     
## https
Требуется Git версии не ниже 1.7.10

В этом случае вам всегда требуется указывать пароль при общении с сервером. Git можно попросить сохранять на некоторое время (по умолчанию на 15 минут) введённые данные командой:

     git config --global credential.helper cache
      
При желании можно изменить стандартное время запоминания командой

    git config --global credential.helper "cache --timeout=3600"
     
(время указывается в секундах)

Вы можете также указать git хранить ваши данные постоянно:

https://git-scm.com/docs/git-credential-store

    git config credential.helper store
     
При этом ваши данные будут храниться в открытом виде в файле .git-credentials.

Обнулить настройки этой возможности можно командой:

    git config --unset credential.helper
     
При желании можно подобное поведение для всех репозиториев, для этого нужно передать дополнительный ключ --global.

В зависимости от этой настройки, информация с вашими данными будет расположена либо в каталоге проекта, либо в $HOME

Для версий Git, ниже 1.7.10

Вы можете указать информацию для авторизации в url, по которому осуществляете доступ к репозиторию, для этого его нужно преобразовать так:

    https://username:password@github.com/USERNAME/OTHERREPOSITORY.git
     
     
Измените текущий url в remote на указанный (как это сделать, описано ниже в ответе) и авторизация не будет запрашиваться.

Помните, что и в этом случае ваши данные будут храниться в открытом виде.

Для Git версии не ниже 0.99

Существует возможность настроить netrc

SSH
Про работу с запароленным ключём SSH знаю лишь то, что можно настроить ssh-agent, который аналогично позволит не вводить каждый раз пароль от ключа ssh.

Для начала создайте ssh-ключ с помощью команды:

     ssh-keygen
Она попросит ввести имя файла (во многих случаях можно оставить имя по умолчанию) и пароль. Пароль при желании можно оставить пустым, для этого просто дважды нажмите Enter при запросе пароля (обычно рекомендуется устанавливать пароль).

По умолчанию пара ключей появляется в каталоге ~/.ssh/. Вам нужно скопировать содержимое файла id_rsa.pub (если вы не задавали другое при создании ключа) и сохранить его в своём профиле на GitHub (Settings -> SSH Keys -> Add SSH key).

После этого можно перейти к настройке ssh-agent:

Выполните команду:

     echo $SSH_AGENT_PID
Если ssh-agent запущен, то должен вернуться его номер процесса. В этом случае можно пропустить следующий пункт и перейти к команде ssh-add.
Если вернулась пустая строка, необходимо запустить ssh-agent перед продолжением.

Запускаем ssh-agent в фоне:

     eval "$(ssh-agent -s)"
    # Agent pid 59566
Теперь осталось добавить сгенерированный ключ в ssh-agent:

     ssh-add ~/.ssh/id_rsa
Если вы настроите доступ по ssh к своему репозиторию с использованием ключа, то работу, вероятно, можно будет производить и из программ.

Для уже созданного репозитория можно изменить способ доступа, используя команду

     git remote set-url origin <new-url>
      
где <new-url> задаёт путь, в котором  используется нужный протокол

# <a href="https://stackoverflow.com/questions/35942754/how-to-save-username-and-password-in-git-gitextension" target="_blank">Как сохранить имя пользователя и пароль в GIT [GitExtension]?</a>









