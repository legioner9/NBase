'use strict';

const fn = () => {
    console.log ( 'Generate cache' );
    const cache = {};
    return key => {
        let res = cache[key];
        if ( res ) {
            console.log ( 'From cache' );
            return res;
        }
        else {
            console.log ( 'Calculate and save to cache' );
            res = 'value' + key;
            cache[key] = res;
            return res;
        }
    };
};

const f1 = fn ();
const f2 = fn ();

f1 ( 1 );
f1 ( 2 );
f1 ( 1 );
f1 ( 2 );

f2 ( 1 );
f2 ( 2 );
f2 ( 1 );
f2 ( 2 );
debugger;
const caching = ( f = new Function (null) ) => {
    const cache = new Map (null);
    return ( key = 0 ) => {
        if ( cache.has ( key ) ) {
            debugger
            const res = cache.get ( key );
            console.log ( `${ key } => ${ res } from cache )))` );
            return res;
        }
        else {
            debugger
            const res = f ( key );
            console.log ( `${ key } => ${ res } from Function )))` );
            cache.set ( key, res );
            return res;
        }
    };
};

const multy_cach = caching ( x => x * 2 );
const multy_cach_2 = multy_cach ( 2 );
const multy_cach_2_1 = multy_cach ( 2 );
const multy_cach_3 = multy_cach ( 3 );
