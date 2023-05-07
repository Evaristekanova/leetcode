# Power of Two

To check if a number is a power of two, we can use a binary representation of the number. In binary, a power of two number has only one bit set to 1, and all the other bits are 0s.

So, if we subtract 1 from a power of two number, all the 0s in the binary representation become 1s, and the bit set to 1 becomes a 0.

For example, if we subtract 1 from 16 (10000 in binary), we get 15 (01111 in binary).

When we perform a bitwise AND operation between the power of two number and the number obtained after subtracting 1, the result should be 0 if the given number is a power of two.

This is because the bit that was set to 1 in the power of two number will now be 0 in the result, and all the other bits will be different between the two numbers, resulting in a non-zero value.

```ruby
def is_power_of_two(n)
  return false if n <= 0 # 0 or negative numbers are not powers of two

  n & (n - 1) == 0
end
```
