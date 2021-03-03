const arg = process.argv;
let number = arg[2];
// create variable to run the parameter through terminal

const rollDice = function() {
  // create a function that will 'roll dice'
  return Math.floor(Math.random() * 6) + 1;
  // return a randomized number
  // Math.random ~ 0.99 and 6; add one because dice have 6 sides
};
const rolls = [];
// create a varialbe that is an array
for (let i = 0; i < number; i++) {
  // run a for loop that will run from 0 to less than the final parameter entered into terminal (the number of rolls)
  rolls.push(rollDice());
  // push the result from the rollDice function into the rolls array
}

console.log(`Rolled ${number} dice: ${rolls.join(", ")}`);