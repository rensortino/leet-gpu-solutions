# Matrix Multiplication

***Easy***

Link: https://leetgpu.com/challenges/matrix-multiplication

Write a program that multiplies two matrices of 32-bit floating point numbers on a GPU. Given matrix $A$ of dimensions $M \times N$ and matrix $B$ of dimensions $N \times K$, compute the product matrix $C = A \times B$, which will have dimensions $M \times K$. All matrices are stored in row-major format.


## Implementation Requirements
- Use only native features (external libraries are not permitted)
- The solve function signature must remain unchanged
- The final result must be stored in matrix C

Example 1:

Input:  
Matrix `A = (2 x 2)`
```
A =
  [1.0 2.0
  3.0 4.0]
```
Matrix `B = (2 x 2)`
```
B = 
  [5.0 6.0
  7.0 8.0]
```

Output:

Matrix `C = (2 x 2)`
```
C = 
  [19.0 22.0
  43.0 50.0]
``` 

Example 2:
Input:
Matrix `A = (1 x 3)`
```
A = [1.0 2.0 3.0]
```
Matrix `B = (3 x 1)`
```
B = 
  [4.0
  5.0 
  6.0]
```
Output:
Matrix `C = (1 x 1)`
```
C =
  [32.0]
```

## Constraints
- `1 < M, N, K < 8192`
- Performance is measured with `M = 8192`, `N = 6144`, `K = 4096`
