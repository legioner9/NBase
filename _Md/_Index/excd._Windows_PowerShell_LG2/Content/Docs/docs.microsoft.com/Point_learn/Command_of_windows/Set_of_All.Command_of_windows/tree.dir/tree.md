# tree

 
Отображает структуру каталогов пути или диска на диске в графическом виде.
Синтаксис


    tree [<Drive>:][<Path>] [/f] [/a]

## ПАРАМЕТРЫ
| Параметр                                 | Описание                                 |
|------------------------------------------|------------------------------------------|
| <span data-ttu-id="fddf5-109" style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; outline-color: inherit;">&lt;Drive&gt;:</span> | <span data-ttu-id="fddf5-110" style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; outline-color: inherit;">Указывает диск, содержащий диск, для которого требуется отобразить структуру каталогов.</span> |
| &lt;Path&gt;                             | <span data-ttu-id="fddf5-111" style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; outline-color: inherit;">Указывает каталог, для которого требуется отобразить структуру каталогов.</span> |
| <span data-ttu-id="fddf5-112" style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; outline-color: inherit;">/f</span> | <span data-ttu-id="fddf5-113" style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; outline-color: inherit;">Отображает имена файлов в каждом каталоге.</span> |
| <span data-ttu-id="fddf5-114" style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; outline-color: inherit;">/a</span> | <span data-ttu-id="fddf5-115" style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; outline-color: inherit;">Указывает, что для отображения линий, связывающих подкаталоги, в<span> </span><strong style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; font-weight: 600; outline-color: inherit;">дереве</strong><span> </span>используются текстовые символы, а не графические символы.</span> |
| <span data-ttu-id="fddf5-116" style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; outline-color: inherit;">/?</span> | <span data-ttu-id="fddf5-117" style="box-sizing: inherit; font-family: &quot;Pragmata Pro Mono Regular&quot;; outline-color: inherit;">Отображение справки в командной строке.</span> |

## Примечания
Структура, отображаемая по дереву , зависит от параметров, указанных в командной строке. Если диск или путь не указаны, в дереве отображается древовидная структура, которая начинается с текущего каталога текущего диска.

## Примеры
Чтобы отобразить имена всех подкаталогов на диске текущего диска, введите:


    tree \
Для отображения по одному экрану за раз файлы во всех каталогах на диске C введите:

    tree c:\ /f | more
Чтобы распечатать список всех каталогов на диске C, введите:


    tree c:\ /f  prn
Дополнительные ссылки

<a href="https://docs.microsoft.com/ru-ru/windows-server/administration/windows-commands/command-line-syntax-key" target="_blank">Условные обозначения синтаксиса команд командной строки</a>