'use strict';

const Context = function () {
    this.name = 'Marcus';
    const city = {
        name: 'Kiev',
        year: 482,
        f1: function () {
            return this.name;
        },
        f2: () => {
            return this.name;
        },
        f3 () {
            return this.name;
        }
    };
    return city;
};
debugger
const city = new Context ();

// const r_city = Context (); Cannot set property 'name' of undefined
//

const Context_2 = function () {
    this.name = 'Marcus';
    const city = {
        name: 'Kiev',
        year: 482,
        f1: function () {
            return this.name;
        },
        f2: () => {
            return this.name;
        },
        f3 () {
            return this.name;
        }
    };

};

const city_2 = new Context_2 ();
debugger

// type this

const Th_f_1 = function ( a ) {
    this._a = a;
    this.meth = function () {
        return this._a - 10;
    };
};
const RTh_f_1 = Th_f_1 ( 10 );

