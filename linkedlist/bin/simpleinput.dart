void main() {
  List<int> digits1 = [1, 2, 3];
  List<int> digits2 = [4, 3, 2, 1];
  List<int> digits3 = [2,9];
  Solution solution = Solution();
  solution.plusOne(digits3);
}

class Solution {
  List<int>
  plusOne(List<int> digits) {
    List<int> ar = [1, 0];
    if (digits[digits.length - 1] == 9) {
      digits.removeLast();
      digits.addAll(ar);
      return digits;
    } else {
      digits[digits.length - 1] = digits[digits.length - 1] + 1;
      return digits;
    }

  }
}
