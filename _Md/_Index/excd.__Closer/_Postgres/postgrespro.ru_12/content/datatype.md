

https://postgrespro.ru/docs/postgrespro/12/datatype

# 8. Типы данных

Postgres Pro предоставляет пользователям богатый ассортимент встроенных типов данных. Кроме того, пользователи могут создавать свои типы в Postgres Pro, используя команду CREATE TYPE.

Таблица 8.1 содержит все встроенные типы данных общего пользования. Многие из альтернативных имён, приведённых в столбце «Псевдонимы», используются внутри Postgres Pro по историческим причинам. В этот список не включены некоторые устаревшие типы и типы для внутреннего применения.

Таблица 8.1. Типы данных

| Имя                                      | Псевдонимы                               | Описание                                 |
|------------------------------------------|------------------------------------------|------------------------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">bigint</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">int8</code> | знаковое целое из 8 байт                 |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">bigserial</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">serial8</code> | восьмибайтное целое с автоувеличением    |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">bit [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>) ]</code> |                                          | битовая строка фиксированной длины       |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">bit varying [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>) ]</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">varbit [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>) ]</code> | битовая строка переменной длины          |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">boolean</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">bool</code> | логическое значение (true/false)         |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">box</code> |                                          | прямоугольник в плоскости                |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">bytea</code> |                                          | двоичные данные (<span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">«<span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">массив байт</span>»</span>) |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">character [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>) ]</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">char [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>) ]</code> | символьная строка фиксированной длины    |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">character varying [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>) ]</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">varchar [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>) ]</code> | символьная строка переменной длины       |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">cidr</code> |                                          | сетевой адрес IPv4 или IPv6              |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">circle</code> |                                          | круг в плоскости                         |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">date</code> |                                          | календарная дата (год, месяц, день)      |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">double precision</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">float8</code> | число двойной точности с плавающей точкой (8 байт) |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">inet</code> |                                          | адрес узла IPv4 или IPv6                 |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">integer</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">int</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">int4</code> | знаковое четырёхбайтное целое            |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">interval [<span> </span><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">поля</code></em><span> </span>] [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ]</code> |                                          | интервал времени                         |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">json</code> |                                          | текстовые данные JSON                    |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">jsonb</code> |                                          | двоичные данные JSON, разобранные        |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">line</code> |                                          | прямая в плоскости                       |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">lseg</code> |                                          | отрезок в плоскости                      |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">macaddr</code> |                                          | MAC-адрес                                |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">macaddr8</code> |                                          | Адрес MAC (Media Access Control) (в формате EUI-64) |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">money</code> |                                          | денежная сумма                           |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">numeric [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>,<span> </span><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">s</code></em>) ]</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">decimal [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>,<span> </span><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">s</code></em>) ]</code> | вещественное число заданной точности     |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">path</code> |                                          | геометрический путь в плоскости          |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">pg_lsn</code> |                                          | Последовательный номер в журнале<span> </span><span class="productname" style="box-sizing: border-box;">Postgres Pro</span> |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">point</code> |                                          | геометрическая точка в плоскости         |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">polygon</code> |                                          | замкнутый геометрический путь в плоскости |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">real</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">float4</code> | число одинарной точности с плавающей точкой (4 байта) |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">smallint</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">int2</code> | знаковое двухбайтное целое               |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">smallserial</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">serial2</code> | двухбайтное целое с автоувеличением      |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">serial</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">serial4</code> | четырёхбайтное целое с автоувеличением   |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">text</code> |                                          | символьная строка переменной длины       |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">time [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ] [ without time zone ]</code> |                                          | время суток (без часового пояса)         |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">time [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ] with time zone</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timetz</code> | время суток с учётом часового пояса      |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ] [ without time zone ]</code> |                                          | дата и время (без часового пояса)        |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ] with time zone</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamptz</code> | дата и время с учётом часового пояса     |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">tsquery</code> |                                          | запрос текстового поиска                 |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">tsvector</code> |                                          | документ для текстового поиска           |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">txid_snapshot</code> |                                          | снимок идентификатора транзакций         |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">uuid</code> |                                          | универсальный уникальный идентификатор   |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">xml</code> |                                          | XML-данные                               |

>Совместимость
В стандарте SQL описаны следующие типы (или их имена): bigint, bit, bit varying, boolean, char, character varying, character, varchar, date, double precision, integer, interval, numeric, decimal, real, smallint, time (с часовым поясом и без), timestamp (с часовым поясом и без), xml.

Каждый тип данных имеет внутреннее представление, скрытое функциями ввода и вывода. При этом многие встроенные типы стандартны и имеют очевидные внешние форматы. Однако есть типы, уникальные для Postgres Pro, например геометрические пути, и есть типы, которые могут иметь разные форматы, например, дата и время. Некоторые функции ввода и вывода не являются в точности обратными друг к другу, то есть результат функции вывода может не совпадать со входным значением из-за потери точности.

## 8.1. Числовые типы

Числовые типы включают двух-, четырёх- и восьмибайтные целые, четырёх- и восьмибайтные числа с плавающей точкой, а также десятичные числа с задаваемой точностью. Все эти типы перечислены в Таблице 8.2.

Таблица 8.2. Числовые типы

| Имя                                      | Размер     | Описание                                 | Диапазон                                 |
|------------------------------------------|------------|------------------------------------------|------------------------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">smallint</code> | 2 байта    | целое в небольшом диапазоне              | -32768 .. +32767                         |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">integer</code> | 4 байта    | типичный выбор для целых чисел           | -2147483648 .. +2147483647               |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">bigint</code> | 8 байт     | целое в большом диапазоне                | -9223372036854775808 .. 9223372036854775807 |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">decimal</code> | переменный | вещественное число с указанной точностью | до 131072 цифр до десятичной точки и до 16383 — после |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">numeric</code> | переменный | вещественное число с указанной точностью | до 131072 цифр до десятичной точки и до 16383 — после |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">real</code> | 4 байта    | вещественное число с переменной точностью | точность в пределах 6 десятичных цифр    |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">double precision</code> | 8 байт     | вещественное число с переменной точностью | точность в пределах 15 десятичных цифр   |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">smallserial</code> | 2 байта    | небольшое целое с автоувеличением        | 1 .. 32767                               |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">serial</code> | 4 байта    | целое с автоувеличением                  | 1 .. 2147483647                          |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">bigserial</code> | 8 байт     | большое целое с автоувеличением          | 1 .. 9223372036854775807                 |

Синтаксис констант числовых типов описан в Подразделе 4.1.2. Для этих типов определён полный набор соответствующих арифметических операторов и функций. За дополнительными сведениями обратитесь к Главе 9. Подробнее эти типы описаны в следующих разделах.

### 8.1.1. Целочисленные типы

Типы smallint, integer и bigint хранят целые числа, то есть числа без дробной части, имеющие разные допустимые диапазоны. Попытка сохранить значение, выходящее за рамки диапазона, приведёт к ошибке.

Чаще всего используется тип integer, как наиболее сбалансированный выбор ширины диапазона, размера и быстродействия. Тип smallint обычно применяется, только когда крайне важно уменьшить размер данных на диске. Тип bigint предназначен для тех случаев, когда числа не умещаются в диапазон типа integer.

В SQL определены только типы integer (или int), smallint и bigint. Имена типов int2, int4 и int8 выходят за рамки стандарта, хотя могут работать и в некоторых других СУБД.

### 8.1.2 Числа с произвольной точностью
Тип numeric позволяет хранить числа с очень большим количеством цифр. Он особенно рекомендуется для хранения денежных сумм и других величин, где важна точность. Вычисления с типом numeric дают точные результаты, где это возможно, например, при сложении, вычитании и умножении. Однако операции со значениями numeric выполняются гораздо медленнее, чем с целыми числами или с типами с плавающей точкой, описанными в следующем разделе.

Ниже мы используем следующие термины: масштаб значения numeric определяет количество десятичных цифр в дробной части, справа от десятичной точки, а точность — общее количество значимых цифр в числе, т. е. количество цифр по обе стороны десятичной точки. Например, число 23.5141 имеет точность 6 и масштаб 4. Целочисленные значения можно считать числами с масштабом 0.

Для столбца типа numeric можно настроить и максимальную точность, и максимальный масштаб. Столбец типа numeric объявляется следующим образом:

    NUMERIC(точность, масштаб)
Точность должна быть положительной, а масштаб положительным или равным нулю. Альтернативный вариант

    NUMERIC(точность)
устанавливает масштаб 0. Форма:

    NUMERIC
без указания точности и масштаба создаёт столбец, в котором можно сохранять числовые значения любой точности и масштаба в пределах, поддерживаемых системой. В столбце этого типа входные значения не будут приводиться к какому-либо масштабу, тогда как в столбцах numeric с явно заданным масштабом значения подгоняются под этот масштаб. (Стандарт SQL утверждает, что по умолчанию должен устанавливаться масштаб 0, т. е. значения должны приводиться к целым числам. Однако мы считаем это не очень полезным. Если для вас важна переносимость, всегда указывайте точность и масштаб явно.)

>Примечание
Максимально допустимая точность, которую можно указать в объявлении типа, равна 1000; если же использовать NUMERIC без указания точности, действуют ограничения, описанные в Таблице 8.2.

Если масштаб значения, которое нужно сохранить, превышает объявленный масштаб столбца, система округлит его до заданного количества цифр после точки. Если же после этого количество цифр слева в сумме с масштабом превысит объявленную точность, произойдёт ошибка.

Числовые значения физически хранятся без каких-либо дополняющих нулей слева или справа. Таким образом, объявляемые точность и масштаб столбца определяют максимальный, а не фиксированный размер хранения. (В этом смысле тип numeric больше похож на тип varchar(n), чем на char(n).) Действительный размер хранения такого значения складывается из двух байт для каждой группы из четырёх цифр и дополнительных трёх-восьми байт.

Помимо обычных чисел тип numeric позволяет сохранить специальное значение NaN, что означает «not-a-number» (не число). Любая операция c NaN выдаёт в результате тоже NaN. Записывая это значение в виде константы в команде SQL, его нужно заключать в апострофы, например так: UPDATE table SET x = 'NaN'. Регистр символов в строке NaN не важен.



>Примечание
В большинстве реализаций «не число» (NaN) считается не равным любому другому значению (в том числе и самому NaN). Чтобы значения numeric можно было сортировать и использовать в древовидных индексах, Postgres Pro считает, что значения NaN равны друг другу и при этом больше любых числовых значений (не NaN).

Типы decimal и numeric равнозначны. Оба эти типа описаны в стандарте SQL.

При округлении значений тип numeric выдаёт число, большее по модулю, тогда как (на большинстве платформ) типы real и double precision выдают ближайшее чётное число. Например:

    SELECT x,
    round(x::numeric) AS num_round,
    round(x::double precision) AS dbl_round
    FROM generate_series(-3.5, 3.5, 1) as x;
    x   | num_round | dbl_round
    ------+-----------+-----------
    -3.5 |        -4 |        -4
    -2.5 |        -3 |        -2
    -1.5 |        -2 |        -2
    -0.5 |        -1 |        -0
    0.5 |         1 |         0
    1.5 |         2 |         2
    2.5 |         3 |         2
    3.5 |         4 |         4
    (8 rows)

 ### 8.1.3  Типы с плавающей точкой
Типы данных real и double precision хранят приближённые числовые значения с переменной точностью. На всех поддерживаемых в настоящее время платформах эти типы реализуют стандарт IEEE 754 для двоичной арифметики с плавающей точкой (с одинарной и двойной точностью соответственно), в той мере, в какой его поддерживают процессор, операционная система и компилятор.

Неточность здесь выражается в том, что некоторые значения, которые нельзя преобразовать во внутренний формат, сохраняются приближённо, так что полученное значение может несколько отличаться от записанного. Управление подобными ошибками и их распространение в процессе вычислений является предметом изучения целого раздела математики и компьютерной науки, и здесь не рассматривается. Мы отметим только следующее:

- Если вам нужна точность при хранении и вычислениях (например, для денежных сумм), используйте вместо этого тип numeric.

- Если вы хотите выполнять с этими типами сложные вычисления, имеющие большую важность, тщательно изучите реализацию операций в вашей среде и особенно поведение в крайних случаях (бесконечность, антипереполнение).

 - Проверка равенства двух чисел с плавающей точкой может не всегда давать ожидаемый результат.

На всех поддерживаемых сейчас платформах тип real может сохранить значения примерно от 1E-37 до 1E+37 с точностью не меньше 6 десятичных цифр. Тип double precision предлагает значения в диапазоне приблизительно от 1E-307 до 1E+308 и с точностью не меньше 15 цифр. Попытка сохранить слишком большие или слишком маленькие значения приведёт к ошибке. Если точность вводимого числа слишком велика, оно будет округлено. При попытке сохранить число, близкое к 0, но непредставимое как отличное от 0, произойдёт ошибка антипереполнения.

По умолчанию числа с плавающей точкой выводятся в текстовом виде в кратчайшем точном десятичном представлении; выводимое десятичное значение оказывается более близким к изначальному двоичному числу, чем любое другое значение, представимое с той же двоичной точностью. (Однако выводимое значение в текущей реализации никогда не находится точно посередине между двумя представимыми двоичными значениями, во избежание распространённой ошибки с функциями ввода, не учитывающими корректно правило округления до ближайшего чётного.) Выводимое значение может занимать не больше 17 значащих десятичных цифр для типа float8 и не больше 9 цифр для типа float4.

>Примечание
Преобразование в кратчайший точный вид производится гораздо быстрее, чем в традиционное представление с округлением.

Для совместимости с результатами, выдаваемыми старыми версиями Postgres Pro, и уменьшения точности выводимых чисел, когда это требуется, в параметре extra_float_digits можно выбрать также вариант округлённого десятичного вывода. Со значением 0 восстанавливается действовавшее ранее по умолчанию округление числа до 6 (для типа float4) или 15 (для float8) значащих десятичных цифр. При отрицательных значениях число значащих цифр уменьшается дополнительно; например, при -2 результат будет округлён до 4 или 13 цифр, соответственно.

При любом значении extra_float_digits, большем 0, выбирается кратчайшее точное представление.

>Примечание
Приложения, которым были нужны точные числовые значения, раньше задавали для параметра extra_float_digits значение 3, чтобы получить их. Они могут продолжать использовать это значение для максимальной совместимости с разными версиями.

В дополнение к обычным числовым значениям типы с плавающей точкой могут содержать следующие специальные значения:


    Infinity
    -Infinity
    NaN

Они представляют особые значения, описанные в IEEE 754, соответственно «бесконечность», «минус бесконечность» и «не число». Записывая эти значения в виде констант в команде SQL, их нужно заключать в апострофы, например так: UPDATE table SET x = '-Infinity'. Регистр символов в этих строках не важен.

>Примечание
Согласно IEEE754, NaN не должно считаться равным любому другому значению с плавающей точкой (в том числе и самому NaN). Чтобы значения с плавающей точкой можно было сортировать и использовать в древовидных индексах, Postgres Pro считает, что значения NaN равны друг другу, и при этом больше любых числовых значений (не NaN).

Postgres Pro также поддерживает форматы float и float(p), оговорённые в стандарте SQL, для указания неточных числовых типов. Здесь p определяет минимально допустимую точность в двоичных цифрах. Postgres Pro воспринимает запись от float(1) до float(24) как выбор типа real, а запись от float(25) до float(53) как выбор типа double precision. Значения p вне допустимого диапазона вызывают ошибку. Если float указывается без точности, подразумевается тип double precision.

### 8.1.4 Последовательные типы
>Примечание
В этом разделе описывается специфичный для Postgres Pro способ создания столбца с автоувеличением. Другой способ, соответствующий стандарту SQL, заключается в использовании столбцов идентификации и рассматривается в описании CREATE TABLE.

Типы данных smallserial, serial и bigserial не являются настоящими типами, а представляют собой просто удобное средство для создания столбцов с уникальными идентификаторами (подобное свойству AUTO_INCREMENT в некоторых СУБД). В текущей реализации запись:

    CREATE TABLE имя_таблицы (
        имя_столбца SERIAL
    );
равнозначна следующим командам:

    CREATE SEQUENCE имя_таблицы_имя_столбца_seq AS integer;
    CREATE TABLE имя_таблицы (
        имя_столбца integer NOT NULL DEFAULT nextval('имя_таблицы_имя_столбца_seq')
    );
    ALTER SEQUENCE имя_таблицы_имя_столбца_seq OWNED BY имя_таблицы.имя_столбца;
То есть при определении такого типа создаётся целочисленный столбец со значением по умолчанию, извлекаемым из генератора последовательности. Чтобы в столбец нельзя было вставить NULL, в его определение добавляется ограничение NOT NULL. (Во многих случаях также имеет смысл добавить для этого столбца ограничения UNIQUE или PRIMARY KEY для защиты от ошибочного добавления дублирующихся значений, но автоматически это не происходит.) Последняя команда определяет, что последовательность «принадлежит» столбцу, так что она будет удалена при удалении столбца или таблицы.

>Примечание
Так как типы smallserial, serial и bigserial реализованы через последовательности, в числовом ряду значений столбца могут образовываться пропуски (или "дыры"), даже если никакие строки не удалялись. Значение, выделенное из последовательности, считается "задействованным", даже если строку с этим значением не удалось вставить в таблицу. Это может произойти, например, при откате транзакции, добавляющей данные. См. описание nextval() в Разделе 9.16.

Чтобы вставить в столбец serial следующее значение последовательности, ему нужно присвоить значение по умолчанию. Это можно сделать, либо исключив его из списка столбцов в операторе INSERT, либо с помощью ключевого слова DEFAULT.

Имена типов serial и serial4 равнозначны: они создают столбцы integer. Так же являются синонимами имена bigserial и serial8, но они создают столбцы bigint. Тип bigserial следует использовать, если за всё время жизни таблицы планируется использовать больше чем 231 значений. И наконец, синонимами являются имена типов smallserial и serial2, но они создают столбец smallint.

Последовательность, созданная для столбца serial, автоматически удаляется при удалении связанного столбца. Последовательность можно удалить и отдельно от столбца, но при этом также будет удалено определение значения по умолчанию.

## 8.2. Денежные типы
Тип money хранит денежную сумму с фиксированной дробной частью; см. Таблицу 8.3. Точность дробной части определяется на уровне базы данных параметром lc_monetary. Для диапазона, показанного в таблице, предполагается, что число содержит два знака после запятой. Входные данные могут быть записаны по-разному, в том числе в виде целых и дробных чисел, а также в виде строки в денежном формате, например '$1,000.00'. Выводятся эти значения обычно в денежном формате, зависящем от региональных стандартов.

