{
    const paragraph = 'The dog. It barked.';
    const regex = /[A-Z]/g;
    const found = paragraph.match ( regex );
    console.log ( found );
// expected output: Array ["T", "I"]
}

{
    const paragraph = 'The dog gav. It cat meau.';

    const capturingRegex = /(?<animal>dog|cat)/;
    const found = paragraph.match(capturingRegex);
    // found: Array(2)
    // 0: "dog"
    // 1: "dog"
    // groups:
    // animal: "dog"
    // index: 4
    // input: "The dog gav. It cat meau."
    console.log(found.groups); // {animal: "dog"}
}
