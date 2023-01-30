function firstNonRepeatingChar(str) {
  let tally = {};

  for (let char of str) {
    // if (tally[char]) {
    //   tally[char]++;
    // } else {
    //   tally[char] = 1;
    // }

    // OR (Short circuiting)
    tally[char] = (tally[char] || 0) + 1;
  }

  for (let char of str) {
    if (tally[char] === 1) {
      return char;
    }
  }
}

console.log(firstNonRepeatingChar("abacddbec"));
console.log(firstNonRepeatingChar("swiss"));
console.log(firstNonRepeatingChar("mummyuy"));
