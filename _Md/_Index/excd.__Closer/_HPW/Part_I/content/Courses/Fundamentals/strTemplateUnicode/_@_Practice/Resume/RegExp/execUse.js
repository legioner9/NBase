const ET = require ( 'st_ini' ).exec_Test;
{
    const str = 'hello world!';
    const result = /^hello/.test ( str );
    console.log ( result ); // true
}

{
    function testInput ( re, str ) {
        let midstring;
        if ( re.test ( str ) ) {
            midstring = 'contains';
        }
        else {
            midstring = 'does not contain';
        }
        console.log ( `${ str } ${ midstring } ${ re.source }` );
    }

    testInput ( /a/, 'Array' );
    testInput ( /a/, 'Array' );
}
