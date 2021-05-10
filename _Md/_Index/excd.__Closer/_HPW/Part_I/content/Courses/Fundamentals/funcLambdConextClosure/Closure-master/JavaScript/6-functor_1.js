'use strict';

const add = x => {
    const f = y => {
        const z = x + y;
        console.log ( x + '+' + y + '=' + z );
        return add ( z );
    };
    f.map = fn => fn ( x );
    return f;
};

// Usage

/**
 * @___Fj{recurs_closure_functor}{NB,HPW,Fundamentals, }{NBase/_Md/_Index/_HPW/Part_I/content/Courses/Fundamentals/funcLambdConextClosure/Closure-master/JavaScript/6-functor_1.js}
 * @param x
 * @returns {any}
 * @private
 */
const add_ = x => {
    const fnct = y => add_ ( x + y );
    fnct.maps = fn => {
        fn ( x );
        return add_ ( x );
    };
    return fnct;
};
debugger
const res_add_ = add_ ( 3 ) ( 5 ) ( 7 ).maps ( console.log ) ( -15 ).maps(console.log );// console.log print 0
debugger

const a1 = add ( 5 );
const a2 = a1 ( 2 );
const a3 = a2 ( 3 );
const a4 = a1 ( 1 );
const a5 = a2 ( 10 );
console.log ( 'a3 sum is:' );
a3.map ( console.log );

console.log ( '\nAll functors:' );

[ a1, a2, a3, a4, a5 ].map ( fn => fn.map ( console.log ) );
