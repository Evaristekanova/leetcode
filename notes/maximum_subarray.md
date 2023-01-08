# Maximum Subarray

The function max_sub_array that takes in an array of numbers to find the maximum sum of a contiguous subarray within nums.

## Example

```ruby
max_sub_array([2,3,-2,4]) # => 5
max_sub_array([-2,0,-1]) # => 0
```

## Solution

```ruby
def max_sub_array(nums)
  max = nums[0]
  sum = 0

  nums.each do |num|
    sum = 0 if sum.negative?
    sum += num
    max = [max, sum].max
  end

  max
end
```

## Explanation

The solution is similar to the [Maximum Product Subarray](./maximum_product_subarray.md) solution. The only difference is that we do not need to keep track of the minimum sum. This is because the minimum sum will always be 0.

The function first initializes a variable max to the first element of nums, and a variable sum to 0. It then iterates through each element num in nums.

For each iteration, the function checks if sum is negative. If it is, it resets sum to 0. The function then adds num to sum and updates max to the maximum of max and sum. This ensures that max will always contain the maximum sum of a contiguous subarray that has been seen so far.

After the loop has completed, the function returns max, which will be the maximum sum of a contiguous subarray within nums.

## Time Complexity

The time complexity is O(n) because we iterate through the array once.

## Space Complexity

The space complexity is O(1) because we only use a few variables to keep track of the maximum and sum.

## Related Problems

- [Maximum Product Subarray](./maximum_product_subarray.md)

## Tags

- Array
- Dynamic Programming
- Kadane's Algorithm

## References

- [LeetCode - Maximum Subarray](https://leetcode.com/problems/maximum-subarray/)
- [Wikipedia - Maximum subarray problem](https://en.wikipedia.org/wiki/Maximum_subarray_problem)
