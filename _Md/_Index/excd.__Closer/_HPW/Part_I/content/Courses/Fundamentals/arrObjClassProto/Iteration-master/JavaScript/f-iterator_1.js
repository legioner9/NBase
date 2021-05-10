'use strict';

/**
 * @___Fj{ExampSymbolIterator}{NB,HPW,Fundamentals, }{dep=1}{NBase/_Md/_Index/_HPW/Part_I/content/Courses/Fundamentals/arrObjClassProto/Iteration-master/JavaScript/f-iterator_1.js}
 * @returns {{next: (function(): {value: number, done: boolean})}|{[p: string]: number, [Symbol.iterator](): {next: function(): {value: range.start, done: boolean}}, start: number, end: number}}
 * @constructor
 */
const ExampSymbolIterator = () => {
    const range = {
        start: 1,
        end: 3,
        [Symbol.iterator] () {
            let value = this.start;
            return {
                next: () => ( {
                    value,
                    done: value++ === this.end + 1
                } )
            };
        }
    };
    return range;
};
const range = ExampSymbolIterator ();
console.dir ( {
                  range,
                  names: Object.getOwnPropertyNames ( range ),
                  symbols: Object.getOwnPropertySymbols ( range ),
              } );

for ( const number of range ) {
    console.log ( number );
}

/**
 * @___Fj{Polyfill_IterateOfObject}{NB,HPW,Fundamentals,Iteration-master }{dep=1}{NBase/_Md/_Index/_HPW/Part_I/content/Courses/Fundamentals/arrObjClassProto/Iteration-master/JavaScript/f-iterator_1.js}
 * @returns {[]}
 * @constructor
 */
const Polyfill_IterateOfObject = () => {
    const arr_res = [];
    const range_iterator = range[Symbol.iterator] ();

    for ( let next = range_iterator.next () ; !next.done  ; next = range_iterator.next () ) {
        arr_res.push ( next.value )
    }
    return arr_res;
};
const res_ofObj = Polyfill_IterateOfObject ();
debugger
