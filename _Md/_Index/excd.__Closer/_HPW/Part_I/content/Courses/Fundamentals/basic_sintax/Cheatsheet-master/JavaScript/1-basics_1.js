'use strict';

// Constants

const SALUTATION = 'Ave';

const COLORS = [
    /* 0 */ 'black',
    /* 1 */ 'red',
    /* 2 */ 'green',
    /* 3 */ 'yellow',
    /* 4 */ 'blue',
    /* 5 */ 'magenta',
    /* 6 */ 'cyan',
    /* 7 */ 'white'
];

// Functions

const colorer = ( s, color ) => `\x1b[3${ color }m${ s }\x1b[0m`;

const colorize = name => {
    let res = '';
    const letters = name.split( '' );
    let color = 0;
    for( const letter of letters ){
        res += colorer( letter, color++ );
        if( color > COLORS.length ) color = 0;
    }
    return res;
};

const greetings = name => (
    name.includes( 'Augustus' ) ?
        `${ SALUTATION }, ${ colorize( name ) }!` :
        `Hello, ${ name }!`
);

// Usage

const fullName = 'Marcus Aurelius Antoninus Augustus';
const gt = greetings( fullName );
// gt = "Ave, [30mM[0m[31ma[0m[32mr[0m[33mc[0m[34mu[0m[35ms[0m[36m [0m[37mA[0m[38mu[0m[30mr[0m[31me[0m[32ml[0m[33mi[0m[34mu[0m[35ms[0m[36m [0m[37mA[0m[38mn[0m[30mt[0m[31mo[0m[32mn[0m[33mi[0m[34mn[0m[35mu[0m[36ms[0m[37m [0m[38mA[0m[30mu[0m[31mg[0m[32mu[0m[33ms[0m[34mt[0m[35mu[0m[36ms[0m!", greetings = name => {…}
// Local
// COLORS: (8) ["black", "red", "green", "yellow", "blue", "magenta", "cyan", "white"]
// SALUTAT
debugger
console.log( gt );

const shortName = 'Marcus Aurelius';
console.log( greetings( shortName ) );
