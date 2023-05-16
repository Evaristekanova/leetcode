# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  nums = nums.uniq.sort
  return nums[-1] if nums.size < 3
  return nums[-3]
end
