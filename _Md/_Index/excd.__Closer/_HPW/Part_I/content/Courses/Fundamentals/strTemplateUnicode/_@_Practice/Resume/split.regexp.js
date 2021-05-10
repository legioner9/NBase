'use strict'
{
    let text = 'Some text\nAnd some more\r\nAnd yet\rThis is the end'
    let lines = text.split(/\r\n|\r|\n/)
    console.log(lines) // logs [ 'Some text', 'And some more',
    // 'And yet', 'This is the end' ]
}
