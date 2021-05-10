'use strict';
// https://www.youtube.com/watch?v=PzlLXQ3RaDs 5:50
// block #__f.bl.step
const wecome = person => {
    const { name } = person;
    const first = name.charAt ( 0 ).toUpperCase ();
    const rest = name.slice ( 1 );
    const capitalized = first + rest;
    console.log ( `Ave, ${ capitalized }!` );
};

wecome ( { name: 'patron' } );
