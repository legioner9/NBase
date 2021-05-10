'use strict';
'use ndb';

{
    const re = /(\w+)\s(\w+)/;
    const str = 'John Smith';
    const newstr = str.replace ( re, '$2, $1' );
    console.log ( newstr );  // Smith, John
}
{
    const re = /(\w+)\s(\w+)/;
    const str = 'John Smith';
    let newstr, struct = {};
    newstr = str.replace ( re, ( match, p1, p2, offset, string ) => {
        struct = { match, p1, p2, offset, string };
        return `${ p2 } and ${ p1 }`;
        // struct:
        // match: "John Smith"
        // offset: 0
        // p1: "John"
        // p2: "Smith"
        // string: "John Smith"
    } );
}

{
    function styleHyphenFormat ( propertyName ) {
        function upperToHyphenLower ( match, offset, string ) {
            const struct = { match, offset, string };
            // struct:
            // match: "T"
            // offset: 6
            // string: "borderTop"
            return ( offset > 0 ? '-' : '' ) + match.toLowerCase ();
        }

        return propertyName.replace ( /[A-Z]/g, upperToHyphenLower );
    }

    const res = styleHyphenFormat ( 'borderTop' );
    // res: "border-top"
}

