'use strict';

{
    const regexp = /t(e)(st(\d?))/g;
    const str = 'test1test2';

    const res = [ ...str.matchAll ( regexp ) ];
    // 0: (4) ["test1", "e", "st1", "1", index: 0, input: "test1test2", groups: undefined]
    // 1: (4) ["test2", "e", "st2", "2", index: 5, input: "test1test2", groups: undefined]
}

{
    const paragraph = 'The dog gav. It cat meau.';

    const capturingRegex = /(?<animal>dog|cat) (?<act>gav|meau)/g;
    const found = paragraph.matchAll ( capturingRegex );
    // found: RegExpStringIterator
    // __proto__: RegExp String Iterator

    const found_arr = [ ...paragraph.matchAll ( capturingRegex ) ];
    // found: Array(2)
    // 0: Array(3)
    //  0: "dog gav"
    //  1: "dog"
    //  2: "gav"
    // groups: {animal: "dog", act: "gav"}
    // index: 4
    // input: "The dog gav. It cat meau."
    // length: 3
    // __proto__: Array(0)
    // 1: Array(3)
    // 0: "cat meau"
    // 1: "cat"
    // 2: "meau"
    // groups: {animal: "cat", act: "meau"}
    // index: 16
    // input: "The dog gav. It cat meau."
    // length: 3
    // __proto__: Array(0)

    const groups_arr = [];
    for ( const item of found ) {
        groups_arr.push (item.groups);
    }
    // froups_arr: Array(2)
    // 0: {animal: "dog", act: "gav"}
    // 1: {animal: "cat", act: "meau"}
    debugger
}
