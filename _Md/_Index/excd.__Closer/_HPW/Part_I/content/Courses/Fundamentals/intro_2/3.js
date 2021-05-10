'use strict';

// https://www.youtube.com/watch?v=PzlLXQ3RaDs 8:10
// #__a.chane
// data str :: {a:'string'}
// #__fd.expr
const capitalize = s => s.charAt( 0 ).toUpperCase() + s.slice( 1 );
// #__fd.bl+step
const welcome = ( { name } ) => {
    const res = `Ave ${ capitalize( name ) }!`;
    console.log( res );
};
debugger
// #__fc.outchain
welcome( { name: 'patron' } );