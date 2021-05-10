'use strict';

const MAX_VALUE = 10;

console.log( 'Begin' );
for( let i = 0, count = 0 ; ( i < MAX_VALUE && count < 80 ); i++ , count = ( count + 1 ) * 2 ){
    console.log( { i, date: new Date(), count } );
}
console.log( 'The end' );
