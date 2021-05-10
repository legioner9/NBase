# debug functions
- typeof
- console.trace

# color console
 [1-basics.js](basic_sintax\Cheatsheet-master\JavaScript\1-basics.js)

const colorer = (s, color) => `\x1b[3${color}m${s}\x1b[0m`;

от \x1b[31 до \x1b[39 - цвет буквы
от \x1b[41 до \x1b[49 - цвет фона
\x1b[0m - сброс цвета

# 'use ndb'

# inner log
[sexaple_log](basic_sintax/Cheatsheet-master/JavaScript/2-middle_1.js)

# NaN
typeof emptyScalar: "undefined"
typeof Infinity: "number"
typeof NaN: "number"
typeof undefined: "undefined"
typeof null: "object"
null is emptyObject

# type cast
('') toNumber==> ?
'dsc' toNumber==> NaN

Number.isNaN is notTypeCast function
isNaN is TypeCast function

# ternary assignment
const s = (
  emptyObject === null ?
    'emptyObject is null' :
    'emptyObject is not null'
);

# predicate IN
predicate exists field 
    const o = { name: 'runs' };
    const bul_o = 'name' in o; // true


