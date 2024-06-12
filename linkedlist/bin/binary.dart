bin(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;

  while (left <= right) {
    int mid = left + right % 2;
    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] > target) {
      right = right - 1;
    } else {
      left = left + 1;
    }
  }
  return -1;
}

void main() {
  int target = 4;
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int o = bin(arr, target);
  if (o == -1) {
    print("value not found ");
  } else {
    print('$target value found here $o');
  }
}
