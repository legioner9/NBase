'use strict';
'use ndb';
/**
 * partial application sum
 * @param x
 * @returns {function(*): *}
 */
const add = x => y => {
    const z = x + y;
    console.log ( x + '+' + y + '=' + z );
    return z;
};

// const add = x => y => x + y;

// Usage
debugger
const res = add ( 3 ) ( 6 );
console.log ( res );
debugger

