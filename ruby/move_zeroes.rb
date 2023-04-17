# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  i = 0
  j = 0

  while j < nums.length
    if nums[j] != 0
      nums[i], nums[j] = nums[j], nums[i]
      i += 1
    end

    j += 1
  end

  while i < nums.length
    nums[i] = 0
    i += 1
  end

  nums
end
