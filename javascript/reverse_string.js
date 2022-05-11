function reverseString(str) {
  let reversed = "";
  for (let i = str.length - 1; i > -1; --i) {
    reversed = reversed + str[i];
  }
  return reversed;
}

console.log(reverseString("Hello, world!"))

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 'ih'");
  console.log("=>", reverseString("hi"));

  console.log("");

  console.log("Expecting: 'ybabtac'");
  console.log("=>", reverseString("catbaby"));
}

module.exports = reverseString;

// iterate backwards through string (array), then set reversed to reversed + current
// return reversed


// Iterating over the string (array) backwards will give the values according
// to the negative index. Those can then be added to the array in reverse order
// so when the value is returned, it should be in reverse order.
