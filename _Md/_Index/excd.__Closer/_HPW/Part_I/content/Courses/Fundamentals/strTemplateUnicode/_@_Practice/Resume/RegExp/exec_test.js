const ET = require ( 'st_ini' ).exec_Test;

const cb = ( err, d ) => {
    console.log(err,d)
    debugger
    return err === null ? true : false;
};

const is_1 = ET ( /a/, 'Bac', cb );
debugger
