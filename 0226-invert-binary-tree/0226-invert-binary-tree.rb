# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
    queue = []
    queue << root
    while (!queue.empty?)
        node = queue.shift
        if node
            queue << node.right if node.right
            queue << node.left if node.left
            right = node.right
            node.right = node.left
            node.left = right
        end 
    end
    return root
end