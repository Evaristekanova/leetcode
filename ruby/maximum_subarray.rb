# frozen_string_literal: true

# @param {Integer[]} nums
# return {Integer}

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
