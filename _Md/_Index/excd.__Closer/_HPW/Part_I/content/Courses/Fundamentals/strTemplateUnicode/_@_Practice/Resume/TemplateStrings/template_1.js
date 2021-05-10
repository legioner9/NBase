const Ini = require ( 'st_ini' );
const { analyseTemplate: AT } = Ini;

debugger
const AnalyseTemplate = function ( strings, ...variables ) {
    return {
        strings,
        variables,
    };
};

const a = 367;
const b = 1000;
const structure_string = AT` True?  ${ a } > ${ b } or not?`;
// structure_string:
// strings: Array(3)
// 0: " True?  "
// 1: " > "
// 2: " or not?"
// length: 3
// raw: (3) [" True?  ", " > ", " or not?"]
// __proto__: Array(0)
// variables: (2) [367, 1000]

const templFunction_1 = obj => {
    const arr_var = obj.variables;
    if ( arr_var[0] > arr_var[1] ) return 'a > b : true';
    return 'a > b : false';
};
const answer = templFunction_1 ( AT` True?  ${ a } > ${ b } or not?` );
// answer: "a > b : false"
debugger
