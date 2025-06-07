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
Matrix $A = (2 \times 2)$
$$
A = \begin{pmatrix}
  1.0 & 2.0 \\
  3.0 & 4.0
\end{pmatrix}
$$
Matrix $B = (2 \times 2)$
$$
B = \begin{pmatrix}
  5.0 & 6.0 \\
  7.0 & 8.0
\end{pmatrix}
$$

Output:
Matrix $C = (2 \times 2)$
$$
C = \begin{pmatrix}
  19.0 & 22.0 \\
  43.0 & 50.0
\end{pmatrix}
$$

Example 2:
Input:
Matrix $A = (1 \times 3)$
$$
A = \begin{pmatrix}
  1.0 & 2.0 & 3.0
\end{pmatrix}
$$
Matrix $B = (3 \times 1)$
$$
B = \begin{pmatrix}
  4.0 \\
  5.0 \\
  6.0
\end{pmatrix}
$$
Output:
Matrix $C = (1 \times 1)$
$$
C = \begin{pmatrix}
  32.0
\end{pmatrix}
$$

## Constraints
- $1 \leq M, N, K \leq 8192$
- Performance is measured with $M = 8192$, $N = 6144$, $K = 4096$