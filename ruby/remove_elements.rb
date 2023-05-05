# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    return head if head.nil?
    
    while head.val == val
        head = head.next
        return nil if head.nil?
    end
    
    prev = head
    current = head.next
    
    while current
        if current.val == val
            prev.next = current.next
        else
            prev = current
        end
        current = current.next
    end
    
    head
end
