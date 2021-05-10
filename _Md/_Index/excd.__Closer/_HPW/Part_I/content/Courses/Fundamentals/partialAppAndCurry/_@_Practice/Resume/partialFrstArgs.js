'use strict';

const partial_first = ( fn, ... args ) => ( ...rest ) => fn ( ... args, ...rest );

const sum = ( ...arg ) => arg.reduce ( ( acc, item ) => acc + item );
debugger
const sum_9 = partial_first ( sum, 9 , 1);

const s1 = sum_9 ( 2, 3 ); // s1: 15


