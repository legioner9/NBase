'use strict';

const partial_first = ( fn, x ) => ( ...arg ) => fn ( x, ...arg );

const sum = ( ...arg ) => arg.reduce ( ( acc, item ) => acc + item );
debugger
const sum_9 = partial_first ( sum, 9 );

const s1 = sum_9 ( 2, 3 ); // s1: 14


