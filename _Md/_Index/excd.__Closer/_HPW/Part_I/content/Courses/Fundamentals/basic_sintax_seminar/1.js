'use strict';
'use ndb';

// direct define object
const a_direct = {
    name: 'dim',
    age: 24,
    field_meth: d => console.log ( d ),
    inner_meth () {
        const obj = {
            'this.age': this.age,
            'this.name': this.name
        };
        this.field_meth ( obj );
    }
};

const { d1, d2 } = a_direct;
a_direct.inner_meth ();

// direct func object
const a_func = ( a, b ) => ( {
    'a': a,
    'b': b,
    field_meth: d => console.log ( d ),
    inner_meth () {
        const { d1, d2 } = this;
        this.field_meth ( { d1, d2 } );
    }
} );

const a_func_ins = a_func ( 'dis', 19 );
a_func_ins.inner_meth ();

// constructor prototype (new func)
const a_func_proto = function ( a, b ) {
    this._a = a;
    this._b = b;
    this._field_meth = d => console.log ( d );
    this.inner_meth = () => {
        const { _a, _b } = this;
        this._field_meth ( { _a, _b } );
    };
};

const a_proto = new a_func_proto ( 'proto', 36 );
a_proto.inner_meth ();

// class (new class)
const A = class { // define prototype
    constructor ( a, b ) {
        this._a = a;
        this._b = b;
        this._field_meth = d => console.log ( d );
    }

    inner_meth () { // in prototype
        const obj = {
            'a': this._a,
            'b': this._b,
        };
        this._field_meth ( obj );
    }
};

// new define object
const a_class = new A ( 'dik', 26 );
a_class.inner_meth ();

debugger
// NBase/_Md/_Index/_HPW/_Repos_HowProgrammingWorks_13_01_2020/Function-master/JavaScript/9-this.js
const Context = function () { // function as
    this.name = 'Marcus';
    const city = {
        name: 'Kiev',
        year: 482,
        f1: function () {
            return this.name; // locking name: 'Kiev'
        },
        f2: () => {
            return this.name; // locking this.name = 'Marcus
        },
        f3 () {
            return this.name; // locking name: 'Kiev'
        }
    };
    return city;
};

const city = new Context ();

const q1 = ( 'city.f1() = ' + city.f1 () );
const q2 = ( 'city.f2() = ' + city.f2 () );
const q3 = ( 'city.f3() = ' + city.f3 () );