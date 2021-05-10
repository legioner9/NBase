'use strict';

const city = 'Kiev';
const year = 988;
const flag = true;

const sameCity = 'Kiev';
const nextYear = 989;

console.log( '\n[ === ]\n' );

function greeting( person ){
    let names = person
        ? ( person.name
            ? person.name
            : 'very stranger' )
        : "stranger";
    return "Howdy, " + names;
}

const gr = greeting( { name: 'Alice' } );
const gr2 = greeting();
const gr3 = greeting( null );
const gr4 = greeting( { noname: 'jomy' } );

function chain_ternary( a ){
    return a ? ( a > 3 ? 'a > 3'
        : a < 3 ? 'a < 3'
            : 'a === 3' )
        : 'a is undefined';
}

const w1 = chain_ternary( 4 );
const w2 = chain_ternary( 2 );
const w3 = chain_ternary();

const e1 = 2 == '2';
const e2 = void ( 2 == '2' );
debugger
const a = () => 10;
const uu = a();
const b = void a();

debugger