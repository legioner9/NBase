'use stict';
'use ndb';

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
    'creator_from_parent': {
        value: 'it s Parent',
    }
} );
const Child = function ( a, b, c ) {
    Parent.call ( this, a, b );
    this._c = c;
    this.multySum = ( this._a + this._b ) * this.c;
    this.sum = function () {
        return ( this._a + this._b - this.c );
    };
};
Object.defineProperties ( Child.prototype, {
    'multySumma': {
        get () {
            return `MultySumma = ${ ( this._a + this._b ) * this._c }`;
        }
        ,
        set ( d ) {
            const { a, b, c } = d;
            this._a = a;
            this._b = b;
            this._c = c;
        }
    },
    'creator_from_child': {
        value: 'it s Child',
    }
} );
Object.setPrototypeOf ( Child.prototype, Parent.prototype );

const child = new Child ( 3, 7, 2 );

debugger
child.multySumma = { a: 4, b: 4, c: 3 };
const r1 = child.multySumma;
const c1 = child.creator_from_child;
child.summa = { a: 2, b: 3 };
const r2 = child.summa;
const c2 = child.creator_from_parent;
debugger
// c1: "it s Child"
// c2: "it s Parent"
// r1: "MultySumma = 24"
// r2: "Summa = 5"

