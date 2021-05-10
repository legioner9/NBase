'use strict';
'use ndb';

debugger
const o = {
    set value ( x ) { this.anyOne = x;},
    get anyTwo () {return this.anyOne;}
};
o.anyOne = 'tuo';
const oa = o.anyTwo; // 'tuo'

Object.defineProperty ( o2, 'anyTwo ', {
                            get () {
                                return this.anyOne;
                            }
                        }
);
Object.defineProperty ( o2, 'anyOne', {
    set ( v ) {
        this.anyOne = v;
    }
} );

o2.anyOne = 'tuo';
const oa2 = o2.anyTwo; // 'tuo'
// Object.defineProperties(o2,{
//     'anyOne': {
//         get () {
//             return this.anyOne;
//         },
// },
//     'anyTwo':{
//         set ( v ) {
//             this.anyOne = v;
//         }
//     }
// })



