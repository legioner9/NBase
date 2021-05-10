'use strict';

/**
 * @___Fj{ExampAsincSymbolIterator}{NB,HPW,Fundamentals,Iteration-master }{dep=0}{NBase/_Md/_Index/_HPW/Part_I/content/Courses/Fundamentals/arrObjClassProto/Iteration-master/JavaScript/h-async.js}
 * @constructor
 */
const ExampAsincSymbolIterator = () => {};

const range = {
    start: 1,
    end: 1000,
    [Symbol.asyncIterator] () {
        let value = this.start;
        return {
            next: () => Promise.resolve ( {
                                              value,
                                              done: value++ === this.end + 1
                                          } )
        };
    }
};

console.dir ( {
                  range,
                  names: Object.getOwnPropertyNames ( range ),
                  symbols: Object.getOwnPropertySymbols ( range ),
              } );

let k = 0;

const timer = setInterval ( () => {
    console.log ( 'next ', k++ );
}, 10 );

( async () => {
    for await ( const number of range ) {
        console.log ( number );
    }
    clearInterval ( timer );
} ) ();

/**
 * @___Fj{Polyfill_AsincIterateOfObject}{NB,HPW,Fundamentals,Iteration-master }{dep=0}{NBase/_Md/_Index/_HPW/Part_I/content/Courses/Fundamentals/arrObjClassProto/Iteration-master/JavaScript/h-async.js}
 * @constructor
 */
const Polyfill_AsincIterateOfObject = () => {};
