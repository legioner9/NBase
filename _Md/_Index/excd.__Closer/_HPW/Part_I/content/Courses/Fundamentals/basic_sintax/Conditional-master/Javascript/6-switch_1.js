'use strict';

// Use switch

const getDay = n => {
    switch(n){
        case 1:{
            console.log( 'arg = 1' );
            return 'Monday';
        }
        case 2:
            return 'Tuesday';
        case 3:
            return 'Wednesday';
        case 4:
            return 'Thursday';
        case 5:
            return 'Friday';
        case 6:
            return 'Saturday';
        case 7:
            return 'Sunday';
        default:
            return new Error( `Invalid day number: ${ n }` );
    }
};
getDay( 1 );

console.log( getDay( 2 ) );

// Use collection

const days = [
    'Monday', 'Tuesday', 'Wednesday', 'Thursday',
    'Friday', 'Saturday', 'Sunday'
];

const getDayWithoutSwitch = n => (
    n > 0 && n <= days.length ?
        days[n - 1] :
        new Error( `Invalid day number: ${ n }` )
);

const getDayNumber = name => {
    const n = days.indexOf( name );
    return n !== -1 ? n : new Error( `Invalid day name: ${ name }` );
};

console.log( getDayWithoutSwitch( 2 ) );
console.log( getDayWithoutSwitch( 20 ) );
console.log( getDayNumber( 'Sunday' ) );

function checkArgs( a ){
    switch(a){
        case 'a':{
            console.log( 'a - true' );
            return a;
        }
        default:
            return new Error( 'args is not \'a\'' );
    }
}
debugger

let u = 'u';
switch(u){
    case 'u':{
        console.log( 'args is \'u\'' );
    }
        break;
    default:{
        console.log( 'args is not \'u\'' );
        u = 'u';
        console.log( 'fixed => u = \'u\' ' );
    }

}

const e = new Error( 'name error = e' );
debugger
throw e;

