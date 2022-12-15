# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}

def contains_duplicate(nums)
  hashset = Set.new

  nums.each do |num|
    return true if hashset.include?(num)

    hashset.add(num)
  end
  false
end

# Time Complexity: O(n)
# Space Complexity: O(n)
