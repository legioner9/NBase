'use strict';
'use ndb';
const log = ( s, i ) => {
    console.log ( i, s );
    return s;
};

const f11 = x => x * 2;
const f21 = x => ++x;

const compose = ( ...funcs ) => x => funcs.reduce ( ( v, f ) => f ( v ), x );

const f3 = compose ( f11, f21 );

const res1 = [ 7, 10, 1, 5, 2 ]
    .filter ( x => x > 4 )
    .map ( f3 )
    .reduce ( ( acc, val ) => acc + val );

console.log ( res1 );
console.log ();

[ 7, 10, 1, 5, 2 ]
    .map ( log )
    .map ( x => x * 2 )
    .map ( log )
    .map ( x => ++x )
    .map ( log );

/**
 * @___Fj{Compose_func_simple}{NB,HPW,Fundamentals,Iteration-master }{dep=1}{NBase/_Md/_Index/_HPW/Part_I/content/Courses/Fundamentals/arrObjClassProto/Iteration-master/JavaScript/a-map_compose.js}
 * @param funcs
 * @returns {function(*=): *}
 * @constructor
 */
const Compose_func_simple = ( ...funcs ) => x => reduce ( ( f, v ) => f ( v ), x );

const f1 = x => x * 2;
const f2 = x => x + 3;
debugger
const comp = compose ( f1, f2 );
const result = comp ( 3 ); // 9

const arr_init = [ 0, 3, 5 ];
const res_0 = arr_init
    .filter ( d => d > 2 )
    .map ( comp )
    .reduce ( ( acc, item ) => acc + 2 * item ); // 35
debugger
