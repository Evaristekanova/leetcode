# Pascal's Triangle

This function creates a pattern of numbers. The method takes in a number called num_rows, which tells the method how many rows of numbers to create.

First, the method checks if num_rows is zero or one. If it is, the method returns an empty list or a list with a single row of the number 1 in it. This is because the pattern only starts to appear when there are at least two rows.

Next, the method creates a list called result that contains the first two rows of the pattern. These rows are just lists of the number 1.

Then, the method enters a loop that will run for as many times as there are rows left to create, starting from the third row and going up to the num_rows row. In each iteration of the loop, the method creates a new row of numbers based on the previous row. To do this, the method starts the new row with the number 1, then adds the sum of each pair of numbers from the previous row, and finally adds the number 1 at the end of the row. The new row is then added to the result list.

After the loop has finished running, the method returns the result list, which now contains all of the rows of numbers that make up the pattern.

Here's an example of how this method would work:

```ruby
# Suppose we call the generate method like this:
generate(4)

# The first thing the method does is create the `result` list with the first two rows of the pattern:
result = [[1], [1, 1]]

# Next, the method enters the loop, where it will create and add new rows to the `result` list.
# In the first iteration of the loop, the method creates the third row of the pattern:
# Start with 1: [1]
# Add the sum of each pair of numbers from the previous row: [1] + [2] + [1] = [1, 2, 1]
# Add 1 at the end: [1, 2, 1, 1]
# Add the new row to the `result` list: result = [[1], [1, 1], [1, 2, 1, 1]]

# In the second iteration of the loop, the method creates the fourth row of the pattern:
# Start with 1: [1]
# Add the sum of each pair of numbers from the previous row: [1] + [3] + [3] + [1] = [1, 3, 3, 1]
# Add 1 at the end: [1, 3, 3, 1, 1]
# Add the new row to the `result` list: result = [[1], [1, 1], [1, 2, 1, 1], [1, 3, 3, 1, 1]]

# Finally, after the loop has finished running, the method returns the `result` list:
return result = [[1], [1, 1], [1, 2, 1, 1], [1, 3, 3, 1, 1]]
```

```js
let result = [];

let generate = (numRows) => {
  for (let i = 1; i <= numRows; i++) {
    let row = i;
    let num = 1;
    let arr = [];
    for (let index = 1; index <= row; index++) {
      arr.push(num);
    }
    result.push(arr);
  }
  console.log(result);
};

generate(3);
```
