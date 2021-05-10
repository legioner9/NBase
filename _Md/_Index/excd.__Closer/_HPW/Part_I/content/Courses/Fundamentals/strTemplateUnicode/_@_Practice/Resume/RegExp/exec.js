'use strict'

{
    let text = 'Образец text на русском языке'
    let regex = /[\u0400-\u04FF]+/g

    let match = regex.exec(text)
    debugger
    console.log(match[0])        // logs 'Образец'
    console.log(regex.lastIndex) // logs '7'

    let match2 = regex.exec(text)
    console.log(match2[0])       // logs 'на' [did not log 'text']
    console.log(regex.lastIndex) // logs '15'

// and so on
}
