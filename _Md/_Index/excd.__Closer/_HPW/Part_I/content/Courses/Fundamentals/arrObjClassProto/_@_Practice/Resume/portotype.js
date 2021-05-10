'use stict'
'use ndb'

const Parent = function ( a, b ) {
    this._a = a;
    this._b = b;
    this.sum = function () {
        return this._a + this._b;
    };
};
Object.defineProperties ( Parent.prototype, {
    'summa': {
        get () {
            return `Summa = ${ this._a + this._b }`;
        }
        ,
        set ( d ) {
            const { a, b } = d;
            this._a = a;
            this._b = b;
        }
    },
    'creator':{
        value : 'it s I',
    }
} )


const obj = {
    a: 5,
    set a_set ( _a ) {
        this.a = _a;
    },
    get a_get () {
        return `a = ${ this.a }`;
    }
};

const par = new Parent ( 3, 7 );
debugger
