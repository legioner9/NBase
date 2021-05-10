'use strict';

{
    const { EventEmitter } = require ( 'events' );

    const emitter = new EventEmitter ();

    emitter.on ( 'new city', city => {
        console.log ( 'Emitted city:', city );
    } );

    emitter.on ( 'data', array => {
        console.log ( array.reduce ( ( a, b ) => a + b ) );
    } );

    emitter.emit ( 'new city', 'Delhi' );
    emitter.emit ( 'new city', 'Berlin' );
    emitter.emit ( 'new city', 'Tokyo' );
    emitter.emit ( 'data', [ 5, 10, 7, -3 ] );
}

{
    const { EventEmitter } = require ( 'events' );
    const event = new EventEmitter;
    debugger
    event.on ( 'data', d => console.log ( d ) );
    event.emit ( 'data', 'Hello from emit' );

}
