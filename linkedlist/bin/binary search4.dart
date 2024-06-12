int binarySearchForInsertionPoint(List<int> arr, int target) {
  int left = 0;
  int right = arr.length;

  while (left < right) {
    int mid = (left + right) ~/ 2;

    if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid; 
    }
  }

  return left;
}

void main() {
  List<int> arr = [1, 3, 5, 7, 9, 11, 13, 15, 17];
  int target = 8;

  int insertionPoint = binarySearchForInsertionPoint(arr, target);
  print("Insertion point for target $target: $insertionPoint");
}
