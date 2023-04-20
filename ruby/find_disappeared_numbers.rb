# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  n = nums.length
  all_nums = (1..n).to_a
  all_nums - nums
end