Таблица 8.3. Денежные типы

| Имя                                      | Размер | Описание       | Диапазон                                 |
|------------------------------------------|--------|----------------|------------------------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">money</code> | 8 байт | денежная сумма | -92233720368547​758.08 .. +92233720368547​758.07 |

Так как выводимые значения этого типа зависят от региональных стандартов, попытка загрузить данные типа money в базу данных с другим параметром lc_monetary может быть неудачной. Во избежание подобных проблем, прежде чем восстанавливать копию в новую базу данных, убедитесь в том, что параметр lc_monetary в этой базе данных имеет то же значение, что и в исходной.

Значения типов numeric, int и bigint можно привести к типу money. Преобразования типов real и double precision так же возможны через тип numeric, например:

    SELECT '12.34'::float8::numeric::money;
Однако использовать числа с плавающей точкой для денежных сумм не рекомендуется из-за возможных ошибок округления.

Значение money можно привести к типу numeric без потери точности. Преобразование в другие типы может быть неточным и также должно выполняться в два этапа:

    SELECT '52093.89'::money::numeric::float8;
При делении значения типа money на целое число выполняется отбрасывание дробной части и получается целое, ближайшее к нулю. Чтобы получить результат с округлением, выполните деление значения с плавающей точкой или приведите значение типа money к numeric до деления, а затем приведите результат к типу money. (Последний вариант предпочтительнее, так как исключает риск потери точности.) Когда значение money делится на другое значение money, результатом будет значение типа double precision (то есть просто число, не денежная величина); денежные единицы измерения при делении сокращаются.

## 8.3. Символьные типы
Таблица 8.4. Символьные типы

