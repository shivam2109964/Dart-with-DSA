List<int> printReverse(List<int> arr) {
  int n = arr.length;
  List<int> arrRev = [];
  for (int i = 0; i <= n - 1; i++) {
    arrRev.add(arr[arr.length - 1 - i]);
  }
  return arrRev;
}

void main() {
  var list = [1, 2, 3, 4, 5, 6];
  var result = printReverse(list);
  print(result);
}
