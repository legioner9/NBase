'use strict';
'use ndb';

// undefined
let emptyScalar;
const t_emptyString = typeof '';
const t_emptyScalar = typeof emptyScalar;
const t_isNaNEmpStr = isNaN( '' ); // ('') toNumber==> ?
const t_isNaNRealStr = isNaN( 'frger' ); // 'dsc' toNumber==> NaN
const t_Number_isNaN = Number.isNaN( 'rtet' );
const t_null = typeof null;

const t_is_Nan = typeof NaN;

const t_is_undefined = typeof undefined;

console.log( Infinity, -Infinity, typeof Infinity );
const t_is_Infinity = typeof Infinity;


const ini_arr = [ 1, 2, 3 ];
const res_arr = ini_arr.map( a=>a );
const bul = ini_arr === res_arr;
debugger;
const s = (
    emptyObject === null ?
        'emptyObject is null' :
        'emptyObject is not null'
);
console.log( s );
