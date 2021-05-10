const { arht } = require ( 'st_ini_arht' );

const anls = require ( 'st_ini_catFs' ).anlsFs_1;
arht.before ( anls, module );

const funcExamp = require ( 'F:\\Node_projects\\Node_Way\\Jobs\\CataloguerFs\\CreateCatalog\\AFP5_0.1_ctlg_1_to_2.v.0.1.7.1\\index.js' );
arht.before ( funcExamp, module );

// MODE for behavior
// funcExamp.mode.log = true;
// funcExamp.mode.deb = true;
// funcExamp.mode.debLog = true;
// funcExamp.mode.logFs = true;
// funcExamp.mode.stack = true;

anls.preset = { if_basename: false };

const res = anls ( '_Md' );

// anlsFs_1.mode.deb = true;
// funcExamp ( anls ( 'DIR_root' ) , arr_tag , arr_exception_dir , arr_exception_file , delete_file_arr_regexp)
funcExamp ( res, [ '#', '@@' ], [ 'excd' ], [ 'excf' ]
    ,['deg']);

console.log ( '\n\nThe END __________________________ process.exit ( 0 )\n\n' );
process.exit ( 0 );
