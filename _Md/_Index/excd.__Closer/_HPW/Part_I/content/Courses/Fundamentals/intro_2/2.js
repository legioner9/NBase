'use strict';

// https://www.youtube.com/watch?v=PzlLXQ3RaDs 8:10
// #__a.step
// data str :: {a:'string'}
// #__f.expr+
const capitalize = s => {
    console.trace( 'trase from capitalaize' ); // +
    console.count( 'counter_1' ); // +
    return ( s.charAt( 0 ).toUpperCase() + s.slice( 1 ) );
};
// #__fd.expr - func define
const welcome = ( { name } ) => `Ave ${ capitalize( name ) }!`;
debugger
// #__fc.outchain.log - func call
console.log( welcome( { name: 'patron' } ) );