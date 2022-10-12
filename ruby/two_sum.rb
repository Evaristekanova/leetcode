# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}


def two_sum(nums, target)
    compliments = {}
    
    nums.each_with_index do |num, index|
        compliment_index = compliments[num]
        
        if compliment_index
            return [compliment_index, index]
        end

        compliments[target - num] = index
    end
end