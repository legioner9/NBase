'use strict';

const logger = kind => {
    const color = logger.colors[kind] || logger.colors.info;
    return s => {
        const date = new Date ().toISOString ();
        console.log ( color + date + '\t' + s );
    };
};

logger.colors = {
    warning: '\x1b[1;33m',
    error: '\x1b[0;31m',
    info: '\x1b[1;37m',
};

// Usage

const warning = logger ( 'warning' );
const error = logger ( 'error' );
const debug = logger ( 'debug' );
const slow = logger ( 'slow' );

slow ( 'I am slow logger' );
warning ( 'Hello' );
error ( 'World' );
debug ( 'Bye!' );

const mix = ( key = '' ) => {
    const add = mix.items[key] || 'WTF?';
    return ( x = '' ) => x + add;
};

mix.items = {
    a: 'aa',
    b: 'bb',
};

const mix_a = mix ( 'a' );
const mix_a_call = mix_a ( 'call' );
