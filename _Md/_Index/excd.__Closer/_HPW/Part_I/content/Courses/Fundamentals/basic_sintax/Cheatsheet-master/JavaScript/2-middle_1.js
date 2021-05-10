// 'use strict';
'use ndb';

const adder = ( initial = 0 ) => ( {
    value: initial,
    steps: [ initial ],
    add( value ){
        this.steps.push( value );
        this.value += value;
        return this;
    }
} );

const asser = ( init_str = '' ) => ( { // return object
    value: init_str, // init value
    log_arr: [ init_str ], // init log
    ass( any_str ){
        this.value += any_str;
        this.log_arr.push( any_str ); // modified log
        return this;
    }
} );

const Adder = class{
    constructor( initial = 0 ){
        // steps - inner log
        this.steps = [ initial ];
        this.value = initial;
    }

// me.mo
    add( value ){
        // + modified log
        this.steps.push( value );
        this.value += value;
        return this;
    }
};

const Asser = class{
    constructor( init_str ){
        this.value = init_str; // init value
        this.log_arr = [ init_str ]; // init log
    }

    ass( any_str ){
        this.value += any_str; // modified value
        this.log_arr.push( any_str ); // modified log
        return this;
    }
};

const asser_fun = asser( 'start function' );
const asser_class = new Asser( 'stat class' );

asser_fun.ass( 'sub func' );
asser_class.ass( 'fub class' );
// Usage
//
debugger
let adder_func;
{
    const adder_5 = adder( 5 );
    adder_5.add( -8 ).add( 11 );
    const { value, steps } = adder_5;
    const [ a, b, c ] = steps;
    adder_func = adder_5;

}
let adder_class;
{
    const adder_5 = new Adder( 5 );
    adder_5.add( -8 ).add( 11 );
    const { value, steps } = adder_5;
    const [ a, b, c ] = steps;
    adder_class = adder_5;

}

// differ adder_func and adder_class objects
debugger;

