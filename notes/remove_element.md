# Remove Element

The function remove_element takes in an array of integers and an integer value. It returns the length of the array after removing all instances of the integer value.

## Example

```ruby
remove_element([3,2,2,3], 3) # => 2
remove_element([0,1,2,2,3,0,4,2], 2) # => 5
```

## Solution

```ruby
def remove_element(nums, val)
  count = 0

  nums.each do |num|
    if num != val
      nums[count] = num
      count += 1
    end
  end

  count
end
```

## Explanation

<!-- The solution is based on the [Remove Duplicates from Sorted Array](./remove_duplicates_from_sorted_array.md) solution. The only difference is that we don't increment the count if the number is equal to the value. -->

We first initialize the count to 0. We do this because we want to keep track of the length of the array after removing all instances of the value.

The function then iterates through the array. For each number, we check if the number is equal to the value. If it is not, we set the number at the count index to the number and increment the count. In the end, the function returns the count.

## Time Complexity

The time complexity is O(n) because we iterate through the array once.

## Space Complexity

The space complexity is O(1) because we only use a few variables to keep track of the count and the number.

## Related Problems

<!-- - [Remove Duplicates from Sorted Array](./remove_duplicates_from_sorted_array.md) -->

- [Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)

## Tags

- Array
- Two Pointers

## References

- [LeetCode - Remove Element](https://leetcode.com/problems/remove-element/)
