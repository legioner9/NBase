'use strict';

const INTERVAL = 500;
let counter = 0;
const MAX_VALUE = 10;
let timer = null;

const event = () => {
  if (counter === MAX_VALUE) {
    console.log('The end');
    clearInterval(timer);
    return;
  }
  // console.dir({ counter, date: new Date() }); not disclosed
  // dir in console after performance at ndb console
  console.log({ counter, date: new Date() });

  counter++;
};

console.log('Begin');
timer = setInterval(event, INTERVAL);
