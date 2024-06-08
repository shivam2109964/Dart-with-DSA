List<int> reverseArray(List<int> arr, int start, int end, int size) {
  int temp;
  var reverseArray = [];
  while (start < end) {
    temp = arr[start];
    arr[start] = arr[end];
    arr[end] = temp;
    start++;
    end--;
  }
  for (int i = 0; i < size; i++) {
    reverseArray.add(arr);
  }
  return arr;
}

void main() {
  var arr = [10, 2, 3, 4, 5, 6];
  var arr1 = [1, 2, 3, 4, 5, 6];
  var result = reverseArray(arr, 0, 5, 6);
  var result1 = reverseArray(arr1, 0, 5, 6);

  print(result);
  print(result1);
}
