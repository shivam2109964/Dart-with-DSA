void main() {
  final myList = [1, 2, 3, 4, 5];
  final mySet = <int>{};

  for (final item in myList) {
    if (mySet.contains(item)) {
      print("My set already has it, so it's a duplicate");
    }
    mySet.add(item);
  } 
}
