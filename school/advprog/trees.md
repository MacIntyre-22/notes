# Trees

```table-of-contents
```

---

## Tree Terms
- Contrast plants with root at bottom  
	- ADT tree with root at top  
	- Root is only node with no parent  
- A tree can be empty  
- Any node and its descendants form a subtree of the original tree  
- The height of a tree is the number of levels in the tree

## Calculating Binary Tree Size

- formula for tree size from height
	- $n = 2^h-1$
- max leave count
- formula for tree height from size
	- $h=log2(n + 1)$

## Traversals of a Binary Tree  
#### Preorder traversal  
- Visit root before we visit root’s subtrees  
#### Inorder traversal  
- Visit root of a binary tree between visiting nodes in root’s subtrees.  
#### Postorder traversal  
- Visit root of a binary tree after visiting nodes in root’s subtrees  
#### Level-order traversal  
- Begin at root and visit nodes one level at a time