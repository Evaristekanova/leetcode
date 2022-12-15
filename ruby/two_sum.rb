# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  compliments = {}

  nums.each_with_index do |num, index|
    compliment_index = compliments[num]

    return [compliment_index, index] if compliment_index

    compliments[target - num] = index
  end
end
