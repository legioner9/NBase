[Как отменить коммит в Git](https://pingvinus.ru/git/1581)

Git в вопросах и ответах / Коммиты /
Как отменить коммит в Git
0
Отмена последнего коммита
Чтобы отменить последний коммит в локальном Git репозитории, используется команда:

    git reset HEAD~
Данная команда отменяет последний коммит. Файлы из данного последнего коммита переходят в статус unstaged, то есть в то состояние, в котором они были до коммита. Если запустить команду git status, то эти файлы будут находиться в списке «Changes not staged for commit». Содержимое файлов не изменяется.

Полное удаление последнего коммита
Если вы хотите полностью удалить последний коммит, включая все изменения файлов данного коммита, то используется команда:

    git reset --hard HEAD~1
Например: у вас есть следующие коммиты A←B←C←HEAD. Коммит C самый последний и на него указывает HEAD (указатель на текущее состояние). После выполнения команды git reset --hard HEAD~1 вы получите состояние A←B←HEAD (коммит C будет удален). HEAD теперь указывает на коммит B.

Смотрите также:
* [Как изменить файлы в старом коммите (не последнем)](https://pingvinus.ru/git/1729)
* [Как добавить все файлы в коммит, кроме одного](https://pingvinus.ru/git/1728)
* [Как создать ветку из предыдущего коммита](https://pingvinus.ru/git/1727)
* [Команда Git stash. Как прятать изменения в Git](https://pingvinus.ru/git/1718)
* [Как показать файлы, которые будут добавлены в текущий коммит](https://pingvinus.ru/git/1702)
* [Как восстановить файл](https://pingvinus.ru/git/1580)
* [Как изменить комментарий к коммиту](https://pingvinus.ru/git/1577)
* [Как отменить git add](https://pingvinus.ru/git/1574)
* [Как клонировать репозиторий](https://pingvinus.ru/git/1573)
* [Как посмотреть ветки](https://pingvinus.ru/git/1572)
