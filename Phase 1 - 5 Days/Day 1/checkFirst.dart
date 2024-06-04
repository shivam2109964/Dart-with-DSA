void checkFirst(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print("no names");
  }
}

void main() {
  List<String> value = ['Shivam', 'Krishna'];
  List<String> value1 = [];

  checkFirst(value);
  checkFirst(value1);
}
