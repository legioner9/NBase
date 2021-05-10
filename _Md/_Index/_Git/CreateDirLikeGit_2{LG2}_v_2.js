const Ex = require ( 'st_ex1' );
const Ini = require ( 'st_ini' );
const { createTechDir_4, debLog, debLogToFile, createArrLikeGit_2_v_2 } = require ( 'st_ini' );
// const debLogToFile = { deb: false, log: false, logFs:false };

createTechDir_4.mode = { deb: false, log: false, logFs: false };

const arr_0 = [ "Containers",
    [ "Live_learn",
        [ "Common_this", [ "_src" ] ],
        [ "Docs_this", [ "_src" ] ],
        [ "www_this", [ "_src" ] ],
        [ "_src" ] ],
    [ "Point_learn",
        [ "the_part_of_this",
            [ "Common_this", [ "_src" ] ],
            [ "Docs_this", [ "_src" ] ],
            [ "www_this", [ "_src" ] ],
            [ "_src" ] ] ],
    [ "_src" ],
    [ "Intro_to_this",
        [ "Common_this", [ "_src" ] ],
        [ "Docs_this", [ "_src" ] ],
        [ "www_this", [ "_src" ] ],
        [ "_src" ] ],
    [ "Use_this",
        [ "First_steps", [ "_src" ] ],
        [ "Hints", [ "_src" ] ] ],
    [ "Workout_this", [ "_src" ] ],
    [ "_src" ] ];


// const arr_creator = [ 'A', 'B', [ 'B', 'BA' ,'BB'] ];
// const arr_creator = [ 'A', 'B', [ 'B0', 'BA' ,'BB',['BB0','BBA','BBB'],['empty_dir']] ];
const arr_creator = [ 'A', 'B', [ 'AA', 'bb', [ 'AAA', [ 'BBB' ], [ 'AAAA','dd', [ 'AAAA' ]], [ 'AAA2', [ 'BBB2' ], [ 'AAAA2','dd2', [ 'AAAA2',[ 'AAA2', [ 'BBB2' ], [ 'AAAA2','dd2', [ 'AAAA2' ]] ]] ] ] ], [ 'B' ], [ 'C' ] ],
    [ 'AA4', 'bb', [ 'AAA', [ 'BBB' ], [ 'AAAA','dd', [ 'AAAA' ]], [ 'AAA2', [ 'BBB2' ], [ 'AAAA2','dd2', [ 'AAAA2',[ 'AAA2', [ 'BBB2' ], [ 'AAAA2','dd2', [ 'AAAA2' ]] ]] ] ] ], [ 'B' ], [ 'C' ] ]];
process['root_dir'] = __dirname;
debugger
createTechDir_4 ( __dirname, createArrLikeGit_2_v_2 );

console.log( ' type::process.exit(0)');

process.exit(0)

// const _src = [ '_src' ];
//
// //const Common_this = [ 'Common_this', 'Common_this.md','ReadMe.md',
// //   _src ];
// //'Common_this.md','ReadMe.md' - create automatically
//
// const Common_this = [ 'Common_this',
//     _src ];
// const Docs_this = [ 'Docs_this',
//     _src ];
// const www_this = [ 'www_this',
//     _src ];
//
// const Live_learn = [ 'Live_learn',
//     Common_this,
//     Docs_this,
//     www_this ];
//
// const the_part_of_this = [ 'the_part_of_this',
//     Common_this,
//     Docs_this,
//     www_this ];
//
// const Point_learn = [ 'Point_learn',
//     the_part_of_this ];
//
// const Intro = [ 'Intro',
//     Common_this,
//     Docs_this,
//     www_this ];
//
// const Use_this = [ 'Use_this',
//     [ 'First_steps', _src ],
//     [ 'Hints', _src ] ];
//
// const Workout_this = [ 'Workout_this', _src ];


