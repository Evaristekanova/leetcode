# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  # take care of edge case if either of the lists is empty
  return list2 if list1.nil?
  return list1 if list2.nil?
  
  result = ListNode.new(0)
  tail = result

  # compare the heads of the two lists
  # then add the smaller value to the result list after 
  while !list1.nil? && !list2.nil?
    if list1.val <= list2.val
      tail.next = list1
      list1 = list1.next
    else
      tail.next = list2
      list2 = list2.next
    end
    tail = tail.next
  end
  
  # Add any remaining nodes from list1 or list2 to the result list
  if !list1.nil?
    tail.next = list1
  end
  if !list2.nil?
    tail.next = list2
  end
  
  # Return the head of the merged list
  result.next
end
