# For Loop Approach
def merge(nums1, m, nums2, n)
    k = 0
    
    for i in 0...m
        nums1[k] = nums1[i]
        k += 1
    end
    
    for j in 0...n
        nums1[k] = nums2[j]
        k += 1
    end
    
    nums1.sort!
end


# While Loop Approach
# def merge(nums1, m, nums2, n)
#     i = 0
#     j = 0
#     k = 0

#     while i < m
#         nums1[k] = nums1[i]
#         i += 1
#         k += 1
#     end


#     while j < n
#         nums1[k] = nums2[j]
#         j += 1
#         k += 1
#     end
    
#     nums1.sort!
# end


# Spread Operator Approach
# def merge(nums1, m, nums2, n)
#     nums1[m, n] = *nums2
#     nums1.sort!
# end


# Concatenate Approach
# def merge(nums1, m, nums2, n)
#     nums1.concat(nums2)
#     nums1.sort!
#     nums1.slice(0,n)
# end
