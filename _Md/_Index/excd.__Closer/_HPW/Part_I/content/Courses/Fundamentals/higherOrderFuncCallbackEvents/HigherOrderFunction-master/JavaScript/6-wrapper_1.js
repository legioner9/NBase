'use strict';

const logable = fn => ( ...args ) => {
    const res = fn ( ...args );
    console.log ( `Call: ${ fn.name }(${ args.join ( ', ' ) }) Result: ${ res }` );
    return res;
};

// Usage

const sum = ( a, b ) => a + b;

const logableSum = logable ( sum );
const a = logableSum ( 3, 5 );
const b = logableSum ( 7, 2 );
const c = logableSum ( 1, -1 );
console.dir ( { a, b, c } );
debugger;
const wrap_log_own = f => arg => {
    console.log ( `f.name = ${ f.name }, args = ${ arg }` );
    return f ( arg );
};

const f = wrap_log_own ( function sum ( x = 0 ) {return x * 2;} );
const f2 = f ( 2 );
const f3 = f ( 3 );
