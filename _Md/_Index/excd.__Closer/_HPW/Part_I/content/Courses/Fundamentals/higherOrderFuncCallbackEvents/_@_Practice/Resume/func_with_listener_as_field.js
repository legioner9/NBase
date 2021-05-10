'use strict';

const adder = initial => {
    let value = initial;
    const add = delta => {
        value += delta;
        if ( value >= add.maxValue ) add.maxEvent ( value );
        return add;
    };
    add.max = ( max, event ) => {
        add.maxValue = max;
        add.maxEvent = event;
        return add;
    };
    return add;
};

// Usage

const maxReached = ( value = 0 ) => {
    console.log ( 'max value reached, value: ' + value );
};

const a1 = adder ( 10 ).max ( 100, maxReached ) ( -12 );

a1 ( 25 );
a1 ( 50 );
a1 ( 75 );
a1 ( 100 );
a1 ( -200 ) ( 50 ) ( 30 );

{
    const add_init = init_value => {
        let initial = init_value; // closure init_objects
        const add = delta => {
            initial += delta; // define mane func MF
            if ( add.maxValue <= initial ) add.maxEvent ( initial );
            // define listener LN predicate
            return add;
        };
        add.max = ( max, event ) => { // inject LN and variable
            // for LN predicate as MF.fields
            add.maxValue = max;
            add.maxEvent = event;
            return add;
        };
        return add;
    };

    const reachMax = d => console.log ( 'reach Max', d );
    debugger
    const initter = add_init ( 10 ).max ( 100, reachMax ) ( -19 );
    initter ( 200 ) ( -200 );
}
