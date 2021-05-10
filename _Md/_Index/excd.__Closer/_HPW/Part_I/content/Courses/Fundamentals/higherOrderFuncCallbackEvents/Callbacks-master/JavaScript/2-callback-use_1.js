'use strict';

const fs = require ( 'fs' );
const path = require ( 'path' );
debugger
fs.readFile ( path.join ( __dirname, '1-callback.js' ), 'utf8', ( err, data ) => {
    console.log ( data );
    console.log ( { lines: data.split ( '\n' ).length } );
} );

console.log ( 'end' );
