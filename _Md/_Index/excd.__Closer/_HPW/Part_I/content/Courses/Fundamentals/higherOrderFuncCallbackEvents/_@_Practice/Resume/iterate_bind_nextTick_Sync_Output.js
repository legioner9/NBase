'use strict';

{
    const iterate = ( array, listener ) => {
        const start = new Date ();
        let counter = 0;
        const res_obj = {};
        const len = array.length;
        for ( const item of array ) {
            console.log ( `from loop counter = ${ counter }` );

            const listener_start = listener.bind ( null, start, counter, len, res_obj );

            process.nextTick ( () => {
                listener_start ( item );
            } );
            counter++;
        }
    };
    const listener = ( start, counter, len, res_obj, d ) => {
        res_obj[counter] = d;
        console.log ( ( new Date () ) - start, d, 'with nextTick', { counter } );
        if ( counter === len - 1 ) return res_obj;
    };
    const res_iter = iterate ( [ 'one', 'two' ], listener );
    console.log ( res_iter ); // undefined
}
// from loop counter = 0 (first loop)
// from loop counter = 1
// undefined (synchronous output)
// 10 one with nextTick { counter: 0 }
// 15 two with nextTick { counter: 1 }

