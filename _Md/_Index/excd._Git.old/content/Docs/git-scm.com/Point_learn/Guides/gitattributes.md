# [gitattributes](https://git-scm.com/docs/gitattributes)

## NAME
gitattributes - Defining attributes per path

## SYNOPSIS
$GIT_DIR/info/attributes, .gitattributes

## DESCRIPTION
A gitattributes file is a simple text file that gives attributes to pathnames.

Each line in gitattributes file is of form:

pattern attr1 attr2 ...

То есть шаблон, за которым следует список атрибутов, разделенных пробелами. Начальные и конечные пробелы игнорируются. Строки, начинающиеся с символа #, игнорируются. Шаблоны, начинающиеся с двойной кавычки, цитируются в стиле C. Когда шаблон соответствует рассматриваемому пути, ему присваиваются атрибуты, перечисленные в строке.