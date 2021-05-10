'use strict';

/**
 * @___Fj{recurs_closure_functorAsListener}{dep=0}{NB,HPW,Fundamentals,DataStructures-master }{NBase/_Md/_Index/_HPW/Part_I/content/Courses/Fundamentals/funcLambdConextClosure/Closure-master/JavaScript/b-adder-on.js}
 * @param a
 * @returns {any}
 */
const adder = a => {
  let onZerro = null;
  const obj = {};
  const value = () => a;
  const add = b => {
    let x = a + b;
    if (x < 0) {
      x = 0;
      if (onZerro) onZerro();
    }
    return adder(x);
  };
  const on = (name, callback) => {
    if (name === 'zero') onZerro = callback;
    return obj;
  };
  return Object.assign(obj, { add, value, on });
};

// Usage

const a = adder(3)
  .on('zero', () => console.log('Less than zero'))
  .add(-9)
  .add(12)
  .add(5)
  .value();
console.log(a);
