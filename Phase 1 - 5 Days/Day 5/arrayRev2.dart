List<int> arrayReverse(List<int> arr, int start, int end) {
  List<int> array = [];
  while (start < end) {
    int temp = arr[start];
    arr[start] = arr[end];
    arr[end] = temp;
    start++;
    end--;
  }
  for (int i = 0; i < arr.length - 1; i++) {
    array.add(arr[i]);
  }
  return arr;
}

void main() {
  List<int> arr = [45,89,66,77,12,02,36,75,64,21];
  var result = arrayReverse(
      arr, (arr.length - arr.length).toInt(), (arr.length - 1).toInt());
  print(result);
}
