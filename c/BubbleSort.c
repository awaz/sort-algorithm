#include <stdio.h>

void bubbleSort(int A[], int array_size) {
  int i, j, temp;

  for (i = 0; i < array_size; i++) {
    for (j = 0; j < array_size; j++) {
      if (A[i] < A[j]) {
        temp = A[i];
        A[i] = A[j];
        A[j] = temp;
      }
    }
  }
}

int main() {
  int a[] = {5,1,8,3,9,2,6,4,5,1,5,8,4,10,0,13,4,21,6,2};
  int size = sizeof(a) / sizeof(a[0]);

  bubbleSort(a, size);

  return 0;
}
