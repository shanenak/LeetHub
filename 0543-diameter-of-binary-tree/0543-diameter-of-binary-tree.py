# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def __init__(self):
        self.diameter = 0
    
    def diameterOfBinaryTree(self, root: Optional[TreeNode]) -> int:
        self.depth(root)
        return self.diameter
    
    def depth(self, root: Optional[TreeNode]) -> int:
        if not root.left and not root.right:
            return 1
        left = self.depth(root.left) if root.left else 0
        right = self.depth(root.right) if root.right else 0
        if left+right > self.diameter:
            self.diameter = left + right
        return 1+ max(left, right)
                

#     def __init__(self):
# 	    self.diameter = 0  # stores the maximum diameter calculated
	
#     def depth(self, node: Optional[TreeNode]) -> int:
#         """
#         This function needs to do the following:
#             1. Calculate the maximum depth of the left and right sides of the given node
#             2. Determine the diameter at the given node and check if its the maximum
#         """
#         # Calculate maximum depth
#         left = self.depth(node.left) if node.left else 0
#         right = self.depth(node.right) if node.right else 0
#         # Calculate diameter
#         if left + right > self.diameter:
#             self.diameter = left + right
#         # Make sure the parent node(s) get the correct depth from this node
#         return 1 + (left if left > right else right)
    
#     def diameterOfBinaryTree(self, root: Optional[TreeNode]) -> int:
#         # if not root:
#         #     return 0
#         self.depth(root)  # root is guaranteed to be a TreeNode object
#         return self.diameter
        