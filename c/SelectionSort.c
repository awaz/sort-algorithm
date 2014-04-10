#include <stdio.h>

void selectionSort(int A[], int array_size) {
  int i, j, temp, least;

  for (i = 0; i < array_size; i++) {
    least = i;

    for (j = i; j < array_size; j++) {
      if (A[least] > A[j]) {
        least = j;
      }
    }

    temp = A[least];
    A[least] = A[i];
    A[i] = temp;
  }
}

int main() {
  int a[] = { 1,9,5,9,4,2,423,54,76,98,2,1,3,43,0,99,87,43,11,65,2,9,0,43,62,7,3 };
  int size = sizeof(a) / sizeof(a[0]);

  selectionSort(a, size);

  return 0;
}
