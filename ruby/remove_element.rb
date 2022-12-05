# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}

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
