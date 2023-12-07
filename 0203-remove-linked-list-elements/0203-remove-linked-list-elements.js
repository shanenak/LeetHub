/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @param {number} val
 * @return {ListNode}
 */
var removeElements = function(head, val) {
    let prev, newHead = head, count=1;
    while (newHead && newHead.val===val) {
        newHead = newHead.next;
    }
    let curr = newHead;
    while (curr) {
        if (curr.val===val) {
            console.log(count);
            if (prev) {
                prev.next = curr.next;
            }
        } else {
            prev = curr;
        }
        curr = curr.next;
        count++;
    }
    return newHead
};