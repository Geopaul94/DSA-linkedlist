bool isThere(List<String> arr, String target) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      return true;
    }
  }
  return false;
}

int binary(List<int> brr, int target) {
    int left = 0;
  int right = brr.length - 1;
  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (brr[mid] == target) {
      return mid;
    } else if (brr[mid] > target) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }
  return -1;
}



void main() {
  List<int> brr = [1, 2, 3, 4, 5, 6];
  int tar = 5;
  List<String> arr = ['apple', 'orange', 'banana', 'apple', 'grape', 'apple'];
  var target = 'banana';
  bool output = isThere(arr, target);
  print(output);
  int out = binary(brr, tar);
  if (out == -1) {
    print('target not found');
  } else {
    print('$tar found at index $out');
  }
}