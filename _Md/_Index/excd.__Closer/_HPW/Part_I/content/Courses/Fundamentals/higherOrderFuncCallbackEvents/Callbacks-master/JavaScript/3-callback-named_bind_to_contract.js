'use strict';

const fs = require ( 'fs' );
const path = require ( 'path' );

const print = ( fileName, day, err, data ) => {
    console.log ( { day } );
    console.log ( { fileName } );
    console.log ( { lines: data.split ( '\n' ).length } );
};

const fileName = path.join ( __dirname, '1-callback.js' );
const day = ( new Date () ).getDay();

const callback = print.bind ( null, fileName, day );
fs.readFile ( fileName, 'utf8', callback );

