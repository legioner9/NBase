'use strict';
'use ndb';

const hash = () => {
    const data = {};
    let counter = 0;
    return ( key, value ) => {
        data[key] = value;
        counter++;
        console.dir ( { counter } );
        return data;
    };
};

// Usage

const h1 = hash ();
h1 ( 'name', 'Marcus' );
h1 ( 'city', 'Roma' );
const obj1 = h1 ( 'born', 121 );
console.dir ( { obj1 } );

/**
 * @typedef {Number|String|Array|Object} ^map
 * @typedef {Number|String} tns
 * Demonstration of clousore
 * @linc {NBase/_Md/_Index/_HPW/Part_I/content/Courses/Fundamentals/funcLambdConextClosure/Closure-master/JavaScript/1-context_1.js}
 * @name {write_to_hash_obj}
 * @returns {function(tns, ^map): {object}}
 */

const write_to_hash_obj = () => {

    /**
     * context for retfunc - object of hash-table
     * @name {hash}
     * @type {object}
     */
    const hash = {};

    /**
     * counter of call retfunc
     * @name {counter}
     * @type {number}
     */
    let counter = 0;
    /**
     * @function {retfunc}
     * retfunc is function and seeing function context counter and hash
     */
    return function _retfunc ( key, value ) {
        hash[key] = value;
        counter++;
        console.log ( 'this of _retfunc(): ', this );
        // this: undefined
        console.log ( 'counter: ', counter );
        return hash;
    };
};

const h_func = write_to_hash_obj ();
const res1 = h_func ( 1, { a: 5 } );
const res2 = h_func ( 'dt', [ 'tui' ] );

/**
 *
 * @returns {{}|{_count: number, _hash: {}, hash(*, *): hash._hash}}
 */
const write_to_hash_obj_1 = () => {
    const hash = {};
    let counter = 0;
    /**
     * return object with this as _prop from external func context
     */
    return {
        _hash: hash,
        _count: counter,
        hash1 ( key, value ) {
            this._count++;
            this._hash[key] = [ value, this._count ];
            console.log ( 'this of hash1(): ', this );
            // this :{_hash: {…}, _count: 2, hash1: ƒ}
            return this._hash;
        }
    };
};
const h_func2 = write_to_hash_obj_1 ();

/**
 * res22 is always identifier of _hash, res12 === res22
 */
// const res12 = h_func2.hash ( 1, { a: 5 } );
h_func2.hash1 ( 1, { a: 5 } );
const res22 = h_func2.hash1 ( 'dt', [ 'tui' ] );
//res22:
// 1: Array(2)
//  0: {a: 5}
//  1: 1
//  length: 2
// __proto__: Array(0)
// dt: Array(2)
//  0: ["tui"]
//  1: 2
//  length: 2

const write_to_hash_obj_2 = () => {
    const hash = {};
    let counter = 0;
    /**
     * return object only with method : context lambda is functional
     */
    return {
        hash2: ( key, value ) => {
            counter++;
            hash[key] = [ value, counter ];
            console.log ( 'this of hash2(): ', this );
            //this:{}
            return hash;
        }
    };
};
debugger
const h_func3 = write_to_hash_obj_2 ();

/**
 * res22 is always identifier of _hash, res12 === res22
 */
// const res13 = h_func2.hash ( 1, { a: 5 } );
h_func3.hash2 ( 1, { a: 5 } );
const res23 = h_func3.hash2 ( 'dt', [ 'tui' ] );
debugger
