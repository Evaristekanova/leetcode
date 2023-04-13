# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  set = Set.new

  nums.each do |num|
    if set.include?(num)
      set.delete(num)
    else
      set.add(num)
    end
  end

  set.first
end
