https://habr.com/ru/company/ruvds/blog/445270/

https://tproger.ru/translations/bash-cheatsheet/

▍Получение информации

    man: выводит руководство пользователя (справку) по команде.
    pwd: выводит сведения о рабочей директории.
    ls: выводит содержимое директории.
    ps: позволяет просматривать сведения о работающих процессах.

▍Манипуляции с файловой системой

    cd: изменение рабочей директории.
    touch: создание файла.
    mkdir: создание директории.
    cp: копирование файла.
    mv: перемещение или удаление файла.
    ln: создание ссылки.

▍Перенаправление ввода-вывода и конвейеры

    <: перенаправление stdin.
    >: перенаправление stdout.
    |: перенаправление с помощью конвейера вывода одной команды на вход другой команды.

▍Чтение файлов

    head: чтение начала файла.
    tail: чтение конца файла.
    cat: чтение файла и вывод его содержимого на экран или конкатенация файлов.

▍Удаление файлов, остановка процессов

    rm: удаление файла.
    kill: остановка процесса.

▍Поиск

    grep: поиск информации.
    ag: продвинутая команда для поиска.

▍Архивация

    tar: создание архивов и работа с ними.
#ls
    $ ls
    myip.sh  ucr-cs100  we_msk.sh
    $ ls -a
    .  ..  .bash_history  .bash_profile  .bashrc  .inputrc  .profile  .wget-hsts  myip.sh  ucr-cs100  we_msk.sh
    $ ls -l
    итого 102
    -rwxr-xr-x 1 STM None     26 апр 26 01:24 myip.sh
    -rw-r--r-- 1 STM None 101734 апр 25 15:01 ucr-cs100
    -rwxr-xr-x 1 STM None     32 апр 25 17:47 we_msk.sh
    $ ls -al
    итого 131
    drwxr-xr-x+ 1 STM None      0 апр 26 01:20 .
    drwxrwxrwt+ 1 STM None      0 апр 25 11:59 ..
    -rw-------  1 STM None    848 апр 25 20:24 .bash_history
    -rwxr-xr-x  1 STM None   1494 апр 25 11:48 .bash_profile
    -rwxr-xr-x  1 STM None   5645 апр 25 11:48 .bashrc
    -rwxr-xr-x  1 STM None   1919 апр 25 11:48 .inputrc
    -rwxr-xr-x  1 STM None   1236 апр 25 11:48 .profile
    -rw-r--r--  1 STM None    165 апр 25 15:01 .wget-hsts
    -rwxr-xr-x  1 STM None     26 апр 26 01:24 myip.sh
    -rw-r--r--  1 STM None 101734 апр 25 15:01 ucr-cs100
    -rwxr-xr-x  1 STM None     32 апр 25 17:47 we_msk.sh
# touch
    $ touch a.sh
    $ ls
    a.sh  myip.sh  ucr-cs100  we_msk.sh
# mkdir
    $ mkdir ddr
    $ ls
    a.sh  ddr  myip.sh  ucr-cs100  we_msk.sh
# mv
    $ mv a.sh ddr
    STM@STM-PK ~/ddr
    $ ls
    a.sh
## mv as rename
    STM@STM-PK ~/ddr
    $ mv a.sh b.sh

    STM@STM-PK ~/ddr
    $ ls
    b.sh
# cp (dubl + mv)
    STM@STM-PK ~
    $ cp we_msk.sh ddr
    STM@STM-PK ~/ddr
    $ ls
    b.sh  we_msk.sh
# rm 
    STM@STM-PK ~/ddr
    $ rm we_msk.sh
    STM@STM-PK ~/ddr
    $ ls
    b.sh
# cat
    STM@STM-PK ~/ddr
    $ cat b.sh
    #!/bash/sh
    echo 'It s file b.sh'
# (runtime start)
Либо chmod +x filename, либо "sh script.sh"
## chmod 
    STM@STM-PK ~/ddr
    $ ./b.sh
    -bash: ./b.sh: Permission denied

    STM@STM-PK ~/ddr
    $ ls -la
    итого 5
    drwxr-xr-x+ 1 STM None  0 апр 26 01:46 .
    drwxr-xr-x+ 1 STM None  0 апр 26 01:35 ..
    -rw-r--r--  1 STM None 32 апр 26 01:53 b.sh

    STM@STM-PK ~/ddr
    $ chmod +x ./b.sh

    $ ls -la
    итого 5
    drwxr-xr-x+ 1 STM None  0 апр 26 01:46 .
    drwxr-xr-x+ 1 STM None  0 апр 26 01:35 ..
    -rwxr-xr-x  1 STM None 32 апр 26 01:53 b.sh

    STM@STM-PK ~/ddr
    $ ./b.sh
    It s file b.sh
## sh
    STM@STM-PK ~
    $ touch a.sh

    $ cat ./a.sh
    #!/bin/sh
    echo 'It s file a.sh'

    $ ls -l
    итого 103
    -rw-r--r--  1 STM None     32 апр 26 07:38 a.sh

    $ sh ./a.sh
    It s file a.sh
# ps
    $ ps
        PID    PPID    PGID     WINPID   TTY         UID    STIME COMMAND
        1317       1    1317       8864  ?         197608 20:34:14 /usr/bin/mintty
        1423    1318    1423       6740  pty0      197608 07:52:21 /usr/bin/ps
        1318    1317    1318       7064  pty0      197608 20:34:14 /usr/bin/bash
вывод сведений обо всех выполняющихся процессах, а не только о тех, которые связаны с текущей оболочкой пользователя:

    $ ps -e
        PID    PPID    PGID     WINPID   TTY         UID    STIME COMMAND
        1317       1    1317       8864  ?         197608 20:34:14 /usr/bin/mintty
        1318    1317    1318       7064  pty0      197608 20:34:14 /usr/bin/bash
        1424    1318    1424       6744  pty0      197608 07:53:29 /usr/bin/ps

# man 
man command_name: вывод руководства по команде, то есть — справочной информации.
# head

    $ head -1 a.sh
    #!/bin/sh
# tail 

    $ tail -1 a.sh
    echo 'It s file a.sh'

# stdin
`my_command < my_file`: заменяет дескриптор файла стандартного ввода (stdin) на файл my_file. Это может оказаться полезным в том случае, если команда ожидает ввода неких данных с клавиатуры, а эти данные заранее сохранены в файле.
# stdout
`my_command > my_file`: перенаправляет результаты работы команды, то есть то, что обычно попадает в stdout и выводится на экран, в файл my_file. Если файл my_file не существует — он создаётся. Если файл существует — он перезаписывается.

    $ head -1 a.sh > h_a.txt
    $ head h_a.txt
    #!/bin/sh
# [less](less/___setcomand.md)

# curl
покажет тебе внешний IP

    STM@STM-PK ~
    $ curl ifconfig.co
    46.166.88.56

# grep
Часто возникают ситуации, что нужно найти какой-либо текст, но вы не помните, в каком файле/файлах он содержится. В этом случае для поиска по содержимому файлов в каталоге можно использовать утилиту grep:

    grep -r -n «text» /path
где:
-n показывает строку, где был найден фрагмент;
-r осуществляет поиск рекурсивно, в файлах в самом каталоге /path и в его подкаталогах;