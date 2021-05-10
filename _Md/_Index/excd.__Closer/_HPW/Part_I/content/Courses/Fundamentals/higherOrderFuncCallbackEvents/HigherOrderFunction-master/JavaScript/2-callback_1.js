'use strict';

const fn = ( par, callback ) => {
    if ( !par ) {
        callback ( new Error ( 'Parameter needed' ) );
        return;
    }
    callback ( null, `Data ${ par }` );
    return 'Value';
};

const res = fn ( 'example', ( err, data ) => {
    if ( err ) throw err;
    console.dir ( { data } );
} );

console.dir ( { res } );

const cb_fn = ( arg, callback ) => {
    const predicate = x => {
        return Boolean;
    };
    if ( predicate ( arg ) ) {
        callback ( new Error ( 'any' ) );
    }
    else {
        callback ( null, arg );
    }
};
