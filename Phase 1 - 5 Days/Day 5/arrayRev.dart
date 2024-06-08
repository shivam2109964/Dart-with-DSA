List<int> reverserArr1(List<int> arr) {
  List<int> arrRever = [];
  for (int i = arr.length - 1; i >= 0; i--) {
    arrRever.add(arr[i]);
  }
  return arrRever;
}

List<int> reverserArr2(List<int> arr) {
  int n = arr.length;
  List<int> arrRever = [];
  for (int i = 0; i <= n - 1; i++) {
    arrRever.add(arr[arr.length - i - 1]);
  }
  return arrRever;
}



void main() {
  var arr = [1, 2, 3, 4];
  var resultOfArr1 = reverserArr1(arr);
  var resultOfArr2 = reverserArr2(arr);
  print(resultOfArr1);
  print(resultOfArr2);


}
