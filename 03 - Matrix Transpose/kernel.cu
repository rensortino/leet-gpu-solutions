#include "solve.h"
#include <stdio.h>
#include <cuda_runtime.h>

__global__ void matrix_transpose_kernel(const float* input, float* output, int rows, int cols) {
    int colIdx = blockDim.x * blockIdx.x + threadIdx.x;
    int rowIdx = blockDim.y * blockIdx.y + threadIdx.y;
    if ((colIdx < cols) && (rowIdx < rows)) {
        output[rows*colIdx + rowIdx] = input[cols*rowIdx+colIdx];
    }
}

// input, output are device pointers (i.e. pointers to memory on the GPU)
void solve(const float* input, float* output, int rows, int cols) {
    int BLOCK_SIZE = 32;
    dim3 threadsPerBlock(BLOCK_SIZE, BLOCK_SIZE);
    dim3 blocksPerGrid((cols + BLOCK_SIZE - 1) / BLOCK_SIZE,
                       (rows + BLOCK_SIZE - 1) / BLOCK_SIZE);

    matrix_transpose_kernel<<<blocksPerGrid, threadsPerBlock>>>(input, output, rows, cols);
    cudaDeviceSynchronize();
}