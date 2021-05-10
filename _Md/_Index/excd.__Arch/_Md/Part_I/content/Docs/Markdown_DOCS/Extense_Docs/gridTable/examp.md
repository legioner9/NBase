http://bru.by/content/admin/mdhelp

# grid tables
+---------+---------+
| Header  | Header  |
| Column1 | Column2 |
+=========+=========+
| 1. ab   | > This is a quote
| 2. cde  | > For the second column 
| 3. f    |
+---------+---------+
| Second row spanning
| on two columns
+---------+---------+
| Back    |         |
| to      |         |
| one     |         |
| column  |         |

+---------+---------+---------+
| Col1    | Col2    | Col3    |
| Col1a   | Col2a   | Col3a   |
| Col1b             | Col3b   |
| Col1c                       |

+---------+---------+
| This is | a table with a longer text in the second column

+-----+:---:+-----+
|  A  |  B  |  C  |
+-----+-----+-----+

+---+---+---+
| AAAAA | B |
+---+---+ B +
| D | E | B |
+ D +---+---+
| D | CCCCC |
+---+---+---+



+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|           |           |        |           |        |              |           |
+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+
|           |           |        |           |        |              |           |
+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+
|           |           |        |           |        |              |           |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|           |           |        |           |        |              |           |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|           |           |        |           |        |              |           |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|           |           |        |           |        |              |           |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|           |           |        |           |        |              |           |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|           |           |        |           |        |              |           |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|           |           |        |           |        |              |           |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|           |           |        |           |        |              |           |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|           |           |        |           |        |              |           |




# pipe tables

a | b
-- | -
0 | 1

a | b
-- | --
-- | --

a  | b 
-- | --
0  | 1 | 2
3  | 4
5  |

  a     | b     |
--      | --
| 0     | 1
| 2     | 3     |
  4     | 5 
  
  
| a
| --
| b
| c   

# user blicks
:::spoiler
This is a *spoiler*
:::


- This is a list
  :::spoiler
  This is a spoiler
  - item1
  - item2
  :::
- A second item in the list

:::spoiler {#myspoiler myprop=yes}
This is a spoiler
:::

:::mycontainer
<p>This is a raw spoiler</p>
:::

## inline UB

This is a text ::with special emphasis::

This is a text ::with special emphasis::{#myId .myemphasis}

# definition list

Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.

Orange
:   The fruit of an evergreen tree of the genus Citrus.

Term 1

:   This is a definition with two paragraphs. Lorem ipsum 
    dolor sit amet, consectetuer adipiscing elit. Aliquam 
    hendrerit mi posuere lectus.

    Vestibulum enim wisi, viverra nec, fringilla in, laoreet
    vitae, risus.

:   Second definition for term 1, also wrapped in a paragraph
    because of the blank line preceding it.

Term 2

:   This definition has a code block, a blockquote and a list.

        code block.

    > block quote
    > on two lines.

    1.  first list item
    2.  second list item

my Terminal

:   This definition has a code block, a blockquote and a list.

            code block.

1.  First

2.  Second

    Term 1
    :   Definition
    
        tgrtg
        
        dewqde

    Term 2
    :   Second Definition
    
# strikethrough text

The following text ~~is deleted~~

# up and lower index

H~2~O is a liquid. 2^10^ is 1024

# undelined text

++Inserted text++

# grouping elements tag \<figure>

^^^
This is a figure
^^^ This is a *caption*

# tag \<footer>
^^ This is a footer
^^ multi-line

# tag \<cite>
This is a ""citation of someone""

That's some text with a footnote.[^1]

That's some text with a footnote.[^2]

[^2]: And that's the footnote.

    That's the second paragraph.

[^1]: And that's the footnote.




# fdcs  {#linc}

## The Site ##    {.main}
[Link back to header 4](#linc)








