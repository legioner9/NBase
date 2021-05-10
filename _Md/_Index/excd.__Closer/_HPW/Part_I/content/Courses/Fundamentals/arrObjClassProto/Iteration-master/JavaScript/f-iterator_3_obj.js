'use strict';
'use ndb';
debugger
const range = {
    1: 1, a: 'a', b: [ 'bb' ], c: { cc: 'ccc' },
    [Symbol.iterator]: function () {
        const keys = Object.keys ( this );
        let i = 0;
        return {
            next: () => {
                if ( i < keys.length ) {
                    const res = {
                        value: [ keys[i], this[keys[i]] ],
                        done: i === keys.length,
                    };
                    i++;
                    return res;
                }
                else {
                    return {
                        value: undefined,
                        done: true,
                    };
                }
            }
        };
    }
};

console.dir ( {
                  range,
                  names: Object.getOwnPropertyNames ( range ),
                  symbols: Object.getOwnPropertySymbols ( range ),
              } );
// names: (4) ["1", "a", "b", "c"]
// range: {1: 1, a: "a", b: Array(1), c: {…}, Symbol(Symbol.iterator): ƒ}
// symbols: [Symbol(Symbol.iterator)]
debugger
const in_range = [];
for ( const i in range ) {
    in_range.push ( [ i, range[i] ] );
}
//
debugger
const of_range = [];
for ( const value of range ) {
    of_range.push ( value );
}
// of_range === in_range: Array(4)
// 0: (2) ["1", 1]
// 1: (2) ["a", "a"]
// 2: (2) ["b", Array(1)]
// 3: (2) ["c", {…}]
debugger
// DO'Nt Work((( this:
// const Polyfill_IterateOf = () => {
//     const arr_res = [];
//     const range__proto__ = range.__proto__
//     const range_iterator = range__proto__[Symbol.iterator] ();
//         // range_iterator: Array Iterator
//         // __proto__: Array Iterator
//         // next: ƒ next()
//         // Symbol(Symbol.toStringTag): "Array Iterator"
//
//     for ( let next = range_iterator.next () ; !next.done  ; next = range_iterator.next () ) {
//         arr_res.push ( [ next.done, next.value ] )
//     }
//     return arr_res;
// };
// const res_ofObj = Polyfill_IterateOf ();
// debugger
