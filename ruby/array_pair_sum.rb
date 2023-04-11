# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort!
  sum = 0
  nums.each_slice(2) { |pair| sum += pair.first }
  sum
end
