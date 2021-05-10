# https://dev.to/kais_blog/14-awesome-javascript-array-tips-you-should-know-about-1d0m?utm_source=digest_mailer&utm_medium=email&utm_campaign=digest_email

    const fruits = ["🍎", "🍌", "🍌", "🍒", "🍎"];

    // Create a new set from `fruits`, thereby removing all duplicates.
    // Then, create a new array from it.
    const uniqueFruits = [...new Set(fruits)];

    console.log(uniqueFruits); // ["🍎", "🍌", "🍒"]

/

    const fruitsA = ["🍎", "🍌", "🍒"];
    const fruitsB = ["🍒", "🍆", "🍉", "🍌"];

    // Keep all elements from `fruitsA` that are not included in `fruitsB`. 
    const difference = fruitsA.filter(fruit => !fruitsB.includes(fruit));
    console.log(difference); // ["🍎"]

    // Keep all elements from `fruitsA` that are not included in `fruitsB` and vice versa.
    const difference = [
    ...fruitsA.filter(fruit => !fruitsB.includes(fruit)),
    ...fruitsB.filter(fruit => !fruitsA.includes(fruit)),
    ];
    console.log(difference); // ["🍎", "🍆", "🍉"]