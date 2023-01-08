# Maximum Subarray

The function max_sub_array that takes in an array of numbers to find the maximum sum of a contiguous subarray within nums.

The function first initializes a variable max to the first element of nums, and a variable sum to 0. It then iterates through each element num in nums.

For each iteration, the function checks if sum is negative. If it is, it resets sum to 0. The function then adds num to sum and updates max to the maximum of max and sum. This ensures that max will always contain the maximum sum of a contiguous subarray that has been seen so far.

After the loop has completed, the function returns max, which will be the maximum sum of a contiguous subarray within nums.
