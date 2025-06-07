# Matrx Transpose

***Easy***

Link: https://leetgpu.com/challenges/matrix-transpose

Write a program that transposes a matrix of 32-bit floating point numbers on a GPU. The transpose of a matrix switches its rows and columns. Given a matrix $A$ of dimensions $rows \times cols$, the transpose $A^T$ will have dimensions $cols \times rows$. All matrices are stored in row-major format.


## Implementation Requirements
- Use only native features (external libraries are not permitted)
- The `solve` function signature must remain unchanged
- The final result must be stored in the matrix `output`


Example 1:

Input:  
$2 \times 3$ matrix
$$
\begin{pmatrix}
  1.0 & 2.0 & 3.0 \\
  4.0 & 5.0 & 6.0 
\end{pmatrix}
$$

Output:
$3 \times 2$ matrix
$$
\begin{pmatrix}
  1.0 & 2.0 \\
  3.0 & 4.0 \\
  5.0 & 6.0 
\end{pmatrix}
$$

Example 2:
Input:
$1 \times 3$ matrix
$$
A = \begin{pmatrix}
  1.0 \\ 
  2.0 \\
  3.0
\end{pmatrix}
$$

Output:
$1 \times 3$ matrix
$$
A = \begin{pmatrix}
  1.0 & 2.0 & 3.0
\end{pmatrix}
$$

## Constraints
- $1 \leq rows, cols \leq 8192$
- Input matrix dimensions: $rows \times cols$
- Output matrix dimensions: $cols \times rows$