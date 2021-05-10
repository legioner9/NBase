'use strict';

const hash = () => {
    const data = {};
    Object.defineProperty ( data, 'add', {
        enumerable: false,
        value ( key, value ) {
            data[key] = value;
            return data;
        }
    } );
    return data;
};

// Usage

console.dir (
    hash ()
        .add ( 'name', 'Marcus' )
        .add ( 'city', 'Roma' )
        .add ( 'born', 121 )
);

/**
 * @name {write_chain_to_hash }
 * @lambda
 * @returns {any,any,function}
 */
const write_chain_to_hash = () => {
    const hash = {};
    /**
     * mix defineProperty to hash
     */
    Object.defineProperty ( hash, 'add', {
        enumerable: false,
        value ( key, value ) {
            hash[key] = value;
            return hash;
        }
    } );
    return hash;
};
debugger
const hash_with_add = write_chain_to_hash ();
/**
 * chain call hash_obj
 */
const hash_obj = hash_with_add
    .add ( 1, 'one' )
    .add ( 2, 'two' );
// hash_obj:
//  1: "one"
//  2: "two"
debugger
