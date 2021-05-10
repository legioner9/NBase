'use strict';

const add = ( a, b ) => a + b;
console.log( typeof add );

console.log( 'Add numbers Add numbers: 5 + 2 = ' + add( 5, 2 ) );
console.log( 'Add floats add float: 5.1 + 2.3 = ' + add( 5.1, 2.3 ) );
console.log( `Concatenate concatenate: '5' + '2' = '${ add( '5', '2' ) }'` );
console.log( 'Subtraction subtraction: 5 + (-2) = ' + add( 5, -2 ) );
