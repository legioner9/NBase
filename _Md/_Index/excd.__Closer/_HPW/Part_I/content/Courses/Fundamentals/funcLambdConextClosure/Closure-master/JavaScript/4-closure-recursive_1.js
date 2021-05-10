'use strict';

/**
 * @___Fj{recurs_closure}{NB,HPW,Fundamentals,Closure-master }{NBase/_Md/_Index/_HPW/Part_I/content/Courses/Fundamentals/funcLambdConextClosure/Closure-master/JavaScript/4-closure-recursive_1.js}
 * @param x
 * @returns {any}
 */
const recurs_closure = x => y => {
  const z = x + y;
 // console.log(x + '+' + y + '=' + z);
  return recurs_closure(z);
};

// const recurs_closure = x => y => recurs_closure(x + y);

// Usage

debugger
const res = recurs_closure(1)(4)(8)(8);
debugger
console.log(res);
