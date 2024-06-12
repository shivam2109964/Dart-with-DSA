List<int> insertAt(List<int> array, int pos, int element) {
  List<int> newArray = [];
  for (int i = 0; i < array.length; i++) {
    if (i == pos) {
      newArray.add(element);
    }
    newArray.add(array[i]);
  }
  if (pos >= array.length) {
    newArray.add(element);
  }
  return newArray;
}

void main() {
  final list = [58, 26, 45, 95, 63, 45, 2];
  final result = insertAt(list, 2, 999);
  print(result);
}
