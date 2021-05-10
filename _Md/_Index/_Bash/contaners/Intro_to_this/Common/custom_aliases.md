# [Узнайте, как создавать собственные команды bash менее чем за 4 минуты](https://dev-gang.ru/article/uznaite-kak-sozdavat-sobstvennye-komandy-bash-menee-czem-za-4-minuty-mj650lpidd/)

## touch ~/.custom_aliases
## Прежде чем создавать псевдонимы
### Шаг 1 - Создайте файл custom_aliases
Все псевдонимы, которые вы создаете, должны храниться в этом файле.

    touch ~/.custom_aliases
### Шаг 2 - Открыть файл custom_aliases
Откройте файл в текстовом редакторе, либо через gedit или code (код Visual Studio), либо по своему усмотрению.

    # Visual Studio Code
    code ~/.custom_aliases

    # или Gedit

        gedit ~/.custom_aliases
### Шаг 3. Создание ярлыков (псевдонимов)
Давайте создадим простой псевдоним, который будет печатать «Welcome John Doe», когда мы набираем welcome в терминале bash.

    alias welcome='echo "Welcome $USER."'
### Шаг 4. Обновление изменений
Прежде чем вы сможете запустить только что созданную команду bash, вы должны обновить custom_aliases файл.

source ~/.custom_aliases
### Шаг 5 - Выполнить новую команду bash
Введите следующее в командной строке.

    welcome
    > Welcome John Doe.
Отлично сработано! Теперь вы создали собственный файл для размещения псевдонимов, давайте посмотрим, какие типы команд вы можете создавать.

Пользовательские псевдонимы для команд bash
Вот несколько команд bash, которые я использую для ускорения рабочего процесса.

Полезный совет: чтобы сохранить структуру при добавлении множества псевдонимов, поместите их в разделы, как показано в примере ниже, используя комментарии.

    # Version Control
    alias gs="git status"
    alias gd="git add ."
    alias gp="git push -u origin master"

    # Directory
    alias diskusage="df -h"
    alias folderusage="du -ch"
    alias totalfolderusage="du -sh"

    # Various
    alias opencustomaliases="code  ~/.custom_aliases"
    alias updatecustomaliases="source ~/.custom_aliases"
    alias updatethenupgrade="sudo apt-get update && sudo apt-get upgrade"
Имейте в виду, что некоторые ОС (операционные системы) могут отличаться, убедитесь, что вы можете запускать эти команды в терминале и проверьте, работают ли они, прежде чем помещать их в custom_aliases файл.

## Запуск нескольких команд
Вы также можете сделать одну команду bash, которая запускает несколько команд. Это можно сделать двумя способами: создать функцию или создать псевдоним.

### Пример 1 - Создание функции
    # Несколько команд
    function lazyman() {
        git add .
        git commit -a -m "$1"
        git push -u origin master
    }
### Пример 2 - Создание псевдонима
    # Несколько команд
    alias lazyman="git add . && git commit -a -m '$1' && git push -u origin master"
Не забудьте обновить custom_aliases файл, запустив source ~/.custom_aliases, а затем введите lazyman "First commit". 

# [НАПИСАНИЕ СКРИПТОВ НА BASH](https://losst.ru/napisanie-skriptov-na-bash)