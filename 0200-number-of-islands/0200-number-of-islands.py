class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        count = 0
        for row in range(len(grid)):
            for col in range(len(grid[0])):
                if grid[row][col]=='1':
                    count+=1
                    self.zeroIsland(grid, row, col)
                    
        return count
        
    def zeroIsland(self, grid:List[List[str]], row:int, col:int):
        num_rows = len(grid)
        num_cols = len(grid[0])
        if (row<0 or col<0 or row>=num_rows or col>=num_cols or grid[row][col]!='1'):
            return
        else:
            grid[row][col] = '#'
            self.zeroIsland(grid, row-1, col)
            self.zeroIsland(grid, row+1, col)
            self.zeroIsland(grid, row, col-1)
            self.zeroIsland(grid, row, col+1)
        
        
# def numIslands(self, grid):
#     if not grid:
#         return 0
        
#     count = 0
#     for i in range(len(grid)):
#         for j in range(len(grid[0])):
#             if grid[i][j] == '1':
#                 self.dfs(grid, i, j)
#                 count += 1
#     return count

# def dfs(self, grid, i, j):
#     if i<0 or j<0 or i>=len(grid) or j>=len(grid[0]) or grid[i][j] != '1':
#         return
#     grid[i][j] = '#'
#     self.dfs(grid, i+1, j)
#     self.dfs(grid, i-1, j)
#     self.dfs(grid, i, j+1)
#     self.dfs(grid, i, j-1)
        
                    