# frozen_string_literal: true

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
# Using multiple pointers approach
def reverse_string(str)
  left = 0
  right = str.length - 1

  while left < right
    str[left], str[right] = str[right], str[left]
    left += 1
    right -= 1
  end
end

# Using Ruby's built-in reverse method
# def reverse_string(str)
# str.reverse!
# end
