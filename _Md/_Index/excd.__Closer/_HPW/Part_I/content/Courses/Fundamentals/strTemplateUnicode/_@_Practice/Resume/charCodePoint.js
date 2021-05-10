'use strict';

const s1 = 'start\
end';

const s2 = `start
end`;

console.dir ( { s1, s2 } );

/*
Unicode Character
\b: backspace U+0008
\f: form feed U+000C
\n: line feed U+000A
\r: carriage return U+000D
\t: horizontal tab U+0009
\v: vertical tab U+000B
\': single quote U+0027
\": double quote U+0022
\\: backslash U+005C

*/
// \x00 16 bit ASCII
// \u0000 32 bit UNICODE
console.log ( '\x0B' );
console.log ( '\u000B' );
console.log ( '\xA9\xAE' );
console.log ( '\u00A9\u00AE' );
console.log ( '\u2665' );
console.log ( '🐠' );

console.log ( '💟', '💟'.charCodeAt ( 0 ), '💟'.codePointAt ( 0 ) );
// 💟 55357 128159

const u1 = '💟'.codePointAt ( 0 );
const u2 = '💟'.codePointAt ( 1 );
// u1: 128159
// u2: 56479

const u1_hex = '💟'.codePointAt ( 0 ).toString ( 16 );
// u1_hex: "1f49f"

const emoj = '\u{1f49f}'; // emoj: "💟"
console.log ( emoj ); // 💟
debugger
console.log ( '\'💩\'.length: ' + '💩'.length );
console.log ( '💩'[0] );
console.log ( '💩'[1] );
console.log ( '� Parrot' );
console.log ( '🍦 😀 🦖 🌜' );
