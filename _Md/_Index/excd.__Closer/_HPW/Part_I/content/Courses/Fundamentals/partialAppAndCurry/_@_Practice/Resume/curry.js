'use strict';
'use ndb'

const my_curry = fn => ( ...args ) => {
    if ( fn.length > args.length ) {
        const f = fn.bind ( null, ...args );
        return my_curry ( f );
    }
    else {
        return fn ( ...args );
    }
};
// Usage
const sum = ( ...args ) => args.reduce ( ( acc, item ) => acc + item );

const sum_ = ( a, b, c, d ) => a + b + c + d;

const curried_sum = my_curry( sum_ );
debugger
const a1 = curried_sum ( 'a ' ) ( 'b ' ) ( 'c ' ) ( 'd ' );

// Return value: "a b c d "
// args: ["d "]
// Closure (my_curry)
// fn: ƒ ()
// 	length: 1
// 	name: "bound bound bound sum_"
// 		[[TargetFunction]]: ƒ ()
// 		length: 2
// 		name: "bound bound sum_"
// 			[[TargetFunction]]: ƒ ()
// 			length: 3
// 			name: "bound sum_"
// 				[[TargetFunction]]: ( a, b, c, d ) => a + b + c + d
// 				length: 4
// 				name: "sum_"
// 			[[BoundArgs]]: Array(1)
// 			0: "a "
// 		[[BoundArgs]]: Array(1)
// 		0: "b "
// 	[[BoundArgs]]: Array(1)
// 	0: "c "