| Имя                                      | Описание                                 |
|------------------------------------------|------------------------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">character varying(<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>)</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">varchar(<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>)</code> | строка ограниченной переменной длины     |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">character(<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>)</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">char(<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">n</code></em>)</code> | строка фиксированной длины, дополненная пробелами |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">text</code> | строка неограниченной переменной длины   |


В Таблице 8.4 перечислены символьные типы общего назначения, доступные в Postgres Pro.

SQL определяет два основных символьных типа: character varying(n) и character(n), где n — положительное число. Оба эти типа могут хранить текстовые строки длиной до n символов (не байт). Попытка сохранить в столбце такого типа более длинную строку приведёт к ошибке, если только все лишние символы не являются пробелами (тогда они будут усечены до максимально допустимой длины). (Это несколько странное исключение продиктовано стандартом SQL.) Если длина сохраняемой строки оказывается меньше объявленной, значения типа character будут дополнятся пробелами; а тип character varying просто сохранит короткую строку.

При попытке явно привести значение к типу character varying(n) или character(n), часть строки, выходящая за границу в n символов, удаляется, не вызывая ошибки. (Это также продиктовано стандартом SQL.)

Записи varchar(n) и char(n) являются синонимами character varying(n) и character(n), соответственно. Записи character без указания длины соответствует character(1). Если же длина не указывается для character varying, этот тип будет принимать строки любого размера. Это поведение является расширением Postgres Pro.

Помимо этого, Postgres Pro предлагает тип text, в котором можно хранить строки произвольной длины. Хотя тип text не описан в стандарте SQL, его поддерживают и некоторые другие СУБД SQL.

Значения типа character физически дополняются пробелами до n символов и хранятся, а затем отображаются в таком виде. Однако при сравнении двух значений типа character дополняющие пробелы считаются незначащими и игнорируются. С правилами сортировки, где пробельные символы являются значащими, это поведение может приводить к неожиданным результатам, например SELECT 'a '::CHAR(2) collate "C" < E'a\n'::CHAR(2) вернёт true (условие будет истинным), хотя в локали C символ пробела считается больше символа новой строки. При приведении значения character к другому символьному типу дополняющие пробелы отбрасываются. Заметьте, что эти пробелы несут смысловую нагрузку в типах character varying и text и в проверках по шаблонам, то есть в LIKE и регулярных выражениях.

Для хранения короткой строки (до 126 байт) требуется дополнительный 1 байт плюс размер самой строки, включая дополняющие пробелы для типа character. Для строк длиннее требуется не 1, а 4 дополнительных байта. Система может автоматически сжимать длинные строки, так что физический размер на диске может быть меньше. Очень длинные текстовые строки переносятся в отдельные таблицы, чтобы они не замедляли работу с другими столбцами. В любом случае максимально возможный размер строки составляет около 1 ГБ. (Допустимое значение n в объявлении типа данных меньше этого числа. Это объясняется тем, что в зависимости от кодировки каждый символ может занимать несколько байт. Если вы желаете сохранять строки без определённого предела длины, используйте типы text или character varying без указания длины, а не задавайте какое-либо большое максимальное значение.)

>Подсказка
По быстродействию эти три типа практически не отличаются друг от друга, не считая большего размера хранения для типа с дополняющими пробелами и нескольких машинных операций для проверки длины при сохранении строк в столбце с ограниченной длиной. Хотя в некоторых СУБД тип character(n) работает быстрее других, в Postgres Pro это не так; на деле character(n) обычно оказывается медленнее остальных типов из-за большего размера данных и более медленной сортировки. В большинстве случаев вместо него лучше применять text или character varying.

Подробнее синтаксис текстовых строк описан в Подразделе 4.1.2.1, а доступные операторы и функции перечисляются в Главе 9. Кодировка, используемая для хранения текстовых строк, определяется набором символов, выбранным для базы данных. Подробнее это описано в Разделе 22.3.

Пример 8.1. Использование символьных типов

    CREATE TABLE test1 (a character(4));
    INSERT INTO test1 VALUES ('ok');
    SELECT a, char_length(a) FROM test1; -- (1)

    a   | char_length
    ------+-------------
    ok   |           2


    CREATE TABLE test2 (b varchar(5));
    INSERT INTO test2 VALUES ('ok');
    INSERT INTO test2 VALUES ('good      ');
    INSERT INTO test2 VALUES ('too long');
    ОШИБКА:  значение не умещается в тип character varying(5)
    INSERT INTO test2 VALUES ('too long'::varchar(5)); -- явное усечение
    SELECT b, char_length(b) FROM test2;

    b   | char_length
    -------+-------------
    ok    |           2
    good  |           5
    too l |           5
    (1)

Функция char_length рассматривается в Разделе 9.4.


В Postgres Pro есть ещё два символьных типа фиксированной длины, приведённые в Таблице 8.5. Тип name создан только для хранения идентификаторов во внутренних системных таблицах и не предназначен для обычного применения пользователями. В настоящее время его длина составляет 64 байта (63 ASCII-символа плюс конечный знак), но в исходном коде C она задаётся константой NAMEDATALEN. Эта константа определяется во время компиляции (и её можно менять в особых случаях), а кроме того, максимальная длина по умолчанию может быть увеличена в следующих версиях. Тип "char" (обратите внимание на кавычки) отличается от char(1) тем, что он фактически хранится в одном байте. Он используется во внутренних системных таблицах для простых перечислений.

Таблица 8.5. Специальные символьные типы

| Имя                                      | Размер   | Описание                         |
|------------------------------------------|----------|----------------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">"char"</code> | 1 байт   | внутренний однобайтный тип       |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">name</code> | 64 байта | внутренний тип для имён объектов |

## 8.4. Двоичные типы данных

Для хранения двоичных данных предназначен тип bytea; см. Таблицу 8.6.

Таблица 8.6. Двоичные типы данных

| Имя                                      | Размер                                  | Описание                         |
|------------------------------------------|-----------------------------------------|----------------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">bytea</code> | 1 или 4 байта плюс сама двоичная строка | двоичная строка переменной длины |


Двоичные строки представляют собой последовательность октетов (байт) и имеют два отличия от текстовых строк. Во-первых, в двоичных строках можно хранить байты с кодом 0 и другими «непечатаемыми» значениями (обычно это значения вне десятичного диапазона 32..126). В текстовых строках нельзя сохранять нулевые байты, а также значения и последовательности значений, не соответствующие выбранной кодировке базы данных. Во-вторых, в операциях с двоичными строками обрабатываются байты в чистом виде, тогда как текстовые строки обрабатываются в зависимости от языковых стандартов. То есть, двоичные строки больше подходят для данных, которые программист видит как «просто байты», а символьные строки — для хранения текста.

Тип bytea поддерживает два формата ввода и вывода: «шестнадцатеричный» и традиционный для PostgreSQL формат «спецпоследовательностей». Входные данные принимаются в обоих форматах, а формат выходных данных зависит от параметра конфигурации bytea_output; по умолчанию выбран шестнадцатеричный. (Заметьте, что шестнадцатеричный формат был введён в PostgreSQL 9.0; в ранних версиях и некоторых программах он не будет работать.)

Стандарт SQL определяет другой тип двоичных данных, BLOB (BINARY LARGE OBJECT, большой двоичный объект). Его входной формат отличается от форматов bytea, но функции и операторы в основном те же.

### 8.4.1. Шестнадцатеричный формат bytea
В «шестнадцатеричном» формате двоичные данные кодируются двумя шестнадцатеричными цифрами на байт, при этом первая цифра соответствует старшим 4 битам. К полученной строке добавляется префикс \x (чтобы она отличалась от формата спецпоследовательности). В некоторых контекстах обратную косую черту нужно экранировать, продублировав её (см. Подраздел 4.1.2.1). Вводимые шестнадцатеричные цифры могут быть в любом регистре, а между парами цифр допускаются пробельные символы (но не внутри пары и не в начале последовательности \x). Этот формат совместим со множеством внешних приложений и протоколов, к тому же обычно преобразуется быстрее, поэтому предпочтительнее использовать его.

Пример:

    SELECT '\xDEADBEEF';
### 8.4.2 Формат спецпоследовательностей bytea
Формат «спецпоследовательностей» традиционно использовался в Postgres Pro для значений типа bytea. В нём двоичная строка представляется в виде последовательности ASCII-символов, а байты, непредставимые в виде ASCII-символов, передаются в виде спецпоследовательностей. Этот формат может быть удобен, если с точки зрения приложения представление байт в виде символов имеет смысл. Но на практике это обычно создаёт путаницу, так как двоичные и символьные строки могут выглядеть одинаково, а кроме того выбранный механизм спецпоследовательностей довольно неуклюж. Поэтому в новых приложениях этот формат обычно не стоит использовать.

Передавая значения bytea в формате спецпоследовательности, байты с определёнными значениями необходимо записывать специальным образом, хотя так можно записывать и все значения. В общем виде для этого значение байта нужно преобразовать в трёхзначное восьмеричное число и добавить перед ним обратную косую черту. Саму обратную косую черту (символ с десятичным кодом 92) можно записать в виде двух таких символов. В Таблице 8.7 перечислены символы, которые нужно записывать спецпоследовательностями, и приведены альтернативные варианты записи, если они возможны.

Таблица 8.7. Спецпоследовательности записи значений bytea

| Десятичное значение байта  | Описание                                 | Спецпоследовательность ввода             | Пример                                   | Шестнадцатеричное представление          |
|----------------------------|------------------------------------------|------------------------------------------|------------------------------------------|------------------------------------------|
| 0                          | нулевой байт                             | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">'\000'</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SELECT '\000'::bytea;</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">\x00</code> |
| 39                         | апостроф                                 | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">''''</code><span> </span>или<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">'\047'</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SELECT ''''::bytea;</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">\x27</code> |
| 92                         | обратная косая черта                     | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">'\\'</code><span> </span>или<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">'\134'</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SELECT '\\'::bytea;</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">\x5c</code> |
| от 0 до 31 и от 127 до 255 | <span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">«<span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">непечатаемые</span>»</span><span> </span>байты | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">E'\\<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">xxx'</code></em></code><span> </span>(восьмеричное значение) | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SELECT '\001'::bytea;</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">\x01</code> |

Требования экранирования непечатаемых символов определяются языковыми стандартами. Иногда такие символы могут восприниматься и без спецпоследовательностей.

Апострофы должны дублироваться, как показано в Таблице 8.7, потому что это обязательно для любой текстовой строки в команде SQL. При общем разборе текстовой строки внешние апострофы убираются, а каждая пара внутренних сводится к одному символу. Таким образом, функция ввода bytea видит всего один апостроф, который она обрабатывает как обычный символ в данных. Дублировать же обратную косую черту при вводе bytea не требуется: этот символ считается особым и меняет поведение функции ввода, как показано в Таблице 8.7.

В некоторых контекстах обратная косая черта должна дублироваться (относительно примеров выше), так как при общем разборе строковых констант пара таких символов будет сведена к одному; см. Подраздел 4.1.2.1.

Данные Bytea по умолчанию выводятся в шестнадцатеричном формате (hex). Если поменять значение bytea_output на escape, «непечатаемые» байты представляются в виде соответствующих трёхзначных восьмеричных значений, которые предваряются одной обратной косой чертой. Большинство «печатаемых» байтов представляются обычными символами из клиентского набора символов, например:

    SET bytea_output = 'escape';

    SELECT 'abc \153\154\155 \052\251\124'::bytea;
        bytea
    ----------------
    abc klm *\251T
    Байт с десятичным кодом 92 (обратная косая черта) при выводе дублируется. Это иллюстрирует Таблица 8.8.

Таблица 8.8. Спецпоследовательности выходных значений bytea

| Десятичное значение байта  | Описание                                 | Спецпоследовательность вывода            | Пример                                   | Выводимый результат                      |
|----------------------------|------------------------------------------|------------------------------------------|------------------------------------------|------------------------------------------|
| 92                         | обратная косая черта                     | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">\\</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SELECT '\134'::bytea;</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">\\</code> |
| от 0 до 31 и от 127 до 255 | <span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">«<span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">непечатаемые</span>»</span><span> </span>байты | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">\<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">xxx</code></em></code><span> </span>(значение байта) | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SELECT '\001'::bytea;</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">\001</code> |
| от 32 до 126               | <span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">«<span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">печатаемые</span>»</span><span> </span>байты | представление из клиентского набора символов | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SELECT '\176'::bytea;</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">~</code> |

В зависимости от применяемой клиентской библиотеки Postgres Pro, для преобразования значений bytea в спецстроки и обратно могут потребоваться дополнительные действия. Например, если приложение сохраняет в строках символы перевода строк, возможно их также нужно будет представить спецпоследовательностями.

## 8.5. Типы даты/времени

Postgres Pro поддерживает полный набор типов даты и времени SQL, показанный в Таблице 8.9. Операции, возможные с этими типами данных, описаны в Разделе 9.9. Все даты считаются по Григорианскому календарю, даже для времени до его введения (за дополнительными сведениями обратитесь к Разделу B.5).

Таблица 8.9. Типы даты/времени

| Имя                                      | Размер  | Описание                               | Наименьшее значение | Наибольшее значение | Точность       |
|------------------------------------------|---------|----------------------------------------|---------------------|---------------------|----------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ] [ without time zone ]</code> | 8 байт  | дата и время (без часового пояса)      | 4713 до н. э.       | 294276 н. э.        | 1 микросекунда |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ] with time zone</code> | 8 байт  | дата и время (с часовым поясом)        | 4713 до н. э.       | 294276 н. э.        | 1 микросекунда |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">date</code> | 4 байта | дата (без времени суток)               | 4713 до н. э.       | 5874897 н. э.       | 1 день         |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">time [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ] [ without time zone ]</code> | 8 байт  | время суток (без даты)                 | 00:00:00            | 24:00:00            | 1 микросекунда |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">time [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ] with time zone</code> | 12 байт | время дня (без даты), с часовым поясом | 00:00:00+1459       | 24:00:00-1459       | 1 микросекунда |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">interval [<span> </span><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">поля</code></em><span> </span>] [ (<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">p</code></em>) ]</code> | 16 байт | временной интервал                     | -178000000 лет      | 178000000 лет       | 1 микросекунда |

>Примечание
Стандарт SQL требует, чтобы тип timestamp подразумевал timestamp without time zone (время без часового пояса), и Postgres Pro следует этому. Для краткости timestamp with time zone можно записать как timestamptz; это расширение Postgres Pro.

Типы time, timestamp и interval принимают необязательное значение точности p, определяющее, сколько знаков после запятой должно сохраняться в секундах. По умолчанию точность не ограничивается. Допустимые значения p лежат в интервале от 0 до 6.

Тип interval дополнительно позволяет ограничить набор сохраняемых поле следующими фразами:

    YEAR
    MONTH
    DAY
    HOUR
    MINUTE
    SECOND
    YEAR TO MONTH
    DAY TO HOUR
    DAY TO MINUTE
    DAY TO SECOND
    HOUR TO MINUTE
    HOUR TO SECOND
    MINUTE TO SECOND
Заметьте, что если указаны и поля, и точность p, указание поля должно включать SECOND, так как точность применима только к секундам.

Тип time with time zone определён стандартом SQL, но в его определении описаны свойства сомнительной ценности. В большинстве случаев сочетание типов date, time, timestamp without time zone и timestamp with time zone удовлетворяет все потребности в функционале дат/времени, возникающие в приложениях.

### 8.5.1. Ввод даты/времени
Значения даты и времени принимаются практически в любом разумном формате, включая ISO 8601, SQL-совместимый, традиционный формат POSTGRES и другие. В некоторых форматах порядок даты, месяца и года во вводимой дате неоднозначен и поэтому поддерживается явное определение формата. Для этого предназначен параметр DateStyle. Когда он имеет значение MDY, выбирается интерпретация месяц-день-год, значению DMY соответствует день-месяц-год, а YMD — год-месяц-день.

Postgres Pro обрабатывает вводимые значения даты/времени более гибко, чем того требует стандарт SQL. Точные правила разбора даты/времени и распознаваемые текстовые поля, в том числе названия месяцев, дней недели и часовых поясов описаны в Приложении B.

Помните, что любые вводимые значения даты и времени нужно заключать в апострофы, как текстовые строки. За дополнительной информацией обратитесь к Подразделу 4.1.2.7. SQL предусматривает следующий синтаксис:

тип [ (p) ] 'значение'
Здесь p — необязательное указание точности, определяющее число знаков после точки в секундах. Точность может быть определена для типов time, timestamp и interval в интервале от 0 до 6. Если в определении константы точность не указана, она считается равной точности значения в строке (но не больше 6 цифр).

#### 8.5.1.1. Даты
В Таблице 8.10 приведены некоторые допустимые значения типа date.

Таблица 8.10. Вводимые даты

| Пример           | Описание                                 |
|------------------|------------------------------------------|
| 1999-01-08       | ISO 8601; 8 января в любом режиме (рекомендуемый формат) |
| January 8, 1999  | воспринимается однозначно в любом режиме<span> </span><code class="varname" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">datestyle</code> |
| 1/8/1999         | 8 января в режиме<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">MDY</code><span> </span>и 1 августа в режиме<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">DMY</code> |
| 1/18/1999        | 18 января в режиме<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">MDY</code>; недопустимая дата в других режимах |
| 01/02/03         | 2 января 2003 г. в режиме<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">MDY</code>; 1 февраля 2003 г. в режиме<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">DMY</code><span> </span>и 3 февраля 2001 г. в режиме<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">YMD</code> |
| 1999-Jan-08      | 8 января в любом режиме                  |
| Jan-08-1999      | 8 января в любом режиме                  |
| 08-Jan-1999      | 8 января в любом режиме                  |
| 99-Jan-08        | 8 января в режиме<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">YMD</code>; ошибка в других режимах |
| 08-Jan-99        | 8 января; ошибка в режиме<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">YMD</code> |
| Jan-08-99        | 8 января; ошибка в режиме<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">YMD</code> |
| 19990108         | ISO 8601; 8 января 1999 в любом режиме   |
| 990108           | ISO 8601; 8 января 1999 в любом режиме   |
| 1999.008         | год и день года                          |
| J2451187         | дата по юлианскому календарю             |
| January 8, 99 BC | 99 до н. э.                              |

#### 8.5.1.2. Время
Для хранения времени суток без даты предназначены типы time [ (p) ] without time zone и time [ (p) ] with time zone. Тип time без уточнения эквивалентен типу time without time zone.

Допустимые вводимые значения этих типов состоят из записи времени суток и необязательного указания часового пояса. (См. Таблицу 8.11 и Таблицу 8.12.) Если в значении для типа time without time zone указывается часовой пояс, он просто игнорируется. Так же будет игнорироваться дата, если её указать, за исключением случаев, когда в указанном часовом поясе принят переход на летнее время, например America/New_York. В данном случае указать дату необходимо, чтобы система могла определить, применяется ли обычное или летнее время. Соответствующее смещение часового пояса записывается в значении time with time zone.

Таблица 8.11. Вводимое время

| Пример                                   | Описание                                 |
|------------------------------------------|------------------------------------------|
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">04:05:06.789</code> | ISO 8601                                 |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">04:05:06</code> | ISO 8601                                 |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">04:05</code> | ISO 8601                                 |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">040506</code> | ISO 8601                                 |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">04:05 AM</code> | то же, что и 04:05; AM не меняет значение времени |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">04:05 PM</code> | то же, что и 16:05; часы должны быть &lt;= 12 |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">04:05:06.789-8</code> | ISO 8601                                 |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">04:05:06-08:00</code> | ISO 8601                                 |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">04:05-08:00</code> | ISO 8601                                 |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">040506-08</code> | ISO 8601                                 |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">04:05:06 PST</code> | часовой пояс задаётся аббревиатурой      |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">2003-04-12 04:05:06 America/New_York</code> | часовой пояс задаётся полным названием   |


Таблица 8.12. Вводимый часовой пояс

| Пример                                   | Описание                                 |
|------------------------------------------|------------------------------------------|
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">PST</code> | аббревиатура (Pacific Standard Time, Стандартное тихоокеанское время) |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">America/New_York</code> | полное название часового пояса           |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">PST8PDT</code> | указание часового пояса в стиле POSIX    |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">-8:00</code> | смещение часового пояса PST по ISO-8601  |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">-800</code> | смещение часового пояса PST по ISO-8601  |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">-8</code> | смещение часового пояса PST по ISO-8601  |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">zulu</code> | принятое у военных сокращение UTC        |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">z</code> | краткая форма<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">zulu</code> |

Подробнее узнать о том, как указывается часовой пояс, можно в Подразделе 8.5.3.

#### 8.5.1.3. Даты и время
Допустимые значения типов timestamp состоят из записи даты и времени, после которого может указываться часовой пояс и необязательное уточнение AD или BC, определяющее эпоху до нашей эры и нашу эру соответственно. (AD/BC можно указать и перед часовым поясом, но предпочтительнее первый вариант.) Таким образом:

    1999-01-08 04:05:06
и

    1999-01-08 04:05:06 -8:00
допустимые варианты, соответствующие стандарту ISO 8601. В дополнение к этому поддерживается распространённый формат:

    January 8 04:05:06 1999 PST
Стандарт SQL различает константы типов timestamp without time zone и timestamp with time zone по знаку «+» или «-» и смещению часового пояса, добавленному после времени. Следовательно, согласно стандарту, записи

    TIMESTAMP '2004-10-19 10:23:54'
должен соответствовать тип timestamp without time zone, а

    TIMESTAMP '2004-10-19 10:23:54+02'
тип timestamp with time zone. Postgres Pro никогда не анализирует содержимое текстовой строки, чтобы определить тип значения, и поэтому обе записи будут обработаны как значения типа timestamp without time zone. Чтобы текстовая константа обрабатывалась как timestamp with time zone, укажите этот тип явно:

    TIMESTAMP WITH TIME ZONE '2004-10-19 10:23:54+02'
В константе типа timestamp without time zone Postgres Pro просто игнорирует часовой пояс. То есть результирующее значение вычисляется только из полей даты/времени и не подстраивается под указанный часовой пояс.

Значения timestamp with time zone внутри всегда хранятся в UTC (Universal Coordinated Time, Всемирное скоординированное время или время по Гринвичу, GMT). Вводимое значение, в котором явно указан часовой пояс, переводится в UTC с учётом смещения данного часового пояса. Если во входной строке не указан часовой пояс, подразумевается часовой пояс, заданный системным параметром TimeZone и время так же пересчитывается в UTC со смещением timezone.

Когда значение timestamp with time zone выводится, оно всегда преобразуется из UTC в текущий часовой пояс timezone и отображается как локальное время. Чтобы получить время для другого часового пояса, нужно либо изменить timezone, либо воспользоваться конструкцией AT TIME ZONE (см. Подраздел 9.9.3).

В преобразованиях между timestamp without time zone и timestamp with time zone обычно предполагается, что значение timestamp without time zone содержит местное время (для часового пояса timezone). Другой часовой пояс для преобразования можно задать с помощью AT TIME ZONE.

#### 8.5.1.4. Специальные значения
Postgres Pro для удобства поддерживает несколько специальных значений даты/времени, перечисленных в Таблице 8.13. Значения infinity и -infinity имеют особое представление в системе и они отображаются в том же виде, тогда как другие варианты при чтении преобразуются в значения даты/времени. (В частности, now и подобные строки преобразуются в актуальные значения времени в момент чтения.) Чтобы использовать эти значения в качестве констант в командах SQL, их нужно заключать в апострофы.

Таблица 8.13. Специальные значения даты/времени

| Вводимая строка                          | Допустимые типы                          | Описание                                 |
|------------------------------------------|------------------------------------------|------------------------------------------|
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">epoch</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">date</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp</code> | 1970-01-01 00:00:00+00 (точка отсчёта времени в Unix) |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">infinity</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">date</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp</code> | время после максимальной допустимой даты |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">-infinity</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">date</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp</code> | время до минимальной допустимой даты     |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">now</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">date</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">time</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp</code> | время начала текущей транзакции          |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">today</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">date</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp</code> | время начала текущих суток (<code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">00:00</code>) |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">tomorrow</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">date</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp</code> | время начала следующих суток (<code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">00:00</code>) |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">yesterday</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">date</code>,<span> </span><code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">timestamp</code> | время начала предыдущих суток (<code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">00:00</code>) |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">allballs</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">time</code> | 00:00:00.00 UTC                          |


Для получения текущей даты/времени соответствующего типа можно также использовать следующие SQL-совместимые функции: CURRENT_DATE, CURRENT_TIME, CURRENT_TIMESTAMP, LOCALTIME и LOCALTIMESTAMP. Последние четыре функции принимают необязательное указание точности. (См. Подраздел 9.9.4.) Заметьте, что во входных строках эти SQL-функции не распознаются.

### 8.5.2. Вывод даты/времени
В качестве выходного формата типов даты/времени можно использовать один из четырёх стилей: ISO 8601, SQL (Ingres), традиционный формат POSTGRES (формат date в Unix) или German. По умолчанию выбран формат ISO. (Стандарт SQL требует, чтобы использовался именно ISO 8601. Другой формат называется «SQL» исключительно по историческим причинам.) Примеры всех стилей вывода перечислены в Таблице 8.14. Вообще со значениями типов date и time выводилась бы только часть даты или времени из показанных примеров, но со стилем POSTGRES значение даты без времени выводится в формате ISO.

Таблица 8.14. Стили вывода даты/время

| Стиль                                    | Описание               | Пример                                   |
|------------------------------------------|------------------------|------------------------------------------|
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">ISO</code> | ISO 8601, стандарт SQL | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">1997-12-17 07:37:16-08</code> |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SQL</code> | традиционный стиль     | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">12/17/1997 07:37:16.00 PST</code> |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">Postgres</code> | изначальный стиль      | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">Wed Dec 17 07:37:16 1997 PST</code> |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">German</code> | региональный стиль     | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">17.12.1997 07:37:16.00 PST</code> |

>Примечание
ISO 8601 указывает, что дата должна отделяться от времени буквой T в верхнем регистре. Postgres Pro принимает этот формат при вводе, но при выводе вставляет вместо T пробел, как показано выше. Это сделано для улучшения читаемости и для совместимости с RFC 3339 и другими СУБД.

В стилях SQL и POSTGRES день выводится перед месяцем, если установлен порядок DMY, а в противном случае месяц выводится перед днём. (Как этот параметр также влияет на интерпретацию входных значений, описано в Подразделе 8.5.1) Соответствующие примеры показаны в Таблице 8.15.

Таблица 8.15. Соглашения о порядке компонентов даты

| Параметр datestyle                       | Порядок при вводе                        | Пример вывода                            |
|------------------------------------------|------------------------------------------|------------------------------------------|
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SQL, DMY</code> | <em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">день</code></em>/<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">месяц</code></em>/<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">год</code></em> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">17/12/1997 15:37:16.00 CET</code> |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">SQL, MDY</code> | <em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">месяц</code></em>/<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">день</code></em>/<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">год</code></em> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">12/17/1997 07:37:16.00 PST</code> |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">Postgres, DMY</code> | <em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">день</code></em>/<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">месяц</code></em>/<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">год</code></em> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">Wed 17 Dec 07:37:16 1997 PST</code> |

Стиль даты/времени пользователь может выбрать с помощью команды SET datestyle, параметра DateStyle в файле конфигурации postgresql.conf или переменной окружения PGDATESTYLE на сервере или клиенте.

Для большей гибкости при форматировании выводимой даты/времени можно использовать функцию to_char (см. Раздел 9.8).

### 8.5.3. Часовые пояса
Часовые пояса и правила их применения определяются, как вы знаете, не только по географическим, но и по политическим соображениям. Часовые пояса во всём мире были более-менее стандартизированы в начале прошлого века, но они продолжают претерпевать изменения, в частности это касается перехода на летнее время. Для расчёта времени в прошлом Postgres Pro получает исторические сведения о правилах часовых поясов из распространённой базы данных IANA (Olson). Для будущего времени предполагается, что в заданном часовом поясе будут продолжать действовать последние принятые правила.

Postgres Pro стремится к совместимости со стандартом SQL в наиболее типичных случаях. Однако стандарт SQL допускает некоторые странности при смешивании типов даты и времени. Две очевидные проблемы:

- Хотя для типа date часовой пояс указать нельзя, это можно сделать для типа time. В реальности это не очень полезно, так как без даты нельзя точно определить смещение при переходе на летнее время.

- По умолчанию часовой пояс задаётся постоянным смещением от UTC. Это также не позволяет учесть летнее время при арифметических операций с датами, пересекающими границы летнего времени.

Поэтому мы советуем использовать часовой пояс с типами, включающими и время, и дату. Мы не рекомендуем использовать тип time with time zone (хотя Postgres Pro поддерживает его для старых приложений и совместимости со стандартом SQL). Для типов, включающих только дату или только время, в Postgres Pro предполагается местный часовой пояс.

Все значения даты и времени с часовым поясом представляются внутри в UTC, а при передаче клиентскому приложению они переводятся в местное время, при этом часовой пояс по умолчанию определяется параметром конфигурации TimeZone.

Postgres Pro позволяет задать часовой пояс тремя способами:

- Полное название часового пояса, например America/New_York. Все допустимые названия перечислены в представлении pg_timezone_names (см. Раздел 50.92). Определения часовых поясов Postgres Pro берёт из широко распространённой базы IANA, так что имена часовых поясов Postgres Pro будут воспринимать и другие приложения.

- Аббревиатура часового пояса, например PST. Такое определение просто задаёт смещение от UTC, в отличие от полных названий поясов, которые кроме того подразумевают и правила перехода на летнее время. Распознаваемые аббревиатуры перечислены в представлении pg_timezone_abbrevs (см. Раздел 50.91). Аббревиатуры можно использовать во вводимых значениях даты/времени и в операторе AT TIME ZONE, но не в параметрах конфигурации TimeZone и log_timezone.

- В дополнение к полным названиям и аббревиатурам часовых поясов Postgres Pro принимает указания часового пояса в стиле POSIX: STDсмещение или STDсмещениеDST, где STD — аббревиатура пояса, смещение — разница с UTC, а DST — необязательное дополнение, обозначающее летнее время и добавляющее к смещению ещё один час. Например, если бы обозначение EST5EDT не являлось названием часового пояса, оно всё равно было бы воспринято и функционально соответствовало бы поясу североамериканского восточного времени. При такой записи аббревиатура пояса может быть набором букв или обычной строкой, заключённой в угловые скобки ((<>). Когда представлено название пояса с летним временем, при пересчёте времени будут использоваться правила перехода на летнее время, описанные в базе данных IANA в файле posixrules. В стандартной инсталляции Postgres Pro файл posixrules соответствует описанию US/Eastern, так что для указаний часовых поясов в стиле POSIX применяются правила перехода на летнее время, принятые в США. При необходимости это можно изменить, заменив файл posixrules.

Вкратце, различие между аббревиатурами и полными названиями заключаются в следующем: аббревиатуры представляют определённый сдвиг от UTC, а полное название подразумевает ещё и местное правило по переходу на летнее время, то есть, возможно, два сдвига от UTC. Например, 2014-06-04 12:00 America/New_York представляет полдень по местному времени в Нью-Йорк, что для данного дня было бы летним восточным временем (EDT или UTC-4). Так что 2014-06-04 12:00 EDT обозначает тот же момент времени. Но 2014-06-04 12:00 EST задаёт стандартное восточное время (UTC-5), не зависящее о того, действовало ли летнее время в этот день.

Мало того, в некоторых юрисдикциях одна и та же аббревиатура часового пояса означала разные сдвиги UTC в разное время; например, аббревиатура московского времени MSK несколько лет означала UTC+3, а затем стала означать UTC+4. Postgres Pro обрабатывает такие аббревиатуры в соответствии с их значениями на заданную дату, но, как и с примером выше EST, это не обязательно будет соответствовать местному гражданскому времени в этот день.

При этом следует использовать возможность указания часового пояса в стиле POSIX с осторожностью, так как при этом могут быть приняты заведомо неверные данные, потому что разумность аббревиатуры никак не проверяется. Например, команда SET TIMEZONE TO FOOBAR0 будет работать и система примет эту довольно оригинальную аббревиатуру для UTC. Также следует учитывать, что в названиях часовых поясов POSIX положительные смещения соответствуют сдвигу к западу Гринвича. Во всех остальных формах Postgres Pro следует соглашению ISO-8601, по которому положительным смещениям соответствует сдвиг к востоку от Гринвича.

Независимо от формы, регистр в названиях и аббревиатурах часовых поясов не важен. (В PostgreSQL до версии 8.2 он где-то имел значение, а где-то нет.)

Ни названия, ни аббревиатуры часовых поясов, не зашиты в самом сервере; они считываются из файлов конфигурации, находящихся в путях .../share/timezone/ и .../share/timezonesets/ относительно каталога установки (см. Раздел B.4).

Параметр конфигурации TimeZone можно установить в postgresql.conf или любым другим стандартным способом, описанным в Главе 18. Часовой пояс может быть также определён следующими специальными способами:

- Часовой пояс для текущего сеанса можно установить с помощью SQL-команды SET TIME ZONE. Это альтернативная запись команды SET TIMEZONE TO, более соответствующая SQL-стандарту.

- Если установлена переменная окружения PGTZ, клиенты libpq используют её значение, выполняя при подключении к серверу команду SET TIME ZONE.

### 8.5.4. Ввод интервалов
Значения типа interval могут быть записаны в следующей расширенной форме:

    [@] количество единица [количество единица...] [направление]
где количество — это число (возможно, со знаком); единица — одно из значений: microsecond, millisecond, second, minute, hour, day, week, month, year, decade, century, millennium (которые обозначают соответственно микросекунды, миллисекунды, секунды, минуты, часы, дни, недели, месяцы, годы, десятилетия, века и тысячелетия), либо эти же слова во множественном числе, либо их сокращения; направление может принимать значение ago (назад) или быть пустым. Знак @ является необязательным. Все заданные величины различных единиц суммируются вместе с учётом знака чисел. Указание ago меняет знак всех полей на противоположный. Этот синтаксис также используется при выводе интервала, если параметр IntervalStyle имеет значение postgres_verbose.

Количества дней, часов, минут и секунд можно определить, не указывая явно соответствующие единицы. Например, запись '1 12:59:10' равнозначна '1 day 12 hours 59 min 10 sec'. Сочетание года и месяца также можно записать через минус; например '200-10' означает то, же что и '200 years 10 months'. (На самом деле только эти краткие формы разрешены стандартом SQL и они используются при выводе, когда IntervalStyle имеет значение sql_standard.)

Интервалы можно также записывать в виде, определённом в ISO 8601, либо в «формате с кодами», описанном в разделе 4.4.3.2 этого стандарта, либо в «альтернативном формате», описанном в разделе 4.4.3.3. Формат с кодами выглядит так:

    P количество единица [ количество единица ...] [ T [ количество единица ...]]
Строка должна начинаться с символа P и может включать также T перед временем суток. Допустимые коды единиц перечислены в Таблице 8.16. Коды единиц можно опустить или указать в любом порядке, но компоненты времени суток должны идти после символа T. В частности, значение кода M зависит от того, располагается ли он до или после T.

Таблица 8.16. Коды единиц временных интервалов ISO 8601

| Код | Значение            |
|-----|---------------------|
| Y   | годы                |
| M   | месяцы (в дате)     |
| W   | недели              |
| D   | дни                 |
| H   | часы                |
| M   | минуты (во времени) |
| S   | секунды             |

В альтернативном формате:

    P [ год-месяц-день ] [ T часы:минуты:секунды ]
строка должна начинаться с P, а T разделяет компоненты даты и времени. Значения выражаются числами так же, как и в датах ISO 8601.

При записи интервальной константы с указанием полей или присвоении столбцу типа interval строки с полями, интерпретация непомеченных величин зависит от полей. Например, INTERVAL '1' YEAR воспринимается как 1 год, а INTERVAL '1' — как 1 секунда. Кроме того, значения «справа» от меньшего значащего поля, заданного в определении полей, просто отбрасываются. Например, в записи INTERVAL '1 day 2:03:04' HOUR TO MINUTE будут отброшены секунды, но не день.

Согласно стандарту SQL, все компоненты значения interval должны быть одного знака, и ведущий минус применяется ко всем компонентам; например, минус в записи '-1 2:03:04' применяется и к дню, и к часам/минутам/секундам. Postgres Pro позволяет задавать для разных компонентов разные знаки и традиционно обрабатывает знак каждого компонента в текстовом представлении отдельно от других, так что в данном случае часы/минуты/секунды будут считаться положительными. Если параметр IntervalStyle имеет значение sql_standard, ведущий знак применяется ко всем компонентам (но только если они не содержат знаки явно). В противном случае действуют традиционные правила Postgres Pro. Во избежание неоднозначности рекомендуется добавлять знак к каждому компоненту с отрицательным значением.

В расширенном формате ввода и в некоторых полях более компактных форматов значения компонентов могут иметь дробные части, например '1.5 week' или '01:02:03.45'. Такое значение при сохранении пересчитывается в соответствующее число месяцев, дней и секунд. Когда при этом остаётся дробная часть в месяцах или в днях, она переносится в младший компонент с допущением, что 1 месяц = 30 дней, а 1 день = 24 часа. Например, значение '1.5 month' будет преобразовано в 1 месяц и 15 дней. В виде дробного числа хранятся и выводятся только секунды.

В Таблице 8.17 показано несколько примеров допустимых вводимых значений типа interval.

Таблица 8.17. Ввод интервалов

| Пример                                   | Описание                                 |
|------------------------------------------|------------------------------------------|
| 1-2                                      | Стандартный формат SQL: 1 год и 2 месяца |
| 3 4:05:06                                | Стандартный формат SQL: 3 дня 4 часа 5 минут 6 секунд |
| 1 year 2 months 3 days 4 hours 5 minutes 6 seconds | Традиционный формат Postgres: 1 год 2 месяца 3 дня 4 часа 5 минут 6 секунд |
| P1Y2M3DT4H5M6S                           | <span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">«<span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">Формат с кодами</span>»</span><span> </span>ISO 8601: то же значение, что и выше |
| P0001-02-03T04:05:06                     | <span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">«<span class="quote" style="box-sizing: border-box; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVQ4T2M8cvv+fxtVRUYGMgFjYd+c/6nxQQxawkJkGcJYPGHe/97SToZbb04zqPHzkWwIY9W0xf/b2qYzMLx8y3Dr7ZlLany8+qT4hrFhzor/DR0zGBgePgfru/PujK4KL+8VYg1hbJi78n9DO9AFUAMMTHQZLhxfQ7RXGNsWrftf1TSJgeHbDwaG1+/BFu8+vY7B1UCbKEMYe1ds/l9c0wtxMdQVICaxgco4ed2O/7llHRgGgA15ffq7mgAfF77wQDXgyzcGhrcfUdTfenMqX42fH+hH7IBx1pa9/9MKmhGySN4ACXLzcDN8eXeWiZGR8T82IxgX7Dr8PyGrFi4n+Pk7w/t3H1DUdkyuY6jIiMYaqIyL9x79H5teDdZw4fAqBgNJMbjC6+/fK7AwM6f+/8+Q9uP/PzU9AQFINCEBxmUHT/yPSq5gWLuolyHYypioqEMxYO3xs/+PHD/P0F+UQrJmkEGMpx8/+28qK0WWZpABAFfPjxGw1mWxAAAAAElFTkSuQmCC&quot;) 0 0, auto !important;">Альтернативный формат</span>»</span><span> </span>ISO 8601: то же значение, что и выше |


Тип interval представлен внутри в виде отдельных значений месяцев, дней и секунд. Это объясняется тем, что число дней в месяце может быть разным, а в сутках может быть и 23, и 25 часов в дни перехода на летнее/зимнее время. Значения месяцев и дней представлены целыми числами, а число секунд может быть дробным. Так как интервалы обычно получаются из строковых констант или при вычитании типов timestamp, этот способ хранения эффективен в большинстве случаев, но может давать неожиданные результаты:

    SELECT EXTRACT(hours from '80 minutes'::interval);
     date_part
    -----------
             1
    
    SELECT EXTRACT(days from '80 hours'::interval);
     date_part
    -----------
             0
Для корректировки числа дней и часов, когда они выходят за обычные границы, есть специальные функции justify_days и justify_hours.

### 8.5.5. Вывод интервалов
Формат вывода типа interval может определяться одним из четырёх стилей: sql_standard, postgres, postgres_verbose и iso_8601. Выбрать нужный стиль позволяет команда SET intervalstyle (по умолчанию выбран postgres). Примеры форматов разных стилей показаны в Таблице 8.18.

Стиль sql_standard выдаёт результат, соответствующий стандарту SQL, если значение интервала удовлетворяет ограничениям стандарта (и содержит либо только год и месяц, либо только день и время, и при этом все его компоненты одного знака). В противном случае выводится год-месяц, за которым идёт дата-время, а в компоненты для однозначности явно добавляются знаки.

Вывод в стиле postgres соответствует формату, который был принят в PostgreSQL до версии 8.4, когда параметр DateStyle имел значение ISO.

Вывод в стиле postgres_verbose соответствует формату, который был принят в PostgreSQL до версии 8.4, когда значением параметром DateStyle было не ISO.

Вывод в стиле iso_8601 соответствует «формату с кодами» описанному в разделе 4.4.3.2 формата ISO 8601.

Таблица 8.18. Примеры стилей вывода интервалов

| Стиль                                    | Интервал год-месяц | Интервал день-время            | Смешанный интервал                       |
|------------------------------------------|--------------------|--------------------------------|------------------------------------------|
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">sql_standard</code> | 1-2                | 3 4:05:06                      | -1-2 +3 -4:05:06                         |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">postgres</code> | 1 year 2 mons      | 3 days 04:05:06                | -1 year -2 mons +3 days -04:05:06        |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">postgres_verbose</code> | @ 1 year 2 mons    | @ 3 days 4 hours 5 mins 6 secs | @ 1 year 2 mons -3 days 4 hours 5 mins 6 secs ago |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">iso_8601</code> | P1Y2M              | P3DT4H5M6S                     | P-1Y-2M3DT-4H-5M-6S                      |


8.6. Логический тип
В Postgres Pro есть стандартный SQL-тип boolean; см. Таблицу 8.19. Тип boolean может иметь следующие состояния: «true», «false» и третье состояние, «unknown», которое представляется SQL-значением NULL.
| Имя                                      | Размер | Описание                   |
|------------------------------------------|--------|----------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">boolean</code> | 1 байт | состояние: истина или ложь |


Логические константы могут представляться в SQL-запросах следующими ключевыми словами SQL: TRUE, FALSE и NULL.

Функция ввода данных типа boolean воспринимает следующие строковые представления состояния «true»:

    true
    yes
    on
    1
и следующие представления состояния «false»:

    false
    no
    off
    0
Также воспринимаются уникальные префиксы этих строк, например t или n. Регистр символов не имеет значения, а пробельные символы в начале и в конце строки игнорируются.

Функция вывода данных типа boolean всегда выдаёт t или f, как показано в Примере 8.2.

Пример 8.2. Использование типа boolean

    CREATE TABLE test1 (a boolean, b text);
    INSERT INTO test1 VALUES (TRUE, 'sic est');
    INSERT INTO test1 VALUES (FALSE, 'non est');
    SELECT * FROM test1;
     a |    b
    ---+---------
     t | sic est
     f | non est
    
    SELECT * FROM test1 WHERE a;
     a |    b
    ---+---------
     t | sic est

Ключевые слова TRUE и FALSE являются предпочтительными (соответствующими стандарту SQL) для записи логических констант в SQL-запросах. Но вы также можете использовать строковые представления, которые допускает синтаксис строковых констант, описанный в Подразделе 4.1.2.7, например, 'yes'::boolean.

Заметьте, что при анализе запроса TRUE и FALSE автоматически считаются значениями типа boolean, но для NULL это не так, потому что ему может соответствовать любой тип. Поэтому в некоторых контекстах может потребоваться привести NULL к типу boolean явно, например так: NULL::boolean. С другой стороны, приведение строковой константы к логическому типу можно опустить в тех контекстах, где анализатор запроса может понять, что буквальное значение должно иметь тип boolean.

Типы перечислений (enum) определяют статический упорядоченный набор значений, так же как и типы enum, существующие в ряде языков программирования. В качестве перечисления можно привести дни недели или набор состояний.

8.7.1. Объявление перечислений
Тип перечислений создаются с помощью команды CREATE TYPE, например так:

CREATE TYPE mood AS ENUM ('sad', 'ok', 'happy');
Созданные типы enum можно использовать в определениях таблиц и функций, как и любые другие:

CREATE TYPE mood AS ENUM ('sad', 'ok', 'happy');
CREATE TABLE person (
    name text,
    current_mood mood
);
INSERT INTO person VALUES ('Moe', 'happy');
SELECT * FROM person WHERE current_mood = 'happy';
 name | current_mood 
------+--------------
 Moe  | happy
(1 row)
8.7.2. Порядок
Порядок значений в перечислении определяется последовательностью, в которой были указаны значения при создании типа. Перечисления поддерживаются всеми стандартными операторами сравнения и связанными агрегатными функциями. Например:

    INSERT INTO person VALUES ('Larry', 'sad');
    INSERT INTO person VALUES ('Curly', 'ok');
    SELECT * FROM person WHERE current_mood > 'sad';
     name  | current_mood 
    -------+--------------
     Moe   | happy
     Curly | ok
    (2 rows)
    
    SELECT * FROM person WHERE current_mood > 'sad' ORDER BY current_mood;
     name  | current_mood 
    -------+--------------
     Curly | ok
     Moe   | happy
    (2 rows)
    
    SELECT name
    FROM person
    WHERE current_mood = (SELECT MIN(current_mood) FROM person);
     name  
    -------
     Larry
    (1 row)
### 8.7.3. Безопасность типа
Все типы перечислений считаются уникальными и поэтому значения разных типов нельзя сравнивать. Взгляните на этот пример:

    CREATE TYPE happiness AS ENUM ('happy', 'very happy', 'ecstatic');
    CREATE TABLE holidays (
        num_weeks integer,
        happiness happiness
    );
    INSERT INTO holidays(num_weeks,happiness) VALUES (4, 'happy');
    INSERT INTO holidays(num_weeks,happiness) VALUES (6, 'very happy');
    INSERT INTO holidays(num_weeks,happiness) VALUES (8, 'ecstatic');
    INSERT INTO holidays(num_weeks,happiness) VALUES (2, 'sad');
    ОШИБКА:  неверное значение для перечисления happiness: "sad"
    
    SELECT person.name, holidays.num_weeks FROM person, holidays
      WHERE person.current_mood = holidays.happiness;
    ОШИБКА:  оператор не существует: mood = happiness
Если вам действительно нужно сделать что-то подобное, вы можете либо реализовать собственный оператор, либо явно преобразовать типы в запросе:

    SELECT person.name, holidays.num_weeks FROM person, holidays
      WHERE person.current_mood::text = holidays.happiness::text;
     name | num_weeks 
    ------+-----------
     Moe  |         4
    (1 row)
### 8.7.4. Тонкости реализации
В метках значений регистр имеет значение, т. е. 'happy' и 'HAPPY' — не одно и то же. Также в метках имеют значение пробелы.

Хотя типы-перечисления предназначены прежде всего для статических наборов значений, имеется возможность добавлять новые значения в существующий тип-перечисление и переименовывать значения (см. ALTER TYPE). Однако удалять существующие значения из перечисления, а также изменять их порядок, нельзя — для получения нужного результата придётся удалить и воссоздать это перечисление.

Значение enum занимает на диске 4 байта. Длина текстовой метки значения ограничена параметром компиляции NAMEDATALEN; в стандартных сборках Postgres Pro он ограничивает длину 63 байтами.

Сопоставления внутренних значений enum с текстовыми метками хранятся в системном каталоге pg_enum. Он может быть полезен в ряде случаев.

## 8.8. Геометрические типы

Геометрические типы данных представляют объекты в двумерном пространстве. Все существующие в Postgres Pro геометрические типы перечислены в Таблице 8.20.

Таблица 8.20. Геометрические типы

| Имя                                      | Размер      | Описание                                | Представление                            |
|------------------------------------------|-------------|-----------------------------------------|------------------------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">point</code> | 16 байт     | Точка на плоскости                      | (x,y)                                    |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">line</code> | 32 байта    | Бесконечная прямая                      | {A,B,C}                                  |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">lseg</code> | 32 байта    | Отрезок                                 | ((x1,y1),(x2,y2))                        |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">box</code> | 32 байта    | Прямоугольник                           | ((x1,y1),(x2,y2))                        |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">path</code> | 16+16n байт | Закрытый путь (подобный многоугольнику) | ((x1,y1),...)                            |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">path</code> | 16+16n байт | Открытый путь                           | [(x1,y1),...]                            |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">polygon</code> | 40+16n байт | Многоугольник (подобный закрытому пути) | ((x1,y1),...)                            |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">circle</code> | 24 байта    | Окружность                              | &lt;(x,y),r&gt; (центр окружности и радиус) |

Для выполнения различных геометрических операций, в частности масштабирования, вращения и определения пересечений, PostgreSQL предлагает богатый набор функций и операторов. Они рассматриваются в Разделе 9.11.

### 8.8.1. Точки
Точки — это основной элемент, на базе которого строятся все остальные геометрические типы. Значения типа point записываются в одном из двух форматов:

    ( x , y )
      x , y
где x и y — координаты точки на плоскости, выраженные числами с плавающей точкой.

Выводятся точки в первом формате.

### 8.8.2. Прямые
Прямые представляются линейным уравнением Ax + By + C = 0, где A и B не равны 0. Значения типа line вводятся и выводятся в следующем виде:

    { A, B, C }
Кроме того, для ввода может использоваться любая из этих форм:

    [ ( x1 , y1 ) , ( x2 , y2 ) ]
    ( ( x1 , y1 ) , ( x2 , y2 ) )
      ( x1 , y1 ) , ( x2 , y2 )
        x1 , y1   ,   x2 , y2
где (x1,y1) и (x2,y2) — две различные точки на данной прямой.

### 8.8.3. Отрезки
Отрезок представляется парой точек, определяющих концы отрезка. Значения типа lseg записываются в одной из следующих форм:

    [ ( x1 , y1 ) , ( x2 , y2 ) ]
    ( ( x1 , y1 ) , ( x2 , y2 ) )
      ( x1 , y1 ) , ( x2 , y2 )
        x1 , y1   ,   x2 , y2
где (x1,y1) и (x2,y2) — концы отрезка.

Выводятся отрезки в первом формате.

### 8.8.4. Прямоугольники
Прямоугольник представляется двумя точками, находящимися в противоположных его углах. Значения типа box записываются в одной из следующих форм:

    ( ( x1 , y1 ) , ( x2 , y2 ) )
      ( x1 , y1 ) , ( x2 , y2 )
        x1 , y1   ,   x2 , y2
где (x1,y1) и (x2,y2) — противоположные углы прямоугольника.

Выводятся прямоугольники во второй форме.

Во вводимом значении могут быть указаны любые два противоположных угла, но затем они будут упорядочены, так что внутри сохранятся правый верхний и левый нижний углы, в таком порядке.

### 8.8.5. Пути
Пути представляют собой списки соединённых точек. Пути могут быть закрытыми, когда подразумевается, что первая и последняя точка в списке соединены, или открытыми, в противном случае.

Значения типа path записываются в одной из следующих форм:

    [ ( x1 , y1 ) , ... , ( xn , yn ) ]
    ( ( x1 , y1 ) , ... , ( xn , yn ) )
      ( x1 , y1 ) , ... , ( xn , yn )
      ( x1 , y1   , ... ,   xn , yn )
        x1 , y1   , ... ,   xn , yn
где точки задают узлы сегментов, составляющих путь. Квадратные скобки ([]) указывают, что путь открытый, а круглые (()) — закрытый. Когда внешние скобки опускаются, как в показанных выше последних трёх формах, считается, что путь закрытый.

Пути выводятся в первой или второй форме, в соответствии с типом.

### 8.8.6. Многоугольники
Многоугольники представляются списками точек (вершин). Многоугольники похожи на закрытые пути, но хранятся в другом виде и для работы с ними предназначен отдельный набор функций.

Значения типа polygon записываются в одной из следующих форм:

    ( ( x1 , y1 ) , ... , ( xn , yn ) )
      ( x1 , y1 ) , ... , ( xn , yn )
      ( x1 , y1   , ... ,   xn , yn )
        x1 , y1   , ... ,   xn , yn
где точки задают узлы сегментов, образующих границу многоугольника.

Выводятся многоугольники в первом формате.

### 8.8.7. Окружности
Окружности задаются координатами центра и радиусом. Значения типа circle записываются в одном из следующих форматов:

    < ( x , y ) , r >
    ( ( x , y ) , r )
      ( x , y ) , r
        x , y   , r
где (x,y) — центр окружности, а r — её радиус.

Выводятся окружности в первом формате.

## 8.9. Типы, описывающие сетевые адреса

Postgres Pro предлагает типы данных для хранения адресов IPv4, IPv6 и MAC, показанные в Таблице 8.21. Для хранения сетевых адресов лучше использовать эти типы, а не простые текстовые строки, так как Postgres Pro проверяет вводимые значения данных типов и предоставляет специализированные операторы и функции для работы с ними (см. Раздел 9.12).

Таблица 8.21. Типы, описывающие сетевые адреса

| Имя                                      | Размер        | Описание                     |
|------------------------------------------|---------------|------------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">cidr</code> | 7 или 19 байт | Сети IPv4 и IPv6             |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">inet</code> | 7 или 19 байт | Узлы и сети IPv4 и IPv6      |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">macaddr</code> | 6 байт        | MAC-адреса                   |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">macaddr8</code> | 8 байт        | MAC-адреса (в формате EUI-64 |

При сортировке типов inet и cidr, адреса IPv4 всегда идут до адресов IPv6, в том числе адреса IPv4, включённые в IPv6 или сопоставленные с ними, например ::10.2.3.4 или ::ffff:10.4.3.2.

### 8.9.1. inet
Тип inet содержит IPv4- или IPv6-адрес узла и может также содержать его подсеть, всё в одном поле. Подсеть представляется числом бит, определяющих адрес сети в адресе узла (или «маску сети»). Если маска сети равна 32 для адреса IPv4, такое значение представляет не подсеть, а определённый узел. Адреса IPv6 имеют длину 128 бит, поэтому уникальный адрес узла задаётся с маской 128 бит. Заметьте, что когда нужно, чтобы принимались только адреса сетей, следует использовать тип cidr, а не inet.

Вводимые значения такого типа должны иметь формат IP-адрес/y, где IP-адрес — адрес IPv4 или IPv6, а y — число бит в маске сети. Если компонент /y отсутствует, маска сети считается равной 32 для IPv4 и 128 для IPv6, так что это значение будет представлять один узел. При выводе компонент /y опускается, если сетевой адрес определяет адрес одного узла.

### 8.9.2. cidr
Тип cidr содержит определение сети IPv4 или IPv6. Входные и выходные форматы соответствуют соглашениям CIDR (Classless Internet Domain Routing, Бесклассовая межсетевая адресация). Определение сети записывается в формате IP-адрес/y, где IP-адрес — адрес сети IPv4 или IPv6, а y — число бит в маске сети. Если y не указывается, это значение вычисляется по старой классовой схеме нумерации сетей, но при этом оно может быть увеличено, чтобы в него вошли все байты введённого адреса. Если в сетевом адресе справа от маски сети окажутся биты со значением 1, он будет считаться ошибочным.

В Таблице 8.22 показаны несколько примеров адресов.

Таблица 8.22. Примеры допустимых значений типа cidr

| Вводимое значение cidr                | Выводимое значение cidr               | abbrev(cidr)                      |
|---------------------------------------|---------------------------------------|-----------------------------------|
| 192.168.100.128/25                    | 192.168.100.128/25                    | 192.168.100.128/25                |
| 192.168/24                            | 192.168.0.0/24                        | 192.168.0/24                      |
| 192.168/25                            | 192.168.0.0/25                        | 192.168.0.0/25                    |
| 192.168.1                             | 192.168.1.0/24                        | 192.168.1/24                      |
| 192.168                               | 192.168.0.0/24                        | 192.168.0/24                      |
| 128.1                                 | 128.1.0.0/16                          | 128.1/16                          |
| 128                                   | 128.0.0.0/16                          | 128.0/16                          |
| 128.1.2                               | 128.1.2.0/24                          | 128.1.2/24                        |
| 10.1.2                                | 10.1.2.0/24                           | 10.1.2/24                         |
| 10.1                                  | 10.1.0.0/16                           | 10.1/16                           |
| 10                                    | 10.0.0.0/8                            | 10/8                              |
| 10.1.2.3/32                           | 10.1.2.3/32                           | 10.1.2.3/32                       |
| 2001:4f8:3:ba::/64                    | 2001:4f8:3:ba::/64                    | 2001:4f8:3:ba::/64                |
| 2001:4f8:3:ba:2e0:81ff:fe22:​d1f1/128 | 2001:4f8:3:ba:2e0:81ff:fe22:​d1f1/128 | 2001:4f8:3:ba:2e0:81ff:fe22:​d1f1 |
| ::ffff:1.2.3.0/120                    | ::ffff:1.2.3.0/120                    | ::ffff:1.2.3/120                  |
| ::ffff:1.2.3.0/128                    | ::ffff:1.2.3.0/128                    | ::ffff:1.2.3.0/128    
|

### 8.9.3. Различия inet и cidr
Существенным различием типов данных inet и cidr является то, что inet принимает значения с ненулевыми битами справа от маски сети, а cidr — нет. Например, значение 192.168.0.1/24 является допустимым для типа inet, но не для cidr.

>Подсказка
Если вас не устраивает выходной формат значений inet или cidr, попробуйте функции host, text и abbrev.

### 8.9.4. macaddr
Тип macaddr предназначен для хранения MAC-адреса, примером которого является адрес сетевой платы Ethernet (хотя MAC-адреса применяются и для других целей). Вводимые значения могут задаваться в следующих форматах:

    '08:00:2b:01:02:03'
    '08-00-2b-01-02-03'
    '08002b:010203'
    '08002b-010203'
    '0800.2b01.0203'
    '0800-2b01-0203'
    '08002b010203'
Все эти примеры определяют один и тот же адрес. Шестнадцатеричные цифры от a до f могут быть и в нижнем, и в верхнем регистре. Выводятся MAC-адреса всегда в первой форме.

Стандарт IEEE 802-2001 считает канонической формой MAC-адресов вторую (с минусами), а в первой (с двоеточиями) предполагает обратный порядок бит, так что 08-00-2b-01-02-03 = 01:00:4D:08:04:0C. В настоящее время этому соглашению практически никто не следует, и уместно оно было только для устаревших сетевых протоколов (таких как Token Ring). Postgres Pro не меняет порядок бит и во всех принимаемых форматах подразумевается традиционный порядок LSB.

Последние пять входных форматов не описаны ни в каком стандарте.

### 8.9.5. macaddr8
Тип macaddr8 хранит MAC-адреса в формате EUI-64, применяющиеся, например, для аппаратных адресов плат Ethernet (хотя MAC-адреса используются и для других целей). Этот тип может принять и 6-байтовые, и 8-байтовые адреса MAC и сохраняет их в 8 байтах. MAC-адреса, заданные в 6-байтовом формате, хранятся в формате 8 байт, а 4-ый и 5-ый байт содержат FF и FE, соответственно. Заметьте, что для IPv6 используется модифицированный формат EUI-64, в котором 7-ой бит должен быть установлен в 1 после преобразования из EUI-48. Для выполнения этого изменения предоставляется функция macaddr8_set7bit. Вообще говоря, этот тип принимает любые строки, состоящие из пар шестнадцатеричных цифр (выровненных по границам байт), которые могут согласованно разделяться одинаковыми символами ':', '-' или '.'. Шестнадцатеричных цифр должно быть либо 16 (8 байт), либо 12 (6 байт). Ведущие и замыкающие пробелы игнорируются. Ниже показаны примеры допустимых входных строк:

    '08:00:2b:01:02:03:04:05'
    '08-00-2b-01-02-03-04-05'
    '08002b:0102030405'
    '08002b-0102030405'
    '0800.2b01.0203.0405'
    '0800-2b01-0203-0405'
    '08002b01:02030405'
    '08002b0102030405'
Во всех этих примерах задаётся один и тот же адрес. Для цифр с a по f принимаются буквы и в верхнем, и в нижнем регистре. Вывод всегда представляется в первом из показанных форматов. Последние шесть входных форматов, показанных выше, не являются стандартизированными. Чтобы преобразовать традиционный 48-битный MAC-адрес в формате EUI-48 в модифицированный формат EUI-64 для включения в состав адреса IPv6 в качестве адреса узла, используйте функцию macaddr8_set7bit:

    SELECT macaddr8_set7bit('08:00:2b:01:02:03');
    
        macaddr8_set7bit     
    -------------------------
     0a:00:2b:ff:fe:01:02:03
    (1 row)
    
## 8.10. Битовые строки
Битовые строки представляют собой последовательности из 1 и 0. Их можно использовать для хранения или отображения битовых масок. В SQL есть два битовых типа: bit(n) и bit varying(n), где n — положительное целое число.

Длина значения типа bit должна в точности равняться n; при попытке сохранить данные длиннее или короче произойдёт ошибка. Данные типа bit varying могут иметь переменную длину, но не превышающую n; строки большей длины не будут приняты. Запись bit без указания длины равнозначна записи bit(1), тогда как bit varying без указания длины подразумевает строку неограниченной длины.

>Примечание
При попытке привести значение битовой строки к типу bit(n), оно будет усечено или дополнено нулями справа до длины ровно n бит, ошибки при этом не будет. Подобным образом, если явно привести значение битовой строки к типу bit varying(n), она будет усечена справа, если её длина превышает n бит.

Синтаксис констант битовых строк описан в Подразделе 4.1.2.5, а все доступные битовые операторы и функции перечислены в Разделе 9.6.

Пример 8.3. Использование битовых строк

    CREATE TABLE test (a BIT(3), b BIT VARYING(5));
    INSERT INTO test VALUES (B'101', B'00');
    INSERT INTO test VALUES (B'10', B'101');

ОШИБКА:  длина битовой строки (2) не соответствует типу bit(3)

    INSERT INTO test VALUES (B'10'::bit(3), B'101');
    SELECT * FROM test;
    
      a  |  b
    -----+-----
     101 | 00
     100 | 101

Для хранения битовой строки используется по 1 байту для каждой группы из 8 бит, плюс 5 или 8 байт дополнительно в зависимости от длины строки (но длинные строки могут быть сжаты или вынесены отдельно, как описано в Разделе 8.3 применительно к символьным строкам).   

## 8.11. Типы, предназначенные для текстового поиска

Postgres Pro предоставляет два типа данных для поддержки полнотекстового поиска. Текстовым поиском называется операция анализа набора документов с текстом на естественном языке, в результате которой находятся фрагменты, наиболее соответствующие запросу. Тип tsvector представляет документ в виде, оптимизированном для текстового поиска, а tsquery представляет запрос текстового поиска в подобном виде. Более подробно это описывается в Главе 12, а все связанные функции и операторы перечислены в Разделе 9.13.

### 8.11.1. tsvector
Значение типа tsvector содержит отсортированный список неповторяющихся лексем, т. е. слов, нормализованных так, что все словоформы сводятся к одной (подробнее это описано в Главе 12). Сортировка и исключение повторяющихся слов производится автоматически при вводе значения, как показано в этом примере:

    SELECT 'a fat cat sat on a mat and ate a fat rat'::tsvector;
                          tsvector
    ----------------------------------------------------
     'a' 'and' 'ate' 'cat' 'fat' 'mat' 'on' 'rat' 'sat'
Для представления в виде лексем пробелов или знаков препинания их нужно заключить в апострофы:

    SELECT $$the lexeme '    ' contains spaces$$::tsvector;
                     tsvector                  
    -------------------------------------------
     '    ' 'contains' 'lexeme' 'spaces' 'the'
(В данном и следующих примерах мы используем строку в долларах, чтобы не дублировать все апострофы в таких строках.) При этом включаемый апостроф или обратную косую черту нужно продублировать:

    SELECT $$the lexeme 'Joe''s' contains a quote$$::tsvector;
                        tsvector                    
    ------------------------------------------------
     'Joe''s' 'a' 'contains' 'lexeme' 'quote' 'the'
Также для лексем можно указать их целочисленные позиции:

    SELECT 'a:1 fat:2 cat:3 sat:4 on:5 a:6 mat:7 and:8 ate:9 a:10 fat:11
      rat:12'::tsvector;
                                      tsvector
    ---------------------------------------------------------------------------
     'a':1,6,10 'and':8 'ate':9 'cat':3 'fat':2,11 'mat':7 'on':5 'rat':12
      'sat':4
Позиция обычно указывает положение исходного слова в документе. Информация о расположении слов затем может использоваться для оценки близости. Позиция может задаваться числом от 1 до 16383; большие значения просто заменяются на 16383. Если для одной лексемы дважды указывается одно положение, такое повторение отбрасывается.

Лексемам, для которых заданы позиции, также можно назначить вес, выраженный буквами A, B, C или D. Вес D подразумевается по умолчанию и поэтому он не показывается при выводе:

    SELECT 'a:1A fat:2B,4C cat:5D'::tsvector;
              tsvector          
    ----------------------------
     'a':1A 'cat':5 'fat':2B,4C
Веса обычно применяются для отражения структуры документа, например для придания особого значения словам в заголовке по сравнению со словами в обычном тексте. Назначенным весам можно сопоставить числовые приоритеты в функциях ранжирования результатов.

Важно понимать, что тип tsvector сам по себе не выполняет нормализацию слов; предполагается, что в сохраняемом значении слова уже нормализованы приложением. Например:

    SELECT 'The Fat Rats'::tsvector;
          tsvector      
    --------------------
     'Fat' 'Rats' 'The'
Для большинства англоязычных приложений приведённые выше слова будут считаться ненормализованными, но для tsvector это не важно. Поэтому исходный документ обычно следует обработать функцией to_tsvector, нормализующей слова для поиска:

SELECT to_tsvector('english', 'The Fat Rats');
   to_tsvector   
-----------------
 'fat':2 'rat':3
И это подробнее описано в Главе 12.

### 8.11.2. tsquery
Значение tsquery содержит искомые лексемы, объединяемые логическими операторами & (И), | (ИЛИ) и ! (НЕ), а также оператором поиска фраз <-> (ПРЕДШЕСТВУЕТ). Также допускается вариация оператора ПРЕДШЕСТВУЕТ вида <N>, где N — целочисленная константа, задающая расстояние между двумя искомыми лексемами. Запись оператора <-> равнозначна <1>.

Для группировки операторов могут использоваться скобки. Без скобок эти операторы имеют разные приоритеты, в порядке убывания: ! (НЕ), <-> (ПРЕДШЕСТВУЕТ), & (И) и | (ИЛИ).

Несколько примеров:

    SELECT 'fat & rat'::tsquery;
        tsquery    
    ---------------
     'fat' & 'rat'
    
    SELECT 'fat & (rat | cat)'::tsquery;
              tsquery          
    ---------------------------
     'fat' & ( 'rat' | 'cat' )
    
    SELECT 'fat & rat & ! cat'::tsquery;
            tsquery         
    ------------------------
     'fat' & 'rat' & !'cat'
Лексемам в tsquery можно дополнительно сопоставить буквы весов, при этом они будут соответствовать только тем лексемам в tsvector, которые имеют какой-либо из этих весов:

    SELECT 'fat:ab & cat'::tsquery;
        tsquery
    ------------------
     'fat':AB & 'cat'
Кроме того, в лексемах tsquery можно использовать знак * для поиска по префиксу:

    SELECT 'super:*'::tsquery;
      tsquery  
    -----------
     'super':*
Этот запрос найдёт все слова в tsvector, начинающиеся с приставки «super».

Апострофы в лексемах этого типа можно использовать так же, как и в лексемах в tsvector; и так же, как и для типа tsvector, необходимая нормализация слова должна выполняться до приведения значения к типу tsquery. Для такой нормализации удобно использовать функцию to_tsquery:

    SELECT to_tsquery('Fat:ab & Cats');
        to_tsquery    
    ------------------
     'fat':AB & 'cat'
Заметьте, что функция to_tsquery будет обрабатывать префиксы подобно другим словам, поэтому следующее сравнение возвращает true:

    SELECT to_tsvector( 'postgraduate' ) @@ to_tsquery( 'postgres:*' );
     ?column?
    ----------
     t
так как postgres преобразуется стеммером в postgr:

    SELECT to_tsvector( 'postgraduate' ), to_tsquery( 'postgres:*' );
      to_tsvector  | to_tsquery
    ---------------+------------
     'postgradu':1 | 'postgr':*
     
и эта приставка находится в преобразованной форме слова postgraduate.

## 8.12. Тип UUID
Тип данных uuid сохраняет универсальные уникальные идентификаторы (Universally Unique Identifiers, UUID), определённые в RFC 4122, ISO/IEC 9834-8:2005 и связанных стандартах. (В некоторых системах это называется GUID, глобальным уникальным идентификатором.) Этот идентификатор представляет собой 128-битное значение, генерируемое специальным алгоритмом, практически гарантирующим, что этим же алгоритмом оно не будет получено больше нигде в мире. Таким образом, эти идентификаторы будут уникальными и в распределённых системах, а не только в единственной базе данных, как значения генераторов последовательностей.

UUID записывается в виде последовательности шестнадцатеричных цифр в нижнем регистре, разделённых знаками минуса на несколько групп, в таком порядке: группа из 8 цифр, за ней три группы из 4 цифр и, наконец, группа из 12 цифр, что в сумме составляет 32 цифры и представляет 128 бит. Пример UUID в этом стандартном виде:

    a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11
Postgres Pro также принимает альтернативные варианты: цифры в верхнем регистре, стандартную запись, заключённую в фигурные скобки, запись без минусов или с минусами, разделяющими любые группы из четырёх цифр. Например:

    A0EEBC99-9C0B-4EF8-BB6D-6BB9BD380A11
    {a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11}
    a0eebc999c0b4ef8bb6d6bb9bd380a11
    a0ee-bc99-9c0b-4ef8-bb6d-6bb9-bd38-0a11
    {a0eebc99-9c0b4ef8-bb6d6bb9-bd380a11}
Выводится значение этого типа всегда в стандартном виде.

В Postgres Pro встроены функции хранения и сравнения идентификаторов UUID, но нет внутренней функции генерирования UUID, потому что не существует какого-то единственного алгоритма, подходящего для всех приложений. Сгенерировать UUID можно с помощью дополнительного модуля uuid-ossp, в котором реализованы несколько стандартных алгоритмов, а можно воспользоваться модулем pgcrypto, где тоже есть функция генерирования случайных UUID. Кроме того, можно сделать это в клиентском приложении или в другой библиотеке, подключённой на стороне сервера.

## 8.13. Тип XML

Тип xml предназначен для хранения XML-данных. Его преимущество по сравнению с обычным типом text в том, что он проверяет вводимые значения на допустимость по правилам XML и для работы с ним есть типобезопасные функции; см. Раздел 9.14. Для использования этого типа дистрибутив должен быть скомпилирован в конфигурации configure --with-libxml.

Тип xml может сохранять правильно оформленные «документы», в соответствии со стандартом XML, а также фрагменты «содержимого», определяемые как менее ограниченные «узлы документа» в модели данных XQuery и XPath. Другими словами, это означает, что во фрагментах содержимого может быть несколько элементов верхнего уровня или текстовых узлов. Является ли некоторое значение типа xml полным документом или фрагментом содержимого, позволяет определить выражение xml-значение IS DOCUMENT.

Информацию о совместимости и ограничениях типа данных xml можно найти в Разделе D.3.

### 8.13.1. Создание XML-значений
Чтобы получить значение типа xml из текстовой строки, используйте функцию xmlparse:

    XMLPARSE ( { DOCUMENT | CONTENT } value)
Примеры:

    XMLPARSE (DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>')
    XMLPARSE (CONTENT 'abc<foo>bar</foo><bar>foo</bar>')
Хотя в стандарте SQL описан только один способ преобразования текстовых строк в XML-значения, специфический синтаксис Postgres Pro:

    xml '<foo>bar</foo>'
    '<foo>bar</foo>'::xml
тоже допустим.

Тип xml не проверяет вводимые значения по схеме DTD (Document Type Declaration, Объявления типа документа), даже если в них присутствуют ссылка на DTD. В настоящее время в PostgreSQL также нет встроенной поддержки других разновидностей схем, например XML Schema.

Обратная операция, получение текстовой строки из xml, выполняется с помощью функции xmlserialize:

    XMLSERIALIZE ( { DOCUMENT | CONTENT } значение AS тип )
Здесь допустимый тип — character, character varying или text (или их псевдонимы). И в данном случае стандарт SQL предусматривает только один способ преобразования xml в тип текстовых строк, но Postgres Pro позволяет просто привести значение к нужному типу.

При преобразовании текстовой строки в тип xml или наоборот без использования функций XMLPARSE и XMLSERIALIZE, выбор режима DOCUMENT или CONTENT определяется параметром конфигурации сеанса «XML option», установить который можно следующей стандартной командой:

    SET XML OPTION { DOCUMENT | CONTENT };
или такой командой в духе Postgres Pro:

    SET xmloption TO { DOCUMENT | CONTENT };
По умолчанию этот параметр имеет значение CONTENT, так что допускаются все формы XML-данных.

### 8.13.2. Обработка кодировки
Если на стороне сервера и клиента и в XML-данных используются разные кодировки символов, с этим могут возникать проблемы. Когда запросы передаются на сервер, а их результаты возвращаются клиенту в обычном текстовом режиме, Postgres Pro преобразует все передаваемые текстовые данные в кодировку для соответствующей стороны; см. Раздел 22.3. В том числе это происходит и со строковыми представлениями XML-данных, подобными тем, что показаны в предыдущих примерах. Обычно это означает, что объявления кодировки, содержащиеся в XML-данных, могут не соответствовать действительности, когда текстовая строка преобразуется из одной кодировки в другую при передаче данных между клиентом и сервером, так как подобные включённые в данные объявления не будут изменены автоматически. Для решения этой проблемы объявления кодировки, содержащиеся в текстовых строках, вводимых в тип xml, просто игнорируются и предполагается, что XML-содержимое представлено в текущей кодировке сервера. Как следствие, для правильной обработки таких строк с XML-данными клиент должен передавать их в своей текущей кодировке. Для сервера не важно, будет ли клиент для этого преобразовывать документы в свою кодировку, или изменит её, прежде чем передавать ему данные. При выводе значения типа xml не содержат объявления кодировки, а клиент должен предполагать, что все данные поступают в его текущей кодировке.

Если параметры запроса передаются на сервер и он возвращает результаты клиенту в двоичном режиме, кодировка символов не преобразуется, так что возникает другая ситуация. В этом случае объявление кодировки в XML принимается во внимание, а если его нет, то предполагается, что данные закодированы в UTF-8 (это соответствует стандарту XML; заметьте, что Postgres Pro не поддерживает UTF-16). При выводе в данные будет добавлено объявление кодировки, выбранной на стороне клиента (но если это UTF-8, объявление будет опущено).

Само собой, XML-данные в Postgres Pro будут обрабатываться гораздо эффективнее, когда и в XML-данных, и на стороне клиента, и на стороне сервера используется одна кодировка. Так как внутри XML-данные представляются в UTF-8, оптимальный вариант, когда на сервере также выбрана кодировка UTF-8.

>Внимание
Некоторые XML-функции способны работать исключительно с ASCII-данными, если кодировка сервера не UTF-8. В частности, это известная особенность функций xmltable() и xpath().

### 8.13.3. Обращение к XML-значениям
Тип xml отличается от других тем, что для него не определены никакие операторы сравнения, так как чётко определённого и универсального алгоритма сравнения XML-данных не существует. Одно из следствий этого — нельзя отфильтровать строки таблицы, сравнив столбец xml с искомым значением. Поэтому обычно XML-значения должны дополняться отдельным ключевым полем, например ID. Можно также сравнивать XML-значения, преобразовав их сначала в текстовые строки, но заметьте, что с учётом специфики XML-данных этот метод практически бесполезен.

Из-за отсутствия операторов сравнения для типа xml, для столбца этого типа также нельзя создать индекс. Поэтому, когда требуется быстрый поиск в XML данных, обойти это ограничение можно, приведя данные к типу текстовой строки и проиндексировав эти строки, либо проиндексировав выражение XPath. Конечно сам запрос при этом следует изменить, чтобы поиск выполнялся по индексированному выражению.

Для ускорения поиска в XML-данных также можно использовать функции полнотекстового поиска в Postgres Pro. Однако это требует определённой подготовки данных, что дистрибутив Postgres Pro пока не поддерживает.

## 8.14. Типы JSON

Типы JSON предназначены для хранения данных JSON (JavaScript Object Notation, Запись объекта JavaScript) согласно стандарту RFC 7159. Такие данные можно хранить и в типе text, но типы JSON лучше тем, что проверяют, соответствует ли вводимое значение формату JSON. Для работы с ними есть также несколько специальных функций и операторов; см. Раздел 9.15.

В Postgres Pro имеются два типа для хранения данных JSON: json и jsonb. Для реализации эффективного механизма запросов к этим типам данных в Postgres Pro также имеется тип jsonpath, описанный в Подразделе 8.14.6.

Типы данных json и jsonb принимают на вход почти одинаковые наборы значений, а отличаются они главным образом с точки зрения эффективности. Тип json сохраняет точную копию введённого текста, которую функции обработки должны разбирать заново при каждом выполнении запроса, тогда как данные jsonb сохраняются в разобранном двоичном формате, что несколько замедляет ввод из-за преобразования, но значительно ускоряет обработку, не требуя многократного разбора текста. Кроме того, jsonb поддерживает индексацию, что тоже может быть очень полезно.

Так как тип json сохраняет точную копию введённого текста, он сохраняет семантически незначащие пробелы между элементами, а также порядок ключей в JSON-объектах. И если JSON-объект внутри содержит повторяющиеся ключи, этот тип сохранит все пары ключ/значение. (Функции обработки будут считать действительной последнюю пару.) Тип jsonb, напротив, не сохраняет пробелы, порядок ключей и значения с дублирующимися ключами. Если во входных данных оказываются дублирующиеся ключи, сохраняется только последнее значение.

Для большинства приложений предпочтительнее хранить данные JSON в типе jsonb (если нет особых противопоказаний, например важны прежние предположения о порядке ключей объектов).

Postgres Pro позволяет использовать только одну кодировку символов в базе данных, поэтому данные JSON не будут полностью соответствовать спецификации, если кодировка базы данных не UTF-8. При этом нельзя будет вставить символы, непредставимые в кодировке сервера, и наоборот, допустимыми будут символы, представимые в кодировке сервера, но не в UTF-8.

RFC 7159 разрешает включать в строки JSON спецпоследовательности Unicode в виде \uXXXX. В функцию ввода для типа json эти спецпоследовательности допускаются вне зависимости от кодировки базы данных, и проверяется только правильность их синтаксиса (за \u должны следовать четыре шестнадцатеричных цифры). Однако, функция ввода для типа jsonb более строгая: она не допускает спецпоследовательности Unicode для не ASCII-символов (символов после U+007F), если кодировка базы данных не UTF8. Тип jsonb также не принимает \u0000 (так как это значение не может быть представлено в типе text Postgres Pro), и требует, чтобы суррогатные пары Unicode использовались для представления символов вне основной многоязыковой плоскости (BMP) правильно. Корректные спецпоследовательности Unicode преобразуются для хранения в соответствующий символ ASCII или UTF8 (это подразумевает сворачивание суррогатных пар в один символ).

>Примечание
Многие из функций обработки JSON, описанные в Разделе 9.15, преобразуют спецпоследовательности Unicode в обычные символы, поэтому могут выдавать подобные ошибки, даже если им на вход поступает тип json, а не jsonb. То, что функция ввода в тип json не производит этих проверок, можно считать историческим артефактом, хотя это и позволяет просто сохранять (но не обрабатывать) в JSON спецкоды Unicode в базе данных с кодировкой не UTF8. Вообще же, по возможности следует избегать смешения спецкодов Unicode в JSON с кодировкой базой данных не UTF8.

При преобразовании вводимого текста JSON в тип jsonb, примитивные типы, описанные в RFC 7159, по сути отображаются в собственные типы Postgres Pro как показано в Таблице 8.23. Таким образом, к содержимому типа jsonb предъявляются некоторые дополнительные требования, продиктованные ограничениями представления нижележащего типа данных, которые не распространяются ни на тип json, ни на формат JSON вообще. В частности, тип jsonb не принимает числа, выходящие за диапазон типа данных Postgres Pro numeric, тогда как с json такого ограничения нет. Такие ограничения, накладываемые реализацией, допускаются согласно RFC 7159. Однако, на практике такие проблемы более вероятны в других реализациях, так как обычно примитивный тип JSON number представляется в виде числа с плавающей точкой двойной точности IEEE 754 (что RFC 7159 явно признаёт и допускает). При использовании JSON в качестве формата обмена данными с такими системами следует учитывать риски потери точности чисел, хранившихся в Postgres Pro.

И напротив, как показано в таблице, есть некоторые ограничения в формате ввода примитивных типов JSON, не актуальные для соответствующих типов Postgres Pro.

Таблица 8.23. Примитивные типы JSON и соответствующие им типы Postgres Pro

| Примитивный тип JSON                     | Тип Postgres Pro                         | Замечания                                |
|------------------------------------------|------------------------------------------|------------------------------------------|
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">string</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">text</code> | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">\u0000</code><span> </span>не допускается, как не ASCII символ, если кодировка базы данных не UTF8 |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">number</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">numeric</code> | Значения<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">NaN</code><span> </span>и<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">infinity</code><span> </span>не допускаются |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">boolean</code> | <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">boolean</code> | Допускаются только варианты<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">true</code><span> </span>и<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">false</code><span> </span>(в нижнем регистре) |
| <code class="type" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">null</code> | (нет)                                    | <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">NULL</code><span> </span>в SQL имеет другой смысл |

### 8.14.1. Синтаксис вводимых и выводимых значений JSON
Синтаксис ввода/вывода типов данных JSON соответствует стандарту RFC 7159.

Примеры допустимых выражений с типом json (или jsonb):

    -- Простое скалярное/примитивное значение
    -- Простыми значениями могут быть числа, строки в кавычках, true, false или null
    SELECT '5'::json;

    -- Массив из нуля и более элементов (элементы могут быть разных типов)
    SELECT '[1, 2, "foo", null]'::json;

    -- Объект, содержащий пары ключей и значений
    -- Заметьте, что ключи объектов — это всегда строки в кавычках
    SELECT '{"bar": "baz", "balance": 7.77, "active": false}'::json;

    -- Массивы и объекты могут вкладываться произвольным образом
    SELECT '{"foo": [true, "bar"], "tags": {"a": 1, "b": null}}'::json;
Как было сказано ранее, когда значение JSON вводится и затем выводится без дополнительной обработки, тип json выводит тот же текст, что поступил на вход, а jsonb не сохраняет семантически незначащие детали, такие как пробелы. Например, посмотрите на эти различия:

    SELECT '{"bar": "baz", "balance": 7.77, "active":false}'::json;
                        json                       
    -------------------------------------------------
    {"bar": "baz", "balance": 7.77, "active":false}
    (1 row)

    SELECT '{"bar": "baz", "balance": 7.77, "active":false}'::jsonb;
                        jsonb                       
    --------------------------------------------------
    {"bar": "baz", "active": false, "balance": 7.77}
    (1 row)
Первая семантически незначимая деталь, заслуживающая внимания: с jsonb числа выводятся по правилам нижележащего типа numeric. На практике это означает, что числа, заданные в записи с E, будут выведены без неё, например:

    SELECT '{"reading": 1.230e-5}'::json, '{"reading": 1.230e-5}'::jsonb;
            json          |          jsonb          
    -----------------------+-------------------------
    {"reading": 1.230e-5} | {"reading": 0.00001230}
    (1 row)
Однако, как видно из этого примера, jsonb сохраняет конечные нули дробного числа, хотя они и не имеют семантической значимости, в частности для проверки на равенство.

Список встроенных функций и операторов, позволяющих создавать и обрабатывать значения JSON, приведён в Разделе 9.15.

### 8.14.2. Проектирование документов JSON
Представлять данные в JSON можно гораздо более гибко, чем в традиционной реляционной модели данных, что очень привлекательно там, где нет жёстких условий. И оба этих подхода вполне могут сосуществовать и дополнять друг друга в одном приложении. Однако даже для приложений, которым нужна максимальная гибкость, рекомендуется, чтобы документы JSON имели некоторую фиксированную структуру. Эта структура обычно не навязывается жёстко (хотя можно декларативно диктовать некоторые бизнес-правила), но когда она предсказуема, становится гораздо проще писать запросы, которые извлекают полезные данные из набора «документов» (информации) в таблице.

Данные JSON, как и данные любых других типов, хранящиеся в таблицах, находятся под контролем механизма параллельного доступа. Хотя хранить большие документы вполне возможно, не забывайте, что при любом изменении устанавливается блокировка всей строки (на уровне строки). Поэтому для оптимизации блокировок транзакций, изменяющих данные, стоит ограничить размер документов JSON разумными пределами. В идеале каждый документ JSON должен собой представлять атомарный информационный блок, который, согласно бизнес-логике, нельзя разделить на меньшие, индивидуально изменяемые блоки.

### 8.14.3. Проверки на вхождение и существование jsonb
Проверка вхождения — важная особенность типа jsonb, не имеющая аналога для типа json. Эта проверка определяет, входит ли один документ jsonb в другой. В следующих примерах возвращается истинное значение (кроме упомянутых исключений):

    -- Простые скалярные/примитивные значения включают только одно идентичное значение:
    SELECT '"foo"'::jsonb @> '"foo"'::jsonb;

    -- Массив с правой стороны входит в массив слева:
    SELECT '[1, 2, 3]'::jsonb @> '[1, 3]'::jsonb;

    -- Порядок элементов в массиве не важен, поэтому это условие тоже выполняется:
    SELECT '[1, 2, 3]'::jsonb @> '[3, 1]'::jsonb;

    -- А повторяющиеся элементы массива не имеют значения:
    SELECT '[1, 2, 3]'::jsonb @> '[1, 2, 2]'::jsonb;

    -- Объект с одной парой справа входит в объект слева:
    SELECT '{"product": "PostgreSQL", "version": 9.4, "jsonb": true}'::jsonb @> '{"version": 9.4}'::jsonb;

    -- Массив справа не считается входящим в
    -- массив слева, хотя в последний и вложен подобный массив:
    SELECT '[1, 2, [1, 3]]'::jsonb @> '[1, 3]'::jsonb;  -- выдаёт false

    -- Но если добавить уровень вложенности, проверка на вхождение выполняется:
    SELECT '[1, 2, [1, 3]]'::jsonb @> '[[1, 3]]'::jsonb;

    -- Аналогично, это вхождением не считается:
    SELECT '{"foo": {"bar": "baz"}}'::jsonb @> '{"bar": "baz"}'::jsonb;  -- выдаёт false

    -- Ключ с пустым объектом на верхнем уровне входит в объект с таким ключом:
    SELECT '{"foo": {"bar": "baz"}}'::jsonb @> '{"foo": {}}'::jsonb;
Общий принцип этой проверки в том, что входящий объект должен соответствовать объекту, содержащему его, по структуре и данным, возможно, после исключения из содержащего объекта лишних элементов массива или пар ключ/значение. Но помните, что порядок элементов массива для проверки на вхождение не имеет значения, а повторяющиеся элементы массива считаются только один раз.

В качестве особого исключения для требования идентичности структур, массив может содержать примитивное значение:

    -- В этот массив входит примитивное строковое значение:
    SELECT '["foo", "bar"]'::jsonb @> '"bar"'::jsonb;

    -- Это исключение действует только в одну сторону -- здесь вхождения нет:
    SELECT '"bar"'::jsonb @> '["bar"]'::jsonb;  -- выдаёт false
Для типа jsonb введён также оператор существования, который является вариацией на тему вхождения: он проверяет, является ли строка (заданная в виде значения text) ключом объекта или элементом массива на верхнем уровне значения jsonb. В следующих примерах возвращается истинное значение (кроме упомянутых исключений):

    -- Строка существует в качестве элемента массива:
    SELECT '["foo", "bar", "baz"]'::jsonb ? 'bar';

    -- Строка существует в качестве ключа объекта:
    SELECT '{"foo": "bar"}'::jsonb ? 'foo';

    -- Значения объектов не рассматриваются:
    SELECT '{"foo": "bar"}'::jsonb ? 'bar';  -- выдаёт false

    -- Как и вхождение, существование определяется на верхнем уровне:
    SELECT '{"foo": {"bar": "baz"}}'::jsonb ? 'bar'; -- выдаёт false

    -- Строка считается существующей, если она соответствует примитивной строке JSON:
    SELECT '"foo"'::jsonb ? 'foo';
Объекты JSON для проверок на существование и вхождение со множеством ключей или элементов подходят больше, чем массивы, так как, в отличие от массивов, они внутри оптимизируются для поиска, и поиск элемента не будет линейным.

Подсказка
Так как вхождение в JSON проверяется с учётом вложенности, правильно написанный запрос может заменить явную выборку внутренних объектов. Например, предположим, что у нас есть столбец doc, содержащий объекты на верхнем уровне, и большинство этих объектов содержит поля tags с массивами вложенных объектов. Данный запрос найдёт записи, в которых вложенные объекты содержат ключи "term":"paris" и "term":"food", и при этом пропустит такие ключи, находящиеся вне массива tags:

    SELECT doc->'site_name' FROM websites
    WHERE doc @> '{"tags":[{"term":"paris"}, {"term":"food"}]}';
Этого же результата можно добиться, например, так:

    SELECT doc->'site_name' FROM websites
    WHERE doc->'tags' @> '[{"term":"paris"}, {"term":"food"}]';
Но данный подход менее гибкий и часто также менее эффективный.

С другой стороны, оператор существования JSON не учитывает вложенность: он будет искать заданный ключ или элемент массива только на верхнем уровне значения JSON.

Различные операторы вхождения и существования, а также все другие операторы и функции для работы с JSON документированы в Разделе 9.15.

### 8.14.4. Индексация jsonb
Для эффективного поиска ключей или пар ключ/значение в большом количестве документов jsonb можно успешно применять индексы GIN. Для этого предоставляются два «класса операторов» GIN, предлагающие выбор между производительностью и гибкостью.

Класс операторов GIN по умолчанию для jsonb поддерживает запросы с операторами существования ключа на верхнем уровне (?, ?& и ?|) и оператором существования пути/значения (@>). (Подробнее семантика, реализуемая этими операторами, описана в Таблице 9.45.) Пример создания индекса с этим классом операторов:

    CREATE INDEX idxgin ON api USING GIN (jdoc);
Дополнительный класс операторов GIN jsonb_path_ops поддерживает индексацию только для оператора @>. Пример создания индекса с этим классом операторов:

    CREATE INDEX idxginp ON api USING GIN (jdoc jsonb_path_ops);
Рассмотрим пример таблицы, в которой хранятся документы JSON, получаемые от сторонней веб-службы, с документированным определением схемы. Типичный документ:

    {
        "guid": "9c36adc1-7fb5-4d5b-83b4-90356a46061a",
        "name": "Angela Barton",
        "is_active": true,
        "company": "Magnafone",
        "address": "178 Howard Place, Gulf, Washington, 702",
        "registered": "2009-11-07T08:53:22 +08:00",
        "latitude": 19.793713,
        "longitude": 86.513373,
        "tags": [
            "enim",
            "aliquip",
            "qui"
        ]
    }
Мы сохраняем эти документы в таблице api, в столбце jdoc типа jsonb. Если по этому столбцу создаётся GIN-индекс, он может применяться в подобных запросах:

    -- Найти документы, в которых ключ "company" имеет значение "Magnafone"
    SELECT jdoc->'guid', jdoc->'name' FROM api WHERE jdoc @> '{"company": "Magnafone"}';
Однако, в следующих запросах он не будет использоваться, потому что, несмотря на то, что оператор ? — индексируемый, он применяется не к индексированному столбцу jdoc непосредственно:

    -- Найти документы, в которых ключ "tags" содержит ключ или элемент массива "qui"
    SELECT jdoc->'guid', jdoc->'name' FROM api WHERE jdoc -> 'tags' ? 'qui';
И всё же, правильно применяя индексы выражений, в этом запросе можно задействовать индекс. Если запрос определённых элементов в ключе "tags" выполняется часто, вероятно стоит определить такой индекс:

    CREATE INDEX idxgintags ON api USING GIN ((jdoc -> 'tags'));
Теперь предложение WHERE jdoc -> 'tags' ? 'qui' будет выполняться как применение индексируемого оператора ? к индексируемому выражению jdoc -> 'tags'. (Подробнее об индексах выражений можно узнать в Разделе 11.7.)

Также индексы GIN поддерживают операторы @@ и @?, которые сопоставляют jsonpath с данными.

    SELECT jdoc->'guid', jdoc->'name' FROM api WHERE jdoc @@ '$.tags[*] == "qui"';
    SELECT jdoc->'guid', jdoc->'name' FROM api WHERE jdoc @@ '$.tags[*] ? (@ == "qui")';
Индекс GIN извлекает из jsonpath конструкции следующего вида: цепочка_доступа = константа. Цепочка доступа может включать указания доступа .ключ, [*] и [индекс]. Класс операторов jsonb_ops дополнительно поддерживает указания .* и .**.

Ещё один подход к использованию проверок на существование:

    -- Найти документы, в которых ключ "tags" содержит элемент массива "qui"
    SELECT jdoc->'guid', jdoc->'name' FROM api WHERE jdoc @> '{"tags": ["qui"]}';
Этот запрос может задействовать простой GIN-индекс по столбцу jdoc. Но заметьте, что такой индекс будет хранить копии всех ключей и значений в поле jdoc, тогда как индекс выражения из предыдущего примера хранит только данные внутри объекта с ключом tags. Хотя подход с простым индексом гораздо более гибкий (так как он поддерживает запросы по любому ключу), индексы конкретных выражений скорее всего будут меньше и быстрее, чем простые индексы.

Класс операторов jsonb_path_ops поддерживает только запросы с операторами @>, @@ и @?, но он значительно производительнее класса по умолчанию jsonb_ops. Индекс jsonb_path_ops обычно гораздо меньше индекса jsonb_ops для тех же данных и более точен при поиске, особенно если запросы обращаются к ключам, часто встречающимся в данных. Таким образом, с ним операции поиска выполняются гораздо эффективнее, чем с классом операторов по умолчанию.

Техническое различие между GIN-индексами jsonb_ops и jsonb_path_ops состоит в том, что для первых создаются независимые элементы индекса для каждого ключа/значения в данных, тогда как для вторых создаются элементы только для значений. [6] По сути, каждый элемент индекса jsonb_path_ops представляет собой хеш значения и ключа(ей), приводящего к нему; например, при индексации {"foo": {"bar": "baz"}} будет создан один элемент индекса с хешем, рассчитанным по всем трём значениям: foo, bar и baz. Таким образом, проверка на вхождение этой структуры будет использовать крайне точный поиск по индексу, но определить, является ли foo ключом, с помощью такого индекса нельзя. С другой стороны, индекс jsonb_ops создаст три отдельных элемента индекса, представляющих foo, bar и baz по отдельности; для выполнения проверки на вхождение будут проверены строки таблицы, содержащие все эти три значения. Хотя GIN-индексы позволяют вычислить AND довольно эффективно, такой поиск всё же будет менее точным и более медленным, чем равнозначный поиск с jsonb_path_ops, особенно если любое одно из этих трёх значений содержится в большом количестве строк.

Недостаток класса jsonb_path_ops заключается в том, что он не учитывает в индексе структуры JSON, не содержащие никаких значений {"a": {}}. Для поиска по документам, содержащих такие структуры, потребуется выполнить полное сканирование индекса, что довольно долго, поэтому jsonb_path_ops не очень подходит для приложений, часто выполняющих такие запросы.

Тип jsonb также поддерживает индексы btree и hash. Они полезны, только если требуется проверять равенство JSON-документов в целом. Порядок сортировки btree для типа jsonb редко имеет большое значение, но для полноты он приводится ниже:

    Объект > Массив > Логическое значение > Число > Строка > Null

    Объект с n парами > Объект с n - 1 парами

    Массив с n элементами > Массив с n - 1 элементами
Объекты с равным количеством пар сравниваются в таком порядке:

    ключ-1, значение-1, ключ-2 ...
Заметьте, что ключи объектов сравниваются   согласно порядку при хранении; в частности, из-за того, что короткие ключи хранятся перед длинными, результаты могут оказаться несколько не интуитивными:

    { "aa": 1, "c": 1} > {"b": 1, "d": 1}
Массивы с равным числом элементом упорядочиваются аналогично:

    элемент-1, элемент-2 ...
Примитивные значения JSON сравниваются по тем же правилам сравнения, что и нижележащие типы данных Postgres Pro. Строки сравниваются с учётом порядка сортировки по умолчанию в текущей базе данных.

### 8.14.5. Трансформации
Для различных процедурных языков представлены дополнительные расширения, реализующие трансформации для типа jsonb.

Расширения для PL/Perl называются jsonb_plperl и jsonb_plperlu. Когда они используются, значения jsonb отображаются в соответствующие структуры Perl: массивы, хеши или скаляры.

Расширения для PL/Python называются jsonb_plpythonu, jsonb_plpython2u и jsonb_plpython3u (принятое в PL/Python соглашение об именовании описано в Разделе 44.1). Когда они используются, значения jsonb отображаются в соответствующие структуры Python: массивы, хеши или скаляры.

### 8.14.6. Тип jsonpath
Тип jsonpath предназначен для реализации поддержки языка путей SQL/JSON в Postgres Pro, позволяющего эффективно выполнять запросы к данным JSON. Он обеспечивает двоичное представление разобранного выражения пути SQL/JSON, определяющего, какие элементы должны извлекаться из данных JSON для дальнейшей обработки в функциях SQL/JSON.

Семантика предикатов и операторов языка путей SQL/JSON в целом соответствует SQL. В то же время, чтобы с данными JSON можно было оперировать более естественным образом, в синтаксисе путей SQL/JSON приняты некоторые соглашения JavaScript:

Точка (.) применяется для доступа к члену объекта.

Квадратные скобки ([]) применяются для обращения к массиву.

Элементы массивов в SQL/JSON нумеруются с 0, тогда как обычные массивы SQL — с 1.

 Выражение пути SQL/JSON обычно записывается в SQL-запросе в виде символьной константы SQL, и поэтому должно заключаться в апострофы, а любой апостроф, который нужно заключить в это значение, должен дублироваться (см. Подраздел 4.1.2.1). Нередко строковые константы требуется использовать и внутри выражений путей. На такие константы распространяются соглашения JavaScript/ECMAScript: они должны заключаться в двойные кавычки, а для представления символов, которые сложно ввести иначе, используются спецпоследовательности с обратной косой чертой. В частности, символ двойных кавычек внутри строковой константы записывается как \", а собственно обратная косая черта как \\. В число других спецпоследовательностей, воспринимаемых в строках JSON, входят: \b, \f, \n, \r, \t, \v, выражающие различные управляющие символы ASCII, а также \uNNNN, выражающая символ Unicode кодом в виде четырёх шестнадцатеричных цифр. Синтаксис спецпоследовательностей допускает также две записи, выходящие за рамки JSON: \xNN, выражающая символ кодом в виде только двух шестнадцатеричных цифр, и \u{N...}, позволяющая для записи кода символа использовать от 1 до 6 шестнадцатеричных цифр.

Выражение пути состоит из последовательности элементов пути, которые могут быть следующими:

Константы примитивных типов JSON: текст Unicode, числа и значения true, false и null.

- Переменные пути перечислены в Таблице 8.24.

- Операторы доступа перечислены в Таблице 8.25.

- Операторы и методы jsonpath перечислены в Подразделе 9.15.2.3

Скобки, применяющиеся для образования выражений фильтра и изменения порядка вычисления пути.

Более подробно использование выражений jsonpath с функциями запросов SQL/JSON описано в Подразделе 9.15.2.

Таблица 8.24. Переменные jsonpath

| Переменная                               | Описание                                 |
|------------------------------------------|------------------------------------------|
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">$</code> | Переменная, представляющая данные JSON, фигурирующие в запросе (<em class="firstterm" style="box-sizing: border-box;">элемент контекста</em>). |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">$varname</code> | Именованная переменная. Её значение может быть задано в параметре<span> </span><em class="parameter" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">vars</code></em>, который принимают различные функции обработки JSON. За подробностями обратитесь к<span> </span><a class="xref" href="https://postgrespro.ru/docs/postgrespro/12/functions-json#FUNCTIONS-JSON-PROCESSING-TABLE" title="Таблица 9.47. Функции для обработки JSON" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 145, 208); text-decoration: underline; cursor: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABaUlEQVQ4T2NkwAZY1f9DhP+lM/y+PQurGqggI6akisytj+ceg8TVREwZGH7fxKIGoQtTkk1F69brc1cpMEBV89brs9eoaMB/TQaGWzcYGKS4GBiefUP3MhYvqGncen3mOrJCZ5NAhr1n1jPs3LKbITc6H2jQk+8weaIMgCn++OEDw+H9xxmERAQZEgJyDjP8uWXHyMCqdiU+PVJ74cwVkBBnV1e/9eo00MmY4M+fPwwvX7wASzgaBILVAw1Q/3/rzWmwIDjamBg0cBkAUvP0yRPcBoBkvG3CGbYeWYk17fz5/Zvh5cuXaAaAuEiuwJfq3rx5w/Dzxw8sBhBpCMz5qGGAbCUel/z69Yvh9atXcNWOBgEXGH7fMsSMRqAh+y+sZ+AXEGDg4eEBa3j29CnD///Q/AXkBzjEM3x8fRqsF3tGYVF7Ud1eJO7iZYcRJPGBuQyPbl0BmvzyK24DYNpY1X+BghjFFLTcCQDviqMRO9+fjwAAAABJRU5ErkJggg==&quot;) 14 0, auto !important;">Таблице 9.47</a>. |
| <code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">@</code> | Переменная, представляющая результат вычисления пути в выражениях фильтров. |

Таблица 8.25. Операторы доступа jsonpath

| Оператор доступа                         | Описание                                 |
|------------------------------------------|------------------------------------------|
| <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;"><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">.<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">ключ</code></em></code></p><p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;"><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">."$<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">имя_переменной</code></em>"</code></p> | <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;">Оператор доступа к члену объекта, выбираемому по заданному ключу. Если имя ключа задаётся переменной с именем, начинающимся с<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">$</code>, или не соответствует действующим в JavaScript требованиям к идентификаторам, оно должно заключаться в двойные кавычки как символьная строка.</p> |
| <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;"><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">.*</code></p> | <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;">Оператор доступа по звёздочке, который возвращает значения всех членов, находящихся на верхнем уровне объекта.</p> |
| <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;"><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">.**</code></p> | <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;">Рекурсивный оператор доступа по звёздочке, который проходит по всем уровням иерархии JSON текущего объекта и возвращает все значения членов, вне зависимости от их уровня вложенности. Это реализованное в<span> </span><span class="productname" style="box-sizing: border-box;">Postgres Pro</span><span> </span>расширение стандарта SQL/JSON.</p> |
| <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;"><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">.**{<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">уровень</code></em>}</code></p><p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;"><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">.**{<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">начальный_уровень</code></em><span> </span>to<span> </span><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">конечный_уровень</code></em>}</code></p> | <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;">Этот оператор подобен<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">.**</code>, но дополнительно ограничивает уровни вложенности в иерархии JSON. Номера уровней задаются целыми числами, при этом нулевой уровень соответствует текущему объекту. Для обращения к самому нижнему уровню вложенности можно использовать ключевое слово<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">last</code>. Это реализованное в<span> </span><span class="productname" style="box-sizing: border-box;">Postgres Pro</span><span> </span>расширение стандарта SQL/JSON.</p> |
| <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;"><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">[<em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">селектор</code></em>, ...]</code></p> | <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;">Оператор доступа к элементу массива.<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;"><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">Селектор</code></em></code><span> </span>может задаваться в двух формах:<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;"><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">индекс</code></em></code><span> </span>или<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;"><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">начальный_индекс</code></em><span> </span>to<span> </span><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">конечный_индекс</code></em></code>. Первая форма выбирает единственный элемент по индексу. Вторая форма выбирает срез массива по двум индексам, включающий крайние элементы, соответствущие значениям<span> </span><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">начальный_индекс</code></em><span> </span>и<span> </span><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">конечный_индекс</code></em>.</p><p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;">Задаваемый<span> </span><em class="replaceable" style="box-sizing: border-box;"><code style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">индекс</code></em><span> </span>может быть целочисленным значением или выражением, возвращающим единственное число, которое автоматически приводится к целому. Нулевой индекс соответствует первому элементу массива. Также в качестве индекса принимается ключевое слово<span> </span><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">last</code>, обозначающее индекс последнего элемента массива, что полезно при обработке массивов неизвестной длины.</p> |
| <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;"><code class="literal" style="box-sizing: border-box; font-family: monospace, monospace; font-size: 1em; padding: 0px; color: rgb(82, 95, 108); background-color: rgb(255, 255, 255); border-radius: 0px;">[*]</code></p> | <p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.5em;">Оператор обращения к элементам массива по звёздочке, возвращающий все элементы массива.</p> |

## 8.15. Массивы

Postgres Pro позволяет определять столбцы таблицы как многомерные массивы переменной длины. Элементами массивов могут быть любые встроенные или определённые пользователями базовые типы, перечисления, составные типы, типы-диапазоны или домены.

### 8.15.1. Объявления типов массивов
Чтобы проиллюстрировать использование массивов, мы создадим такую таблицу:

    CREATE TABLE sal_emp (
        name            text,
        pay_by_quarter  integer[],
        schedule        text[][]
    );
Как показано, для объявления типа массива к названию типа элементов добавляются квадратные скобки ([]). Показанная выше команда создаст таблицу sal_emp со столбцами типов text (name), одномерный массив с элементами integer (pay_by_quarter), представляющий квартальную зарплату работников, и двухмерный массив с элементами text (schedule), представляющий недельный график работника.

Команда CREATE TABLE позволяет также указать точный размер массивов, например так:

    CREATE TABLE tictactoe (
        squares   integer[3][3]
    );
Однако текущая реализация игнорирует все указанные размеры, т. е. фактически размер массива остаётся неопределённым.

Текущая реализация также не ограничивает число размерностей. Все элементы массивов считаются одного типа, вне зависимости от его размера и числа размерностей. Поэтому явно указывать число элементов или размерностей в команде CREATE TABLE имеет смысл только для документирования, на механизм работы с массивом это не влияет.

Для объявления одномерных массивов можно применять альтернативную запись с ключевым словом ARRAY, соответствующую стандарту SQL. Столбец pay_by_quarter можно было бы определить так:

    pay_by_quarter  integer ARRAY[4],
Или без указания размера массива:

    pay_by_quarter  integer ARRAY,
Заметьте, что и в этом случае Postgres Pro не накладывает ограничения на фактический размер массива.

### 8.15.2. Ввод значения массива
Чтобы записать значение массива в виде буквальной константы, заключите значения элементов в фигурные скобки и разделите их запятыми. (Если вам знаком C, вы найдёте, что это похоже на синтаксис инициализации структур в C.) Вы можете заключить значение любого элемента в двойные кавычки, а если он содержит запятые или фигурные скобки, это обязательно нужно сделать. (Подробнее это описано ниже.) Таким образом, общий формат константы массива выглядит так:

`{ значение1 разделитель значение2 разделитель ... }`
где разделитель — символ, указанный в качестве разделителя в соответствующей записи в таблице pg_type. Для стандартных типов данных, существующих в дистрибутиве Postgres Pro, разделителем является запятая (,), за исключением лишь типа box, в котором разделитель —точка с запятой (;). Каждое значение здесь — это либо константа типа элемента массива, либо вложенный массив. Например, константа массива может быть такой:

`'{{1,2,3},{4,5,6},{7,8,9}}'`
Эта константа определяет двухмерный массив 3x3, состоящий из трёх вложенных массивов целых чисел.

Чтобы присвоить элементу массива значение NULL, достаточно просто написать NULL (регистр символов при этом не имеет значения). Если же требуется добавить в массив строку, содержащую «NULL», это слово нужно заключить в двойные кавычки.

(Такого рода константы массивов на самом деле представляют собой всего лишь частный случай констант, описанных в Подразделе 4.1.2.7. Константа изначально воспринимается как строка и передаётся процедуре преобразования вводимого массива. При этом может потребоваться явно указать целевой тип.)

Теперь мы можем показать несколько операторов INSERT:

    INSERT INTO sal_emp
        VALUES ('Bill',
        '{10000, 10000, 10000, 10000}',
        '{{"meeting", "lunch"}, {"training", "presentation"}}');
    
    INSERT INTO sal_emp
        VALUES ('Carol',
        '{20000, 25000, 25000, 25000}',
        '{{"breakfast", "consulting"}, {"meeting", "lunch"}}');
Результат двух предыдущих команд:

    SELECT * FROM sal_emp;
    name |     pay_by_quarter      |                schedule
    -----+-------------------------+--------------------------------------
    Bill |{10000,10000,10000,10000}|{{meeting,lunch},{training,presentation}}
    Carol|{20000,25000,25000,25000}|{{breakfast,consulting},{meeting,lunch}}
    (2 rows)
В многомерных массивов число элементов в каждой размерности должно быть одинаковым; в противном случае возникает ошибка. Например:

    INSERT INTO sal_emp
        VALUES ('Bill',
        '{10000, 10000, 10000, 10000}',
        '{{"meeting", "lunch"}, {"meeting"}}');
    ОШИБКА:  для многомерных массивов должны задаваться выражения
      с соответствующими размерностями
Также можно использовать синтаксис конструктора ARRAY:

    INSERT INTO sal_emp
        VALUES ('Bill',
        ARRAY[10000, 10000, 10000, 10000],
        ARRAY[['meeting', 'lunch'], ['training', 'presentation']]);
    
    INSERT INTO sal_emp
        VALUES ('Carol',
        ARRAY[20000, 25000, 25000, 25000],
        ARRAY[['breakfast', 'consulting'], ['meeting', 'lunch']]);
Заметьте, что элементы массива здесь — это простые SQL-константы или выражения; и поэтому, например строки будут заключаться в одинарные апострофы, а не в двойные, как в буквальной константе массива. Более подробно конструктор ARRAY обсуждается в Подразделе 4.2.12.

### 8.15.3. Обращение к массивам
Добавив данные в таблицу, мы можем перейти к выборкам. Сначала мы покажем, как получить один элемент массива. Этот запрос получает имена сотрудников, зарплата которых изменилась во втором квартале:

    SELECT name FROM sal_emp WHERE pay_by_quarter[1] <> pay_by_quarter[2];

     name
    -------
     Carol
    (1 row)
Индексы элементов массива записываются в квадратных скобках. По умолчанию в Postgres Pro действует соглашение о нумерации элементов массива с 1, то есть в массиве из n элементов первым считается array[1], а последним — array[n].

Этот запрос выдаёт зарплату всех сотрудников в третьем квартале:

    SELECT pay_by_quarter[3] FROM sal_emp;
    
     pay_by_quarter
    ----------------
              10000
              25000
    (2 rows)
Мы также можем получать обычные прямоугольные срезы массива, то есть подмассивы. Срез массива обозначается как нижняя-граница:верхняя-граница для одной или нескольких размерностей. Например, этот запрос получает первые пункты в графике Билла в первые два дня недели:

    SELECT schedule[1:2][1:1] FROM sal_emp WHERE name = 'Bill';
    
            schedule
    ------------------------
     {{meeting},{training}}
    (1 row)
Если одна из размерностей записана в виде среза, то есть содержит двоеточие, тогда срез распространяется на все размерности. Если при этом для размерности указывается только одно число (без двоеточия), в срез войдут элемент от 1 до заданного номера. Например, в этом примере [2] будет равнозначно [1:2]:

    SELECT schedule[1:2][2] FROM sal_emp WHERE name = 'Bill';
    
                     schedule
    -------------------------------------------
     {{meeting,lunch},{training,presentation}}
    (1 row)
Во избежание путаницы с обращением к одному элементу, срезы лучше всегда записывать явно для всех измерений, например [1:2][1:1] вместо [2][1:1].

Значения нижняя-граница и/или верхняя-граница в указании среза можно опустить; опущенная граница заменяется нижним или верхним пределом индексов массива. Например:

    SELECT schedule[:2][2:] FROM sal_emp WHERE name = 'Bill';
    
            schedule
    ------------------------
     {{lunch},{presentation}}
    (1 row)
    
    SELECT schedule[:][1:1] FROM sal_emp WHERE name = 'Bill';
    
            schedule
    ------------------------
     {{meeting},{training}}
    (1 row)
Выражение обращения к элементу массива возвратит NULL, если сам массив или одно из выражений индексов элемента равны NULL. Значение NULL также возвращается, если индекс выходит за границы массива (это не считается ошибкой). Например, если schedule в настоящее время имеет размерности [1:3][1:2], результатом обращения к schedule[3][3] будет NULL. Подобным образом, при обращении к элементу массива с неправильным числом индексов возвращается NULL, а не ошибка.

Аналогично, NULL возвращается при обращении к срезу массива, если сам массив или одно из выражений, определяющих индексы элементов, равны NULL. Однако, в других случаях, например, когда границы среза выходят за рамки массива, возвращается не NULL, а пустой массив (с размерностью 0). (Так сложилось исторически, что в этом срезы отличаются от обращений к обычным элементам.) Если запрошенный срез пересекает границы массива, тогда возвращается не NULL, а срез, сокращённый до области пересечения.

Текущие размеры значения массива можно получить с помощью функции array_dims:

    SELECT array_dims(schedule) FROM sal_emp WHERE name = 'Carol';
    
     array_dims
    ------------
     [1:2][1:2]
    (1 row)
array_dims выдаёт результат типа text, что удобно скорее для людей, чем для программ. Размеры массива также можно получить с помощью функций array_upper и array_lower, которые возвращают соответственно верхнюю и нижнюю границу для указанной размерности:

    SELECT array_upper(schedule, 1) FROM sal_emp WHERE name = 'Carol';
    
     array_upper
    -------------
               2
    (1 row)
    array_length возвращает число элементов в указанной размерности массива:
    
    SELECT array_length(schedule, 1) FROM sal_emp WHERE name = 'Carol';
    
     array_length
    --------------
                2
    (1 row)
cardinality возвращает общее число элементов массива по всем измерениям. Фактически это число строк, которое вернёт функция unnest:

    SELECT cardinality(schedule) FROM sal_emp WHERE name = 'Carol';
    
     cardinality
    -------------
               4
    (1 row)
### 8.15.4. Изменение массивов
Значение массива можно заменить полностью так:

    UPDATE sal_emp SET pay_by_quarter = '{25000,25000,27000,27000}'
        WHERE name = 'Carol';
или используя синтаксис ARRAY:

    UPDATE sal_emp SET pay_by_quarter = ARRAY[25000,25000,27000,27000]
        WHERE name = 'Carol';
Также можно изменить один элемент массива:

    UPDATE sal_emp SET pay_by_quarter[4] = 15000
        WHERE name = 'Bill';
или срез:

    UPDATE sal_emp SET pay_by_quarter[1:2] = '{27000,27000}'
        WHERE name = 'Carol';
При этом в указании среза может быть опущена нижняя-граница и/или верхняя-граница, но только для массива, отличного от NULL, и имеющего ненулевую размерность (иначе неизвестно, какие граничные значения должны подставляться вместо опущенных).

Сохранённый массив можно расширить, определив значения ранее отсутствовавших в нём элементов. При этом все элементы, располагающиеся между существовавшими ранее и новыми, принимают значения NULL. Например, если массив myarray содержит 4 элемента, после присвоения значения элементу myarray[6] его длина будет равна 6, а myarray[5] будет содержать NULL. В настоящее время подобное расширение поддерживается только для одномерных, но не многомерных массивов.

Определяя элементы по индексам, можно создавать массивы, в которых нумерация элементов может начинаться не с 1. Например, можно присвоить значение выражению myarray[-2:7] и таким образом создать массив, в котором будут элементы с индексами от -2 до 7.

Значения массива также можно сконструировать с помощью оператора конкатенации, ||:

    SELECT ARRAY[1,2] || ARRAY[3,4];
    ?column?
    -----------
    {1,2,3,4}
    (1 row)

    SELECT ARRAY[5,6] || ARRAY[[1,2],[3,4]];
        ?column?
    ---------------------
    {{5,6},{1,2},{3,4}}
    (1 row)
Оператор конкатенации позволяет вставить один элемент в начало или в конец одномерного массива. Он также может принять два N-мерных массива или массивы размерностей N и N+1.

Когда в начало или конец одномерного массива вставляется один элемент, в образованном в результате массиве будет та же нижняя граница, что и в массиве-операнде. Например:

    SELECT array_dims(1 || '[0:1]={2,3}'::int[]);
    array_dims
    ------------
    [0:2]
    (1 row)

    SELECT array_dims(ARRAY[1,2] || 3);
    array_dims
    ------------
    [1:3]
    (1 row)
Когда складываются два массива одинаковых размерностей, в результате сохраняется нижняя граница внешней размерности левого операнда. Выходной массив включает все элементы левого операнда, после которых добавляются все элементы правого. Например:

    SELECT array_dims(ARRAY[1,2] || ARRAY[3,4,5]);
    array_dims
    ------------
    [1:5]
    (1 row)

    SELECT array_dims(ARRAY[[1,2],[3,4]] || ARRAY[[5,6],[7,8],[9,0]]);
    array_dims
    ------------
    [1:5][1:2]
    (1 row)
Когда к массиву размерности N+1 спереди или сзади добавляется N-мерный массив, он вставляется аналогично тому, как в массив вставляется элемент (это было описано выше). Любой N-мерный массив по сути является элементом во внешней размерности массива, имеющего размерность N+1. Например:

    SELECT array_dims(ARRAY[1,2] || ARRAY[[3,4],[5,6]]);
    array_dims
    ------------
    [1:3][1:2]
    (1 row)
Массив также можно сконструировать с помощью функций array_prepend, array_append и array_cat. Первые две функции поддерживают только одномерные массивы, а array_cat поддерживает и многомерные. Несколько примеров:

    SELECT array_prepend(1, ARRAY[2,3]);
    array_prepend
    ---------------
    {1,2,3}
    (1 row)

    SELECT array_append(ARRAY[1,2], 3);
    array_append
    --------------
    {1,2,3}
    (1 row)

    SELECT array_cat(ARRAY[1,2], ARRAY[3,4]);
    array_cat
    -----------
    {1,2,3,4}
    (1 row)

    SELECT array_cat(ARRAY[[1,2],[3,4]], ARRAY[5,6]);
        array_cat
    ---------------------
    {{1,2},{3,4},{5,6}}
    (1 row)

    SELECT array_cat(ARRAY[5,6], ARRAY[[1,2],[3,4]]);
        array_cat
    ---------------------
    {{5,6},{1,2},{3,4}}
В простых случаях описанный выше оператор конкатенации предпочтительнее непосредственного вызова этих функций. Однако, так как оператор конкатенации перегружен для решения всех трёх задач, возможны ситуации, когда лучше применить одну из этих функций во избежание неоднозначности. Например, рассмотрите:

    SELECT ARRAY[1, 2] || '{3, 4}';  -- нетипизированная строка воспринимается как массив
    ?column?
    -----------
    {1,2,3,4}

    SELECT ARRAY[1, 2] || '7';                 -- как и эта
    ERROR:  malformed array literal: "7"

    SELECT ARRAY[1, 2] || NULL;                -- как и буквальный NULL
    ?column?
    ----------
    {1,2}
    (1 row)

    SELECT array_append(ARRAY[1, 2], NULL);    -- это могло иметься в виду на самом деле
    array_append
    --------------
    {1,2,NULL}
В показанных примерах анализатор запроса видит целочисленный массив с одной стороны оператора конкатенации и константу неопределённого типа с другой. Согласно своим правилам разрешения типа констант, он полагает, что она имеет тот же тип, что и другой операнд — в данном случае целочисленный массив. Поэтому предполагается, что оператор конкатенации здесь представляет функцию array_cat, а не array_append. Если это решение оказывается неверным, его можно скорректировать, приведя константу к типу элемента массива; однако может быть лучше явно использовать функцию array_append.

### 8.15.5. Поиск значений в массивах
Чтобы найти значение в массиве, необходимо проверить все его элементы. Это можно сделать вручную, если вы знаете размер массива. Например:

    SELECT * FROM sal_emp WHERE pay_by_quarter[1] = 10000 OR
                                pay_by_quarter[2] = 10000 OR
                                   pay_by_quarter[3] = 10000 OR
                                pay_by_quarter[4] = 10000;
Однако с большим массивами этот метод становится утомительным, и к тому же он не работает, когда размер массива неизвестен. Альтернативный подход описан в Разделе 9.23. Показанный выше запрос можно было переписать так:

    SELECT * FROM sal_emp WHERE 10000 = ANY (pay_by_quarter);
А так можно найти в таблице строки, в которых массивы содержат только значения, равные 10000:

    SELECT * FROM sal_emp WHERE 10000 = ALL (pay_by_quarter);
Кроме того, для обращения к элементам массива можно использовать функцию generate_subscripts. Например так:

    SELECT * FROM
    (SELECT pay_by_quarter,
            generate_subscripts(pay_by_quarter, 1) AS s
        FROM sal_emp) AS foo
    WHERE pay_by_quarter[s] = 10000;
Эта функция описана в Таблице 9.62.

Также искать в массиве значения можно, используя оператор &&, который проверяет, перекрывается ли левый операнд с правым. Например:

    SELECT * FROM sal_emp WHERE pay_by_quarter && ARRAY[10000];
Этот и другие операторы для работы с массивами описаны в Разделе 9.18. Он может быть ускорен с помощью подходящего индекса, как описано в Разделе 11.2.

Вы также можете искать определённые значения в массиве, используя функции array_position и array_positions. Первая функция возвращает позицию первого вхождения значения в массив, а вторая — массив позиций всех его вхождений. Например:

    SELECT array_position(ARRAY['sun','mon','tue','wed','thu','fri','sat'], 'mon');
    array_positions
    -----------------
    2

    SELECT array_positions(ARRAY[1, 4, 3, 1, 3, 4, 2, 1], 1);
    array_positions
    -----------------
    {1,4,8}
>Подсказка
Массивы — это не множества; необходимость поиска определённых элементов в массиве может быть признаком неудачно сконструированной базы данных. Возможно, вместо массива лучше использовать отдельную таблицу, строки которой будут содержать данные элементов массива. Это может быть лучше и для поиска, и для работы с большим количеством элементов.

### 8.15.6. Синтаксис вводимых и выводимых значений массива
Внешнее текстовое представление значения массива состоит из записи элементов, интерпретируемых по правилам ввода/вывода для типа элемента массива, и оформления структуры массива. Оформление состоит из фигурных скобок ({ и }), окружающих значение массива, и знаков-разделителей между его элементами. В качестве знака-разделителя обычно используется запятая (,), но это может быть и другой символ; он определяется параметром typdelim для типа элемента массива. Для стандартных типов данных, существующих в дистрибутиве Postgres Pro, разделителем является запятая (,), за исключением лишь типа box, в котором разделитель — точка с запятой (;). В многомерном массиве у каждой размерности (ряд, плоскость, куб и т. д.) есть свой уровень фигурных скобок, а соседние значения в фигурных скобках на одном уровне должны отделяться разделителями.

Функция вывода массива заключает значение элемента в кавычки, если это пустая строка или оно содержит фигурные скобки, знаки-разделители, кавычки, обратную косую черту, пробельный символ или это текст NULL. Кавычки и обратная косая черта, включённые в такие значения, преобразуются в спецпоследовательность с обратной косой чертой. Для числовых типов данных можно рассчитывать на то, что значения никогда не будут выводиться в кавычках, но для текстовых типов следует быть готовым к тому, что выводимое значение массива может содержать кавычки.

По умолчанию нижняя граница всех размерностей массива равна одному. Чтобы представить массивы с другими нижними границами, перед содержимым массива можно указать диапазоны индексов. Такое оформление массива будет содержать квадратные скобки ([]) вокруг нижней и верхней границ каждой размерности с двоеточием (:) между ними. За таким указанием размерности следует знак равно (=). Например:

    SELECT f1[1][-2][3] AS e1, f1[1][-1][5] AS e2
    FROM (SELECT '[1:1][-2:-1][3:5]={{{1,2,3},{4,5,6}}}'::int[] AS f1) AS ss;

    e1 | e2
    ----+----
    1 |  6
    (1 row)
Процедура вывода массива включает в результат явное указание размерностей, только если нижняя граница в одной или нескольких размерностях отличается от 1.

Если в качестве значения элемента задаётся NULL (в любом регистре), этот элемент считается равным непосредственно NULL. Если же оно включает кавычки или обратную косую черту, элементу присваивается текстовая строка «NULL». Кроме того, для обратной совместимости с версиями PostgreSQL до 8.2, параметр конфигурации array_nulls можно выключить (присвоив ему off), чтобы строки NULL не воспринимались как значения NULL.

Как было показано ранее, записывая значение массива, любой его элемент можно заключить в кавычки. Это нужно делать, если при разборе значения массива без кавычек возможна неоднозначность. Например, в кавычки необходимо заключать элементы, содержащие фигурные скобки, запятую (или разделитель, определённый для данного типа), кавычки, обратную косую черту, а также пробельные символы в начале или конце строки. Пустые строки и строки, содержащие одно слово NULL, также нужно заключать в кавычки. Чтобы включить кавычки или обратную косую черту в значение, заключённое в кавычки, добавьте обратную косую черту перед таким символом. С другой стороны, чтобы обойтись без кавычек, таким экранированием можно защитить все символы в данных, которые могут быть восприняты как часть синтаксиса массива.

Перед открывающей и после закрывающей скобки можно добавлять пробельные символы. Пробелы также могут окружать каждую отдельную строку значения. Во всех случаях такие пробельные символы игнорируются. Однако все пробелы в строках, заключённых в кавычки, или окружённые не пробельными символами, напротив, учитываются.

>Подсказка
Записывать значения массивов в командах SQL часто бывает удобнее с помощью конструктора ARRAY (см. Подраздел 4.2.12). В ARRAY отдельные значения элементов записываются так же, как если бы они не были членами массива.

