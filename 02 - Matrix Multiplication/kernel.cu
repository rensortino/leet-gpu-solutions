#include "solve.h"
#include <stdio.h>
#include <cuda_runtime.h>

__global__ void matrix_multiplication_kernel(const float* A, const float* B, float* C, int M, int N, int K) {
    int colIdx = blockDim.x * blockIdx.x + threadIdx.x;
    int rowIdx = blockDim.y * blockIdx.y + threadIdx.y;
    int rowMajIdx = rowIdx * K + colIdx;

    if ((colIdx < K) && (rowIdx < M)) {
        C[rowMajIdx] = 0.0;
        for (int i=0; i < N; i++) {
            C[rowMajIdx] += A[rowIdx * N + i] * B[colIdx + N * i];
        }
    }
}

// A, B, C are device pointers (i.e. pointers to memory on the GPU)
void solve(const float* A, const float* B, float* C, int M, int N, int K) {
    dim3 threadsPerBlock(16, 16);
    dim3 blocksPerGrid((K + threadsPerBlock.x - 1) / threadsPerBlock.x,
                       (M + threadsPerBlock.y - 1) / threadsPerBlock.y);
    
    matrix_multiplication_kernel<<<blocksPerGrid, threadsPerBlock>>>(A, B, C, M, N, K);
    cudaDeviceSynchronize();
}
