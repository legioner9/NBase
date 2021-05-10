<!-- TOC -->

- [Предисловие](#%D0%BF%D1%80%D0%B5%D0%B4%D0%B8%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D0%B5)
    - [Что такое Postgres Pro Standard?](#%D1%87%D1%82%D0%BE-%D1%82%D0%B0%D0%BA%D0%BE%D0%B5-postgres-pro-standard)
    - [Различия между Postgres Pro Standard и PostgreSQL](#%D1%80%D0%B0%D0%B7%D0%BB%D0%B8%D1%87%D0%B8%D1%8F-%D0%BC%D0%B5%D0%B6%D0%B4%D1%83-postgres-pro-standard-%D0%B8-postgresql)
    - [Краткая история PostgreSQL](#%D0%BA%D1%80%D0%B0%D1%82%D0%BA%D0%B0%D1%8F-%D0%B8%D1%81%D1%82%D0%BE%D1%80%D0%B8%D1%8F-postgresql)
    - [Соглашения](#%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F)
    - [Как правильно сообщить об ошибке](#%D0%BA%D0%B0%D0%BA-%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE-%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B8%D1%82%D1%8C-%D0%BE%D0%B1-%D0%BE%D1%88%D0%B8%D0%B1%D0%BA%D0%B5)
- [I. Введение](#i-%D0%B2%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5)
    - [Начало](#%D0%BD%D0%B0%D1%87%D0%B0%D0%BB%D0%BE)
    - [Язык SQL](#%D1%8F%D0%B7%D1%8B%D0%BA-sql)
    - [Расширенные возможности](#%D1%80%D0%B0%D1%81%D1%88%D0%B8%D1%80%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5-%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D0%B8)
- [II. Язык SQL](#ii-%D1%8F%D0%B7%D1%8B%D0%BA-sql)
    - [Синтаксис SQL](#%D1%81%D0%B8%D0%BD%D1%82%D0%B0%D0%BA%D1%81%D0%B8%D1%81-sql)
    - [Определение данных](#%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
    - [Модификация данных](#%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
    - [Запросы](#%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D1%8B)
    - [Типы данных](#%D1%82%D0%B8%D0%BF%D1%8B-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
    - [Функции и операторы](#%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%B8-%D0%B8-%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D1%8B)
    - [Преобразование типов](#%D0%BF%D1%80%D0%B5%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%82%D0%B8%D0%BF%D0%BE%D0%B2)
    - [Индексы](#%D0%B8%D0%BD%D0%B4%D0%B5%D0%BA%D1%81%D1%8B)
    - [Полнотекстовый поиск](#%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B9-%D0%BF%D0%BE%D0%B8%D1%81%D0%BA)
    - [Управление конкурентным доступом](#%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA%D0%BE%D0%BD%D0%BA%D1%83%D1%80%D0%B5%D0%BD%D1%82%D0%BD%D1%8B%D0%BC-%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BE%D0%BC)
    - [Оптимизация производительности](#%D0%BE%D0%BF%D1%82%D0%B8%D0%BC%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F-%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%BE%D0%B4%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8)
    - [Параллельный запрос](#%D0%BF%D0%B0%D1%80%D0%B0%D0%BB%D0%BB%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81)
- [III. Администрирование сервера](#iii-%D0%B0%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%B0)
    - [Установка из двоичных пакетов](#%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0-%D0%B8%D0%B7-%D0%B4%D0%B2%D0%BE%D0%B8%D1%87%D0%BD%D1%8B%D1%85-%D0%BF%D0%B0%D0%BA%D0%B5%D1%82%D0%BE%D0%B2)
    - [Подготовка к работе и сопровождение сервера](#%D0%BF%D0%BE%D0%B4%D0%B3%D0%BE%D1%82%D0%BE%D0%B2%D0%BA%D0%B0-%D0%BA-%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B5-%D0%B8-%D1%81%D0%BE%D0%BF%D1%80%D0%BE%D0%B2%D0%BE%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%B0)
    - [Настройка сервера](#%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%B0)
    - [Аутентификация клиентского приложения](#%D0%B0%D1%83%D1%82%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F-%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82%D1%81%D0%BA%D0%BE%D0%B3%D0%BE-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F)
    - [Роли базы данных](#%D1%80%D0%BE%D0%BB%D0%B8-%D0%B1%D0%B0%D0%B7%D1%8B-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
    - [Управление базами данных](#%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B1%D0%B0%D0%B7%D0%B0%D0%BC%D0%B8-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
    - [Локализация](#%D0%BB%D0%BE%D0%BA%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F)
    - [Регламентные задачи обслуживания базы данных](#%D1%80%D0%B5%D0%B3%D0%BB%D0%B0%D0%BC%D0%B5%D0%BD%D1%82%D0%BD%D1%8B%D0%B5-%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8-%D0%BE%D0%B1%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F-%D0%B1%D0%B0%D0%B7%D1%8B-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
    - [Резервное копирование и восстановление](#%D1%80%D0%B5%D0%B7%D0%B5%D1%80%D0%B2%D0%BD%D0%BE%D0%B5-%D0%BA%D0%BE%D0%BF%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B8-%D0%B2%D0%BE%D1%81%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5)
    - [Отказоустойчивость, балансировка нагрузки и репликация](#%D0%BE%D1%82%D0%BA%D0%B0%D0%B7%D0%BE%D1%83%D1%81%D1%82%D0%BE%D0%B9%D1%87%D0%B8%D0%B2%D0%BE%D1%81%D1%82%D1%8C-%D0%B1%D0%B0%D0%BB%D0%B0%D0%BD%D1%81%D0%B8%D1%80%D0%BE%D0%B2%D0%BA%D0%B0-%D0%BD%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8-%D0%B8-%D1%80%D0%B5%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F)
    - [Мониторинг работы СУБД](#%D0%BC%D0%BE%D0%BD%D0%B8%D1%82%D0%BE%D1%80%D0%B8%D0%BD%D0%B3-%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%8B-%D1%81%D1%83%D0%B1%D0%B4)
    - [Мониторинг использования диска](#%D0%BC%D0%BE%D0%BD%D0%B8%D1%82%D0%BE%D1%80%D0%B8%D0%BD%D0%B3-%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F-%D0%B4%D0%B8%D1%81%D0%BA%D0%B0)
    - [Надёжность и журнал предзаписи](#%D0%BD%D0%B0%D0%B4%D1%91%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D1%8C-%D0%B8-%D0%B6%D1%83%D1%80%D0%BD%D0%B0%D0%BB-%D0%BF%D1%80%D0%B5%D0%B4%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8)
    - [Логическая репликация](#%D0%BB%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B0%D1%8F-%D1%80%D0%B5%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F)
    - [JIT-компиляция](#jit-%D0%BA%D0%BE%D0%BC%D0%BF%D0%B8%D0%BB%D1%8F%D1%86%D0%B8%D1%8F)
    - [Регрессионные тесты](#%D1%80%D0%B5%D0%B3%D1%80%D0%B5%D1%81%D1%81%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5-%D1%82%D0%B5%D1%81%D1%82%D1%8B)
- [IV. Клиентские интерфейсы](#iv-%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82%D1%81%D0%BA%D0%B8%D0%B5-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81%D1%8B)
    - [libpq — библиотека для языка C](#libpq--%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D1%82%D0%B5%D0%BA%D0%B0-%D0%B4%D0%BB%D1%8F-%D1%8F%D0%B7%D1%8B%D0%BA%D0%B0-c)
    - [Большие объекты](#%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B8%D0%B5-%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D1%8B)
    - [ECPG — встраиваемый SQL в C](#ecpg--%D0%B2%D1%81%D1%82%D1%80%D0%B0%D0%B8%D0%B2%D0%B0%D0%B5%D0%BC%D1%8B%D0%B9-sql-%D0%B2-c)
    - [Информационная схема](#%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F-%D1%81%D1%85%D0%B5%D0%BC%D0%B0)
- [V. Серверное программирование](#v-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%BD%D0%BE%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5)
    - [Расширение SQL](#%D1%80%D0%B0%D1%81%D1%88%D0%B8%D1%80%D0%B5%D0%BD%D0%B8%D0%B5-sql)
    - [Триггеры](#%D1%82%D1%80%D0%B8%D0%B3%D0%B3%D0%B5%D1%80%D1%8B)
    - [Триггеры событий](#%D1%82%D1%80%D0%B8%D0%B3%D0%B3%D0%B5%D1%80%D1%8B-%D1%81%D0%BE%D0%B1%D1%8B%D1%82%D0%B8%D0%B9)
    - [Система правил](#%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0-%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB)
    - [Процедурные языки](#%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D0%BD%D1%8B%D0%B5-%D1%8F%D0%B7%D1%8B%D0%BA%D0%B8)
    - [PL/pgSQL — процедурный язык SQL](#plpgsql--%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D0%BD%D1%8B%D0%B9-%D1%8F%D0%B7%D1%8B%D0%BA-sql)
    - [PL/Tcl — процедурный язык Tcl](#pltcl--%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D0%BD%D1%8B%D0%B9-%D1%8F%D0%B7%D1%8B%D0%BA-tcl)
    - [PL/Perl — процедурный язык Perl](#plperl--%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D0%BD%D1%8B%D0%B9-%D1%8F%D0%B7%D1%8B%D0%BA-perl)
    - [PL/Python — процедурный язык Python](#plpython--%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D0%BD%D1%8B%D0%B9-%D1%8F%D0%B7%D1%8B%D0%BA-python)
    - [Интерфейс программирования сервера](#%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%B0)
    - [Фоновые рабочие процессы](#%D1%84%D0%BE%D0%BD%D0%BE%D0%B2%D1%8B%D0%B5-%D1%80%D0%B0%D0%B1%D0%BE%D1%87%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%D1%8B)
    - [Логическое декодирование](#%D0%BB%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5-%D0%B4%D0%B5%D0%BA%D0%BE%D0%B4%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5)
    - [Отслеживание прогресса репликации](#%D0%BE%D1%82%D1%81%D0%BB%D0%B5%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B5%D1%81%D1%81%D0%B0-%D1%80%D0%B5%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8)
- [VI. Справочное руководство](#vi-%D1%81%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D1%87%D0%BD%D0%BE%D0%B5-%D1%80%D1%83%D0%BA%D0%BE%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%BE)
    - [I. Команды SQL](#i-%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D1%8B-sql)
    - [II. Клиентские приложения Postgres Pro](#ii-%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82%D1%81%D0%BA%D0%B8%D0%B5-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F-postgres-pro)
    - [III. Серверные приложения Postgres Pro](#iii-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%BD%D1%8B%D0%B5-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F-postgres-pro)
- [VII. Внутреннее устройство](#vii-%D0%B2%D0%BD%D1%83%D1%82%D1%80%D0%B5%D0%BD%D0%BD%D0%B5%D0%B5-%D1%83%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%BE)
    - [Обзор внутреннего устройства Postgres Pro](#%D0%BE%D0%B1%D0%B7%D0%BE%D1%80-%D0%B2%D0%BD%D1%83%D1%82%D1%80%D0%B5%D0%BD%D0%BD%D0%B5%D0%B3%D0%BE-%D1%83%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%B0-postgres-pro)
    - [Системные каталоги](#%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%BD%D1%8B%D0%B5-%D0%BA%D0%B0%D1%82%D0%B0%D0%BB%D0%BE%D0%B3%D0%B8)
    - [Клиент-серверный протокол](#%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%BD%D1%8B%D0%B9-%D0%BF%D1%80%D0%BE%D1%82%D0%BE%D0%BA%D0%BE%D0%BB)
    - [Написание обработчика процедурного языка](#%D0%BD%D0%B0%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D0%B0-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D0%BD%D0%BE%D0%B3%D0%BE-%D1%8F%D0%B7%D1%8B%D0%BA%D0%B0)
    - [Написание обёртки сторонних данных](#%D0%BD%D0%B0%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BE%D0%B1%D1%91%D1%80%D1%82%D0%BA%D0%B8-%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%BD%D0%B8%D1%85-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
    - [Написание метода извлечения выборки таблицы](#%D0%BD%D0%B0%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BC%D0%B5%D1%82%D0%BE%D0%B4%D0%B0-%D0%B8%D0%B7%D0%B2%D0%BB%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D1%8F-%D0%B2%D1%8B%D0%B1%D0%BE%D1%80%D0%BA%D0%B8-%D1%82%D0%B0%D0%B1%D0%BB%D0%B8%D1%86%D1%8B)
    - [Написание провайдера нестандартного сканирования](#%D0%BD%D0%B0%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B2%D0%B0%D0%B9%D0%B4%D0%B5%D1%80%D0%B0-%D0%BD%D0%B5%D1%81%D1%82%D0%B0%D0%BD%D0%B4%D0%B0%D1%80%D1%82%D0%BD%D0%BE%D0%B3%D0%BE-%D1%81%D0%BA%D0%B0%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F)
    - [Генетический оптимизатор запросов](#%D0%B3%D0%B5%D0%BD%D0%B5%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9-%D0%BE%D0%BF%D1%82%D0%B8%D0%BC%D0%B8%D0%B7%D0%B0%D1%82%D0%BE%D1%80-%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D0%BE%D0%B2)
    - [Определение интерфейса для табличных методов доступа](#%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81%D0%B0-%D0%B4%D0%BB%D1%8F-%D1%82%D0%B0%D0%B1%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D1%85-%D0%BC%D0%B5%D1%82%D0%BE%D0%B4%D0%BE%D0%B2-%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B0)
    - [Определение интерфейса для индексных методов доступа](#%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81%D0%B0-%D0%B4%D0%BB%D1%8F-%D0%B8%D0%BD%D0%B4%D0%B5%D0%BA%D1%81%D0%BD%D1%8B%D1%85-%D0%BC%D0%B5%D1%82%D0%BE%D0%B4%D0%BE%D0%B2-%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B0)
    - [Унифицированные записи WAL](#%D1%83%D0%BD%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5-%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8-wal)
    - [Индексы B-деревья](#%D0%B8%D0%BD%D0%B4%D0%B5%D0%BA%D1%81%D1%8B-b-%D0%B4%D0%B5%D1%80%D0%B5%D0%B2%D1%8C%D1%8F)
    - [Индексы GiST](#%D0%B8%D0%BD%D0%B4%D0%B5%D0%BA%D1%81%D1%8B-gist)
    - [Индексы SP-GiST](#%D0%B8%D0%BD%D0%B4%D0%B5%D0%BA%D1%81%D1%8B-sp-gist)
    - [Индексы GIN](#%D0%B8%D0%BD%D0%B4%D0%B5%D0%BA%D1%81%D1%8B-gin)
    - [Индексы BRIN](#%D0%B8%D0%BD%D0%B4%D0%B5%D0%BA%D1%81%D1%8B-brin)
    - [Физическое хранение базы данных](#%D1%84%D0%B8%D0%B7%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5-%D1%85%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B1%D0%B0%D0%B7%D1%8B-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
    - [Объявление и начальное содержимое системных каталогов](#%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B8-%D0%BD%D0%B0%D1%87%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5-%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B8%D0%BC%D0%BE%D0%B5-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%BD%D1%8B%D1%85-%D0%BA%D0%B0%D1%82%D0%B0%D0%BB%D0%BE%D0%B3%D0%BE%D0%B2)
    - [Как планировщик использует статистику](#%D0%BA%D0%B0%D0%BA-%D0%BF%D0%BB%D0%B0%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D1%89%D0%B8%D0%BA-%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D0%B5%D1%82-%D1%81%D1%82%D0%B0%D1%82%D0%B8%D1%81%D1%82%D0%B8%D0%BA%D1%83)
- [VIII. Приложения](#viii-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F)
    - [A. Коды ошибок Postgres Pro](#a-%D0%BA%D0%BE%D0%B4%D1%8B-%D0%BE%D1%88%D0%B8%D0%B1%D0%BE%D0%BA-postgres-pro)
    - [B. Поддержка даты и времени](#b-%D0%BF%D0%BE%D0%B4%D0%B4%D0%B5%D1%80%D0%B6%D0%BA%D0%B0-%D0%B4%D0%B0%D1%82%D1%8B-%D0%B8-%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8)
    - [C. Ключевые слова SQL](#c-%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%B2%D1%8B%D0%B5-%D1%81%D0%BB%D0%BE%D0%B2%D0%B0-sql)
    - [D. Соответствие стандарту SQL](#d-%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B5-%D1%81%D1%82%D0%B0%D0%BD%D0%B4%D0%B0%D1%80%D1%82%D1%83-sql)
    - [E. Замечания к выпускам](#e-%D0%B7%D0%B0%D0%BC%D0%B5%D1%87%D0%B0%D0%BD%D0%B8%D1%8F-%D0%BA-%D0%B2%D1%8B%D0%BF%D1%83%D1%81%D0%BA%D0%B0%D0%BC)
    - [F. Дополнительно поставляемые модули](#f-%D0%B4%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE-%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC%D1%8B%D0%B5-%D0%BC%D0%BE%D0%B4%D1%83%D0%BB%D0%B8)
    - [G. Дополнительно поставляемые программы](#g-%D0%B4%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE-%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC%D1%8B%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B)
    - [H. Внешние проекты](#h-%D0%B2%D0%BD%D0%B5%D1%88%D0%BD%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D1%8B)
    - [I. Настройка Postgres Pro для решений 1С](#i-%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-postgres-pro-%D0%B4%D0%BB%D1%8F-%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D0%B9-1%D1%81)
    - [J. Ограничения Postgres Pro](#j-%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D0%BD%D0%B8%D1%8F-postgres-pro)
    - [K. Демонстрационная база данных «Авиаперевозки»](#k-%D0%B4%D0%B5%D0%BC%D0%BE%D0%BD%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F-%D0%B1%D0%B0%D0%B7%D0%B0-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85-%C2%AB%D0%B0%D0%B2%D0%B8%D0%B0%D0%BF%D0%B5%D1%80%D0%B5%D0%B2%D0%BE%D0%B7%D0%BA%D0%B8%C2%BB)
    - [L. Сокращения](#l-%D1%81%D0%BE%D0%BA%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D1%8F)
- [Библиография](#%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%8F)
- [Предметный указатель](#%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BD%D1%8B%D0%B9-%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D0%B5%D0%BB%D1%8C)

<!-- /TOC -->

# Предисловие

## [Что такое Postgres Pro Standard?](https://postgrespro.ru/docs/postgrespro/12/intro-whatis)

[intro-whatis](\content\intro-whatis.md)

## [Различия между Postgres Pro Standard и PostgreSQL](https://postgrespro.ru/docs/postgrespro/12/intro-pgpro-vs-pg)

[intro-pgpro-vs-pg](\content\intro-pgpro-vs-pg.md)

## [Краткая история PostgreSQL](https://postgrespro.ru/docs/postgrespro/12/history)

[history](\content\history.md)

## [Соглашения](https://postgrespro.ru/docs/postgrespro/12/notation)

[notation](\content\notation.md)

## [Как правильно сообщить об ошибке](https://postgrespro.ru/docs/postgrespro/12/bug-reporting)

[bug-reporting](\content\bug-reporting.md)

# I. Введение

## [Начало](https://postgrespro.ru/docs/postgrespro/12/tutorial-start)

[tutorial-start](\content\tutorial-start.md)

## [Язык SQL](https://postgrespro.ru/docs/postgrespro/12/tutorial-sql)

[tutorial-sql](\content\tutorial-sql.md)

## [Расширенные возможности](https://postgrespro.ru/docs/postgrespro/12/tutorial-advanced)

[tutorial-advanced](\content\tutorial-advanced.md)

# II. Язык SQL

## [Синтаксис SQL](https://postgrespro.ru/docs/postgrespro/12/sql-syntax)

[sql-syntax](\content\sql-syntax.md)

## [Определение данных](https://postgrespro.ru/docs/postgrespro/12/ddl)

[ddl](\content\ddl.md)

## [Модификация данных](https://postgrespro.ru/docs/postgrespro/12/dml)

[dml](\content\dml.md)

## [Запросы](https://postgrespro.ru/docs/postgrespro/12/queries)

[queries](\content\queries.md)

## [Типы данных](https://postgrespro.ru/docs/postgrespro/12/datatype)

[_datatype](\content\datatype.md)

## [Функции и операторы](https://postgrespro.ru/docs/postgrespro/12/functions)

[_functions](\content\functions.md)

## [Преобразование типов](https://postgrespro.ru/docs/postgrespro/12/typeconv)

[_typeconv](\content\typeconv.md)

## [Индексы](https://postgrespro.ru/docs/postgrespro/12/indexesa)

[_indexesa](\content\indexesa.md)

## [Полнотекстовый поиск](https://postgrespro.ru/docs/postgrespro/12/textsearch)

[_textsearch](\content\textsearch.md)

## [Управление конкурентным доступом](https://postgrespro.ru/docs/postgrespro/12/mvcc)

[_mvcc](\content\mvcc.md)

## [Оптимизация производительности](https://postgrespro.ru/docs/postgrespro/12/performance-tips)

[_performance-tips](\content\performance-tips.md)

## [Параллельный запрос](https://postgrespro.ru/docs/postgrespro/12/parallel-query)

[_parallel-query](\content\parallel-query.md)

# III. Администрирование сервера

## [Установка из двоичных пакетов](https://postgrespro.ru/docs/postgrespro/12/installation-bin)

[_installation-bin](\content\installation-bin.md)

## [Подготовка к работе и сопровождение сервера](https://postgrespro.ru/docs/postgrespro/12/runtime)

[_runtime](\content\runtime.md)

## [Настройка сервера](https://postgrespro.ru/docs/postgrespro/12/runtime-config)

[_runtime-config](\content\runtime-config.md)

## [Аутентификация клиентского приложения](https://postgrespro.ru/docs/postgrespro/12/client-authentication)

[_client-authentication](\content\client-authentication.md)

## [Роли базы данных](https://postgrespro.ru/docs/postgrespro/12/user-manag)

[_user-manag](\content\user-manag.md)

## [Управление базами данных](https://postgrespro.ru/docs/postgrespro/12/managing-databases)

[_managing-databases](\content\managing-databases.md)

## [Локализация](https://postgrespro.ru/docs/postgrespro/12/charset)

[_charset](\content\charset.md)

## [Регламентные задачи обслуживания базы данных](https://postgrespro.ru/docs/postgrespro/12/maintenance)

[_maintenance](\content\maintenance.md)

## [Резервное копирование и восстановление](https://postgrespro.ru/docs/postgrespro/12/backup)

[_backup](\content\backup.md)

## [Отказоустойчивость, балансировка нагрузки и репликация](https://postgrespro.ru/docs/postgrespro/12/high-availability)

[_high-availability](\content\high-availability.md)

## [Мониторинг работы СУБД](https://postgrespro.ru/docs/postgrespro/12/monitoring)

[_monitoring](\content\monitoring.md)

## [Мониторинг использования диска](https://postgrespro.ru/docs/postgrespro/12/diskusage)

[_diskusage](\content\diskusage.md)

## [Надёжность и журнал предзаписи](https://postgrespro.ru/docs/postgrespro/12/wal)

[_wal](\content\wal.md)

## [Логическая репликация](https://postgrespro.ru/docs/postgrespro/12/logical-replication)

[_logical-replication](\content\logical-replication.md)

## [JIT-компиляция](https://postgrespro.ru/docs/postgrespro/12/jit)

[_jit](\content\jit.md)

## [Регрессионные тесты](https://postgrespro.ru/docs/postgrespro/12/regress)

[_regress](\content\regress.md)

# IV. Клиентские интерфейсы

## [libpq — библиотека для языка C](https://postgrespro.ru/docs/postgrespro/12/libpq)

[_libpq](\content\libpq.md)

## [Большие объекты](https://postgrespro.ru/docs/postgrespro/12/largeobjects)

[_largeobjects](\content\largeobjects.md)

## [ECPG — встраиваемый SQL в C](https://postgrespro.ru/docs/postgrespro/12/ecpg)

[_ecpg](\content\ecpg.md)

## [Информационная схема](https://postgrespro.ru/docs/postgrespro/12/information-schema)

[_information-schema](\content\information-schema.md)

# V. Серверное программирование

## [Расширение SQL](https://postgrespro.ru/docs/postgrespro/12/extend)

[_extend](\content\extend.md)

## [Триггеры](https://postgrespro.ru/docs/postgrespro/12/triggers)

[_triggers](\content\triggers.md)

## [Триггеры событий](https://postgrespro.ru/docs/postgrespro/12/event-triggers)

[_event-triggers](\content\event-triggers.md)

## [Система правил](https://postgrespro.ru/docs/postgrespro/12/rules)

[_rules](\content\rules.md)

## [Процедурные языки](https://postgrespro.ru/docs/postgrespro/12/xplang)

[xplang](\content\xplang.md)

## [PL/pgSQL — процедурный язык SQL](https://postgrespro.ru/docs/postgrespro/12/plpgsql)

[_plpgsql](\content\plpgsql.md)

## [PL/Tcl — процедурный язык Tcl](https://postgrespro.ru/docs/postgrespro/12/pltcl)

[pltcl](\content\pltcl.md)

## [PL/Perl — процедурный язык Perl](https://postgrespro.ru/docs/postgrespro/12/plperl)

[_plperl](\content\plperl.md)

## [PL/Python — процедурный язык Python](https://postgrespro.ru/docs/postgrespro/12/plpython)

[_plpython](\content\plpython.md)

## [Интерфейс программирования сервера](https://postgrespro.ru/docs/postgrespro/12/spi)

[_spi](\content\spi.md)

## [Фоновые рабочие процессы](https://postgrespro.ru/docs/postgrespro/12/bgworker)

[_bgworker](\content\bgworker.md)

## [Логическое декодирование](https://postgrespro.ru/docs/postgrespro/12/logicaldecoding)

[_logicaldecoding](\content\logicaldecoding.md)

## [Отслеживание прогресса репликации](https://postgrespro.ru/docs/postgrespro/12/replication-origins)

[_replication-origins](\content\replication-origins.md)

# VI. Справочное руководство

## [I. Команды SQL](https://postgrespro.ru/docs/postgrespro/12/sql-commands)

[_sql-commands](\content\sql-commands.md)

## [II. Клиентские приложения Postgres Pro](https://postgrespro.ru/docs/postgrespro/12/reference-client)

[_reference-client](\content\reference-client.md)

## [III. Серверные приложения Postgres Pro](https://postgrespro.ru/docs/postgrespro/12/reference-server)

[_reference-server](\content\reference-server.md)

# VII. Внутреннее устройство

## [Обзор внутреннего устройства Postgres Pro](https://postgrespro.ru/docs/postgrespro/12/overview)

[_overview](\content\overview.md)

## [Системные каталоги](https://postgrespro.ru/docs/postgrespro/12/catalogs)

[_catalogs](\content\catalogs.md)

## [Клиент-серверный протокол](https://postgrespro.ru/docs/postgrespro/12/protocol)

[_protocol](\content\protocol.md)


## [Написание обработчика процедурного языка](https://postgrespro.ru/docs/postgrespro/12/plhandler)

[_intro](\content\plhandler.md)

## [Написание обёртки сторонних данных](https://postgrespro.ru/docs/postgrespro/12/fdwhandler)

[_fdwhandler](\content\fdwhandler.md)

## [Написание метода извлечения выборки таблицы](https://postgrespro.ru/docs/postgrespro/12/tablesample-method)

[_tablesample-method](\content\tablesample-method.md)

## [Написание провайдера нестандартного сканирования](https://postgrespro.ru/docs/postgrespro/12/custom-scan)

[_custom-scan](\content\custom-scan.md)

## [Генетический оптимизатор запросов](https://postgrespro.ru/docs/postgrespro/12/geqo)

[_geqo](\content\geqo.md)

## [Определение интерфейса для табличных методов доступа](https://postgrespro.ru/docs/postgrespro/12/tableam)

[_tableam](\content\tableam.md)

## [Определение интерфейса для индексных методов доступа](https://postgrespro.ru/docs/postgrespro/12/indexam)

[_indexam](\content\indexam.md)

## [Унифицированные записи WAL](https://postgrespro.ru/docs/postgrespro/12/generic-wal)

[_generic-wal](\content\generic-wal.md)

## [Индексы B-деревья](https://postgrespro.ru/docs/postgrespro/12/btree)

[_btree](\content\btree.md)

## [Индексы GiST](https://postgrespro.ru/docs/postgrespro/12/gist)

[_gist](\content\gist.md)

## [Индексы SP-GiST](https://postgrespro.ru/docs/postgrespro/12/spgist)

[_spgist](\content\spgist.md)

## [Индексы GIN](https://postgrespro.ru/docs/postgrespro/12/gin)

[_gin](\content\gin.md)

## [Индексы BRIN](https://postgrespro.ru/docs/postgrespro/12/brin)

[_brin](\content\brin.md)

## [Физическое хранение базы данных](https://postgrespro.ru/docs/postgrespro/12/storage)

[_storage](\content\storage.md)

## [Объявление и начальное содержимое системных каталогов](https://postgrespro.ru/docs/postgrespro/12/bki)

[_bki](\content\bki.md)

## [Как планировщик использует статистику](https://postgrespro.ru/docs/postgrespro/12/planner-stats-details)

[_planner-stats-details](\content\planner-stats-details.md)

# VIII. Приложения

## [A. Коды ошибок Postgres Pro](https://postgrespro.ru/docs/postgrespro/12/errcodes-appendix)

[_errcodes-appendix](\content\errcodes-appendix.md)

## [B. Поддержка даты и времени](https://postgrespro.ru/docs/postgrespro/12/datetime-appendix)

[_datetime-appendix](\datetime-appendix\intro.md)

## [C. Ключевые слова SQL](https://postgrespro.ru/docs/postgrespro/12/sql-keywords-appendix)

[_sql-keywords-appendix](\content\sql-keywords-appendix.md)

## [D. Соответствие стандарту SQL](https://postgrespro.ru/docs/postgrespro/12/features)

[_features](\content\features.md)

## [E. Замечания к выпускам](https://postgrespro.ru/docs/postgrespro/12/release)

[release](\content\release.md)

## [F. Дополнительно поставляемые модули](https://postgrespro.ru/docs/postgrespro/12/contrib)

[_contrib](\content\contrib.md)

## [G. Дополнительно поставляемые программы](https://postgrespro.ru/docs/postgrespro/12/contrib-prog)

[_contrib-prog](\content\contrib-prog.md)

## [H. Внешние проекты](https://postgrespro.ru/docs/postgrespro/12/external-projects)

[external-projects](\content\external-projects.md)

## [I. Настройка Postgres Pro для решений 1С](https://postgrespro.ru/docs/postgrespro/12/config-one-c)

[_config-one-c](\content\config-one-c.md)

## [J. Ограничения Postgres Pro](https://postgrespro.ru/docs/postgrespro/12/limits)

[_limits](\content\limits.md)

## [K. Демонстрационная база данных «Авиаперевозки»](https://postgrespro.ru/docs/postgrespro/12/demodb-bookings)

[_demodb-bookings](\content\demodb-bookings.md)

## [L. Сокращения](https://postgrespro.ru/docs/postgrespro/12/acronyms)

[_acronyms](\content\acronyms.md)

# [Библиография](https://postgrespro.ru/docs/postgrespro/12/biblio)

[_biblio](\content\biblio.md)

# [Предметный указатель](https://postgrespro.ru/docs/postgrespro/12/acronyms)

[_acronyms](\content\acronyms.md)