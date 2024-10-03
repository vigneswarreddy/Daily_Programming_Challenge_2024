# Day 25
class TreeNode:
    def __init__(self, val=0, left=None, right=None): 
        self.val = val
        self.left = left
        self.right = right
def isValidBST(root):
    def validate(node, min_val, max_val):
        if not node:
            return True
        if not (min_val < node.val < max_val):
            return False
        return (validate(node.left, min_val, node.val) and 
                validate(node.right, node.val, max_val))   
    return validate(root, float('-inf'), float('inf'))

# Creating the tree [2, 1, 3]
root1 = TreeNode(2)
root1.left = TreeNode(1)
root1.right = TreeNode(3)
print(isValidBST(root1))  


root2 = TreeNode(5)
root2.left = TreeNode(1)
root2.right = TreeNode(4, TreeNode(3), TreeNode(6))
print(isValidBST(root2))  

root3 = TreeNode(10)
root3.left = TreeNode(5)
root3.right = TreeNode(15, TreeNode(6), TreeNode(20))
print(isValidBST(root3)) 
