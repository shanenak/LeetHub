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
# @return {Integer}
def max_depth(root)
    depth = 0
    return 0 if !root
    queue = []
    queue << root
    while (!queue.empty?)
        for i in (0...queue.length)
            node = queue.shift
            if node
                queue << node.left if node.left
                queue << node.right if node.right
            end
        end
        depth+=1
    end
    return depth
end