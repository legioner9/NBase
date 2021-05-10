'use stict'
'use ndb'

const Parent = class {
    constructor (a,b) {
        this._a = a;
        this._b = b;
        this.sum = function () {
            return this._a + this._b;
        };
    }

    get summa(){
        return `Summa = ${ this._a + this._b }`;
    }

    set summa(d ){
        const { a, b } = d;
        this._a = a;
        this._b = b;
    }
};

const par = new Parent ( 3, 7 );
debugger
