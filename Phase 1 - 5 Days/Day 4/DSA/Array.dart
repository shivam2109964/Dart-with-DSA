///Find a peek element which is not smaller than its neighbours
///Input array[]: {5,10,20,15}
///Output 20
///Input: array[] = {10,20,15,2,23,90,67}
///Output: 20 or 90

List<int> checkNeighboursValue(List<int> arr) {
  List<int> peek = [];
  if (arr.isEmpty) {
    return peek;
  }
  if (arr[0] >= arr[1]) {
    peek.add(arr[0]);
  }
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] > arr[i + 1] && arr[i] > arr[i - 1]) {
      peek.add(arr[i]);
    }
  }

  //check if the last element is a peek
  if (arr.length > 1 && arr[arr.length - 1] >= arr[arr.length - 2]) {
    peek.add(arr[arr.length - 1]);
  }

  return peek;
}

void main() {
  List<int> arr1 = [10, 20, 15, 2, 23, 90, 67];
  List<int> arr2 = [5, 10, 20, 15];
  List<int> arr3 = [1, 2, 3];
  List<int> arr4 = [1, 1, 1, 2, 1, 1, 1];
  var result1 = checkNeighboursValue(arr1);
  var result2 = checkNeighboursValue(arr2);
  var result3 = checkNeighboursValue(arr3);
  var result4 = checkNeighboursValue(arr4);
  print(result1);
  print(result2);
  print(result3);
  print(result4);
}
