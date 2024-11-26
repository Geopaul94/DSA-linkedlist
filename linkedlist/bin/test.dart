

void main() {
  List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  Map<String, int> sums = sumOfOddAndEvenNumbers(myList);
  
  print("Sum of odd numbers: ${sums['odd']}");
  print("Sum of even numbers: ${sums['even']}");
}



// Function to calculate the sum of odd and even numbers separately
Map<String, int> sumOfOddAndEvenNumbers(List<int> list) {
  // Base case: If the list is empty, return both sums as 0
  if (list.isEmpty) {
    return {"odd": 0, "even": 0};
  }

  int firstElement = list[0];
  
  // Recursive call to get the sums of the rest of the list
  Map<String, int> result = sumOfOddAndEvenNumbers(list.sublist(1));

  // If the first element is odd, add it to the odd sum
  if (firstElement % 2 != 0) {
    result["odd"] = result["odd"]! + firstElement;
  } 
  // If the first element is even, add it to the even sum
  else {
    result["even"] = result["even"]! + firstElement;
  }

  return result;
}

