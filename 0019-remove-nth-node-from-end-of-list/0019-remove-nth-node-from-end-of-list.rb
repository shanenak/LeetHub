# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    idx = 1
    len = 0
    curr = head
    prev = nil
    while (curr)
        len+=1
        curr = curr.next
    end
    return head.next if len==1 || n==len
    curr = head
    while (curr)
        if (idx===(len-n+1))
            if (n==1)
                prev.next = nil
                curr = nil
            else
                prev.next = curr.next
                prev = curr.next
                curr = curr.next.next
            end
        else
            prev = curr
            curr = curr.next
        end
        idx+=1
    end
    return head
end