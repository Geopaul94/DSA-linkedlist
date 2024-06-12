int binarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;

    if (arr[mid] == target) {
      return mid; 
    } else if (arr[mid] < target) {
      left = mid + 1; 
    } else {
      right = mid - 1; 
    }
  }

  return -1; 
}

void main() {
  List<int> arr = [1, 3, 5, 7, 9, 11, 13, 15, 17];
  int target = 11;

  int result = binarySearch(arr, target);
  if (result != -1) {
    print("Target $target found at index $result");
  } else {
    print("Target $target not found");
  }
}
