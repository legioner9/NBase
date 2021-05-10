'use strict';
'use ndb'

const p0 = {
    x: 10,
    y: 20,

    move ( x, y ) {
        this.x += x;
        this.y += y;
    },
};

const ps0_1 = p0.toString ();
const ps0_2 = p0 + '';
// ps0_1: "[object Object]"
// ps0_2: "[object Object]"

const p1 = {
    x: 10,
    y: 20,

    move ( x, y ) {
        this.x += x;
        this.y += y;
    },

    toString () {
        return `[${ this.x }, ${ this.y }]`;
    },
};
const ps_1 = p1.toString ();
const ps_2 = p1 + '';
// ps_1: "[10, 20]"
// ps_2: "[10, 20]"
debugger
p1.move ( -5, 10 );

console.log ( p1 );
console.log ( p1.toString () );
console.log ( p1 + '' );
