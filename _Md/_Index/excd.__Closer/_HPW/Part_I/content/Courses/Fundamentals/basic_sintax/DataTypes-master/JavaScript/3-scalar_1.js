'use strict';
'use ndb'
let scalar1 = 5;
let scalar2 = scalar1;
scalar1--;
scalar2++;
console.dir( { scalar1, scalar2 } );

let str1 = 'Id str_1';
let str2 = str1;
str1 = str1 + ' str_2';

const object1 = { field: 5 };
const object2 = object1;
object1.field = 6;
console.dir( { object1, object2 } );
debugger
