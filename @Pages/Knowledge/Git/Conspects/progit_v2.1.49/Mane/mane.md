# Команды консоли

## Синтаксис

### &&

`ipconfig && netstat`  -  сдвоенный символ && между командами позволит выполнить их последовательно



## Файлы

### notepad

`notepad <имя_файла>` -   открыть в блокноте

### more

`more <имя_файла>` — просмотр содержимого длинного текстового файла по страницам в консоли

### echo

`echo <текст> >> <имя_файла>` запись в файл с созданием 

**COMP** – Сравнение содержимого двух файлов

## Каталоги

### ls , dir

`ls` `dir` — выдать список файлов в текущем каталоге.

### cd

`cd <foder_name>` — сменить текущий каталог. Если имя каталога не указывается, то текущим становится домашний каталог пользователя

### md

`md <foder_name>`создаст папку с именем Папка в той директории, где вы сейчас находитесь

### ren

`ren <foder_name_init> <foder_name_result>` переименование папки

### rd

`rd <foder_name>` удалит папку с именем

## Система

`doskey /history` - отобразит историю набранных вами команд в текущей сессии cmd

`ipconfig /all`

# Первоначальная настройка Git

## Проверка настроек

Если вы хотите проверить используемую конфигурацию :

`git config --list`

## Выбор редактора

Notepad++ добавление редактора: 

`git config --global core.editor  "'C:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"`

Помощь:

`$ git help <команда>`

` $ git <команда> --help ` 

`$ man git-<команда>`

# Создание Git-репозитория

## Создание репозитория в существующей директории

## Клонирование существующего репозитория

Эта команда создаёт директорию libgit2, инициализирует в ней поддиректорию .git  результирующий каталог будет назван mylibgit.

`$ git clone https://github.com/libgit2/libgit2 mylibgit`

## Запись изменений в репозиторий

### reset 

 use `git reset HEAD <file>...` to unstage



Delite from index  - to unstage<file>:

`$ git rm --cached <file>...`  

 `$ git reset HEAD <file>...`

### echo

Create file start.md and write MyFile to end this file:

`echo MyFile >> start.md`

### .gitignore

Вот ещё один пример файла .gitignore:

`Исключить все файлы с расширение .a
*.a
Но отслеживать файл lib.a даже если он подпадает под исключение выше
!lib.a
Исключить файл TODO в корневой директории, но не файл в subdir/TODO
/TODO
Игнорировать все файлы в директории build/
build/
Игнорировать файл doc/notes.txt, но не файл doc/server/arch.txt
doc/*.txt
Игнорировать все .txt файлы в директории doc/
doc/**/*.txt`

### diff

`git diff --cached`

`git diff --staged`

### commit

Commit

`git commit`  and go to redactor (notepad++)

Commit + add 

`git commit -a`



### rm

`git rm <file>` remove from work dirictory

`git rm -f <file>` remove from work dirictory and from commit

`git rm --cached` remove ONLY from commit

Эта команда удаляет все файлы имеющие расширение .log находящиеся в директории log/. 

`git rm log/\*.log`

Эта команда удаляет все файлы, имена которых заканчиваются на ~

`git rm \*~`

###  mv

`git mv file_from file_to`

Equivalent :

`$ mv README.md README` 

`$ git rm README.md` 

`$ git add README`

### log

`log -p`  --patch

`git log --stat`

`git log --pretty=oneline`

> %H Хеш коммита
> %h Сокращенный хеш коммита
> %T Хеш дерева
> %t Сокращенный хеш дерева
> %P Хеш родителей
> %p Сокращенный хеш родителей
> %an Имя автора
> %ae Электронная почта автора
> %ad Дата автора (формат даты можно задать опцией --date=option)
> %ar Относительная дата автора
> %cn Имя коммитера
> %ce Электронная почта коммитера
> %cd Дата коммитера
> %cr Относительная дата коммитера
> %s Содержание

`git log --pretty=format:"%h - %an, %ar : %s"`

### graph

`git log --pretty=format:"%h %s" --graph`

> -p Показывает патч для каждого коммита.
> --stat Показывает статистику измененных файлов для каждого коммита.
> --shortstat Отображает только строку с количеством изменений/вставок/удалений
> для команды --stat.
> --name-only Показывает список измененных файлов после информации о коммите.
> --name-status Показывает список файлов, которые добавлены/изменены/удалены.
> --abbrev-commit Показывает только несколько символов SHA-1 чек-суммы вместо всех 40.
> --relative-date Отображает дату в относительном формате (например, "2 weeks ago")
> вместо стандартного формата даты.
> --graph Отображает ASCII граф с ветвлениями и историей слияний.
> --pretty Показывает коммиты в альтернативном формате. Возможные варианты
> опций: oneline, short, full, fuller и format (с помощью последней можно
> указать свой формат).
> --oneline Сокращение для одновременного использования опций --pretty=oneline
> --abbrev-commit.

### Операции отмены --amend , reset HEAD  , checkout -- 

Remame Last commit and  add file (“Ой, забыл добавить файл”)

`git commit --amend` 

Remove file from commit

`git reset HEAD <file>` 

To discard changes in working directory

`git checkout -- <file>`



# Работа с удалёнными репозиториями

## Просмотр удалённых репозиториев

 `git remote`

 `git remote -v`

`bakkdoor https://github.com/bakkdoor/grit (fetch)` 

`bakkdoor https://github.com/bakkdoor/grit (push)` 

`cho45 https://github.com/cho45/grit (fetch)` 

`cho45 https://github.com/cho45/grit (push)` 

`defunkt https://github.com/defunkt/grit (fetch)` 

`defunkt https://github.com/defunkt/grit (push)` 

`koke git://github.com/koke/grit.git (fetch)` 

`koke git://github.com/koke/grit.git (push)` 

`origin git@github.com:mojombo/grit.git (fetch)` 

`origin git@github.com:mojombo/grit.git (push)`

## Добавление удалённых репозиториев

`$ git remote`
`origin`
`$ git remote add pb https://github.com/paulboone/ticgit`
`$ git remote -v`
`origin https://github.com/schacon/ticgit (fetch)`
`origin https://github.com/schacon/ticgit (push)`
`pb https://github.com/paulboone/ticgit (fetch)`
`pb https://github.com/paulboone/ticgit (push)`

Теперь вместо указания полного пути вы можете использовать pb

## Получение изменений из удалённого репозитория — Fetch и Pull

`$ git fetch [remote-name]`

Fetch + merge = pull

## Отправка изменений в удаленный репозиторий (Push)

`git push origin master`

## Просмотр удаленного репозитория

`git remote show origin`

## Удаление и переименование удалённых репозиториев

`git remote rename pb paul`

`git remote rm paul`

# Работа с метками

## Просмотр списка меток

`git tag`

`git tag -l 'v1.8.5*'`

## Аннотированные метки

`git tag -a v1.4 -m 'my version 1.4'`

# Alias Git

`git config --global alias.unstage 'reset HEAD --'`

`git config --global alias.gr 'log --pretty=format:"%h %s" --graph'`

Это делает эквивалентными следующие две команды:
`$ git unstage fileA`
`$ git reset HEAD -- fileA`

Usually:

`git config --global alias.last 'log -1 HEAD'`

Таким образом, можно легко просмотреть последний коммит

# Основы ветвления и слияния

