const Ex = require ( 'st_ex1' );
const createTechDir_1_v_2 = require ( 'st_ini' ).createTechDir_1_v_2;

// createTechDir_1_v_2.mode = 'debug';
// const arr_creator = [ 'A', 'B', [ 'B', 'BA' ,'BB'] ];

const arr_creator = [
    ['_site', 'index.html', 'ReadMe.md',
        [ 'css', 'main.css' ],
        [ 'js', 'main.js' ],
        [ 'img' ]
    ]
];

createTechDir_1_v_2 ( __dirname, arr_creator );
console.log ( 'arr_creator is : ', arr_creator, '\nprn::process.exit ( 0 )' );
process.exit ( 0 );




