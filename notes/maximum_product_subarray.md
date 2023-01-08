# Maximum Product Subarray

The function max_product_subarray takes in an array of numbers to find the maximum product of a contiguous subarray within nums.

## Example

```ruby
max_product_subarray([2,3,-2,4]) # => 6
max_product_subarray([-2,0,-1]) # => 0
```

## Solution

```ruby
def max_product(nums)
  min = max = 1
  best = nums[0]

  nums.each do |n|
    min, max = [n, min * n, max * n].minmax
    best = [best, max].max
  end

  best
end
```

## Explanation

The solution is based on the [Maximum Subarray](./maximum_subarray.md) solution. The only difference is that we need to keep track of the minimum product as well as the maximum product. This is because the minimum product can become the maximum product if the next number is negative.

We initialize the minimum and maximum to 1. We do this because we want to multiply the numbers in the array. If we initialize the minimum and maximum to 0, then the first number in the array will always be the minimum and maximum product. We also initialize the best product to the first number in the array.

The function then iterates through the array. For each number, we find the minimum and maximum product. The minimum product is the minimum of the current number, the minimum product multiplied by the current number, and the maximum product multiplied by the current number. The maximum product is the maximum of the current number, the minimum product multiplied by the current number, and the maximum product multiplied by the current number. We then find the best product by comparing the best product and the maximum product.

In the end, the function returns the best product.

## Time Complexity

The time complexity is O(n) because we iterate through the array once.

## Space Complexity

The space complexity is O(1) because we only use a few variables to keep track of the minimum, maximum, and best products.

## Related Problems

- [Maximum Subarray](./maximum_subarray.md)

## Tags

- Array
- Dynamic Programming
- Kadane's Algorithm

## References

- [LeetCode - Maximum Product Subarray](https://leetcode.com/problems/maximum-product-subarray/)
