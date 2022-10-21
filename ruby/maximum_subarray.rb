# @param {Integer[]} nums
# @return {Integer}

def max_sub_array(nums)
    max = nums[0]
    sum = 0

    for num in nums
        sum = 0 if sum < 0
        sum += num
        max = [sum, max].max
    end

    return max
end

p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])