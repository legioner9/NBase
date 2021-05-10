const { arht } = require ( 'st_ini_arht' );

const anls = require ( 'st_ini_catFs' ).anlsFs_1;
arht.before ( anls, module );

const funcExamp = require ( 'F:\\Node_projects\\Node_Way\\Jobs\\CataloguerFs\\CreateCatalog\\AFP5_0.1_ctlg_1_to_2.v.0.1.7.2\\index.js' );

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
// funcExamp ( anls ( 'DIR_root' ) , tags , ignore_dir_PrEq , ignore_file_PrEq , delete_file_FnIo, ignore_dir_FnIo )
/*Declaration elements (fields):
- `tags`\<array> - Header tags ;
- `ignore_dir_PrEq`\<array> - ignored dir meth(preextend equal)[PrEq];
- `ignore_file_PrEq`\<array> - ignored file meth(preextend equal)[PrEq];
- `delete_file_FnIo`\<array> - delete file meth(fullName indexOff)[FnIo];
- `ignore_dir_FnIo`\<array> - ignored dir meth(fullName indexOff)[FnIo];

P.S
- meth(fullName indexOff)
- meth(preextend equal)
- meth(baseName equal)
*/
funcExamp ( res, [ '#', '@@','%' ], [ 'excd' ], [ 'excf' ]
    ,['deg.forDelete'],['node_modules','node_modules_']);

console.log ( '\n\nThe END __________________________ process.exit ( 0 )\n\n' );
process.exit ( 0 );
