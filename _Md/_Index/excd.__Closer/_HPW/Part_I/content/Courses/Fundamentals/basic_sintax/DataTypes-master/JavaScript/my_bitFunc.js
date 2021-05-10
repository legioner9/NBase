'use strict';
'use ndb';

const a = ( 36 ).toString( 2 );
const b = ( 8 ).toString( 2 );
const a_b = ( a & b );

const access_1 = 2;
const access_2 = 4;
const access_3 = 8;

const root_guest_to_1_and_3 = access_1 | access_3;
const access_2_to_guest = (
    root_guest_to_1_and_3 & access_2 ?
        'guest have access_2' :
        'guest have not access_2' );

// Rounding
const f = 12.45 ^ 0; // f === 12
// check for -1

const zero = ~( -1 ); // zero === 0
if( ~'ardo'.indexOf( 'b' ) ) console.log( 'a is present in ardo ' );
else console.log( 'b is not present in ardo ' );

const a_36 = 2 ** 36;
const ai_36 = a_36^0
debugger

