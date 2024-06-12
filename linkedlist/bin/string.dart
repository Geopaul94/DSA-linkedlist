void main() {
  String target = 'grape';
  List<String> fruits = [
    "apple,orange ",
    "banana",
    'grape',
    "orange",
    'orange',
    'grape',
    'grape',
    'grape',
  ];
  bool output = find(fruits, target);
  print(output);

  dynamic t = count(fruits, target);
  print('count of th egiven fruit is $t');

  Map<String, int> fruitCount = counts(fruits, target);

  for (String fruit in fruitCount.keys) {
    print('Fruit: $fruit, Count: ${fruitCount[fruit]}');
  
  }



  
}

bool find(List<String> fruits, String target) {
  for (int i = 0; i < fruits.length; i++) {
    if (fruits[i] == target) {
      print("target found in fruits");
      return true;
    }
  }
  print("target not found");
  return false;
}

dynamic count(List<String> fruits, String target) {
  int countnumber = 0;
  for (int i = 0; i < fruits.length; i++) {
    if (fruits[i] == target) {
      countnumber++;
    }
  }

  return countnumber;
}

Map<String, int> counts(List<String> fruits, String target) {
  Map<String, int> fruitCount = {};

  for (int i = 0; i < fruits.length; i++) {
    if (fruits[i].contains(target)) {
      if (fruitCount.containsKey(fruits[i])) {
        fruitCount;
      } else {
        fruitCount[fruits[i]] = 1;
      }
    }
  }

  return fruitCount;
}
