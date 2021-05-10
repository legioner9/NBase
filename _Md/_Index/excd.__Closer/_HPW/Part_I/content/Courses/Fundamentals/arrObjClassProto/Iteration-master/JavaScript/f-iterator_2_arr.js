'use strict';

const range = [ 2, 5, 7 ];

console.dir ( {
                  range,
                  names: Object.getOwnPropertyNames ( range ),
                  symbols: Object.getOwnPropertySymbols ( range.__proto__ ),
                    // symbols: Array(2)
                    // 0: Symbol(Symbol.iterator)
                    // 1: Symbol(Symbol.unscopables)
                    // length: 2
              } );

for ( const value of range ) {
    console.log ( value );
}

for ( const i in range ) {
    console.log (i, range[i]);
}
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
