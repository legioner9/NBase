const name = 'Marcus Aurelius';

console.log(`'A'.repeat(5) = '${'A'.repeat(5)}'`);
console.log(`'  ABC   '.trim() = '${'  ABC   '.trim()}'`);
console.log(`'  ABC   '.trimLeft() = '${'  ABC   '.trimLeft()}'`);
console.log(`'  ABC   '.trimRight() = '${'  ABC   '.trimRight()}'`);
console.log(`'Hello'.toLowerCase() = '${'hello'.toLowerCase()}'`);
console.log(`'Hello'.toUpperCase() = '${'hello'.toUpperCase()}'`);
console.log(`String.fromCharCode(80) = '${String.fromCharCode(80)}'`);

console.log(`name.indexOf('Aur') = ${name.indexOf('Aur')}`);
console.log(`name.lastIndexOf('u') = ${name.lastIndexOf('u')}`);
console.log(`name.includes('Ma') = ${name.includes('Ma')}`);
console.log(`name.startsWith('re') = ${name.startsWith('re')}`);
console.log(`name.endsWith('lius') = ${name.endsWith('lius')}`);

console.log(`name.split(' ') = '${JSON.stringify(name.split(' '))}'`);
console.log(`name.replace('r', 'R') = '${name.replace('r', 'R')}'`);
console.log(`name.replace(/r/g, 'R') = '${name.replace(/r/g, 'R')}'`);
console.log(`'Ave '.concat(name, '!') = '${'Ave '.concat(name, '!')}'`);

console.log('Deprecated: String.prototype.substr(start, length)');
console.log(`name.substr(2) = '${name.substr(2)}'`);
console.log(`name.substr(-3) = '${name.substr(-3)}'`);
console.log(`name.substr(2, 4) = '${name.substr(2, 4)}'`);
console.log(`name.substr(-3, 2) = '${name.substr(-3, 2)}'`);
console.log(`name.substr(3, -2) = '${name.substr(3, -2)}'`);
console.log(`name.substr(-3, -2) = '${name.substr(-3, -2)}'`);

console.log('String.prototype.slice(begin, [end])');
console.log(`name.slice(2) = '${name.slice(2)}'`);
console.log(`name.slice(-3) = '${name.slice(-3)}'`);
console.log(`name.slice(2, 4) = '${name.slice(2, 4)}'`);
console.log(`name.slice(-3, 2) = '${name.slice(-3, 2)}'`);
console.log(`name.slice(3, -2) = '${name.slice(3, -2)}'`);
console.log(`name.slice(-3, -2) = '${name.slice(-3, -3)}'`);

console.log('String.prototype.substring(begin, [end])');
console.log(`name.substring(2) = '${name.substring(2)}'`);
console.log(`name.substring(-3) = '${name.substring(-3)}'`);
console.log(`name.substring(2, 4) = '${name.substring(2, 4)}'`);
console.log(`name.substring(-3, 2) = '${name.substring(-3, 2)}'`);
console.log(`name.substring(3, -2) = '${name.substring(3, -2)}'`);
console.log(`name.substring(-3, -2) = '${name.substring(-3, -2)}'`);

'abc'.padEnd(10);          // "abc       "
'abc'.padEnd(10, "foo");   // "abcfoofoof"
'abc'.padEnd(6, "123456"); // "abc123"
'abc'.padEnd(1);           // "abc"
