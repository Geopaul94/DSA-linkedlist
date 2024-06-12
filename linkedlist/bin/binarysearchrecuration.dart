int binary(List<int> brr, left, right, int target) {
  if (left <= right) {
    int mid = (left + right) ~/ 2;
    if (brr[mid] == target) {
      return mid;
    } else if (brr[mid] > target) {
      return binary(brr, left, mid - 1, target);
    } else {
      return binary(brr, mid + 1, right, target);
    }
  }
  return -1;
}

void main() {
  List<int> brr = [1, 2, 3, 4, 5, 6];
  int tar = 5;

  int out = binary(
    brr,
    0,
    brr.length - 1,
    tar,
  );
  if (out == -1) {
    print('target not found');
  } else {
    print('$tar found at index $out');
  }
}



// int binary(List<int> brr, int target, int left, int right) {
//   if (left > right) {
//     return -1; // Base case: target not found
//   }

//   int mid = (left + right) ~/ 2;
//   if (brr[mid] == target) {
//     return mid; // Base case: target found at mid
//   } else if (brr[mid] > target) {
//     return binary(brr, target, left, mid - 1); // Search left half
//   } else {
//     return binary(brr, target, mid + 1, right); // Search right half
//   }
// }

// void main() {
//   List<int> brr = [1, 2, 3, 4, 5, 6];
//   int tar = 5;

//   int left = 0;
//   int right = brr.length - 1;

//   int out = binary(brr, tar, left, right);
//   if (out == -1) {
//     print('Target not found');
//   } else {
//     print('$tar found at index $out');
//   }
// }
