int findElement(List<int> arr, int target) {
  for (int i = 0; i <= arr.length - 1; i++) {
    if (arr[i] == target) {
      return i;
    }
  }
  return -1;
}



void main() {
  final list = [45, 85, 96, 85, 74, 15, 35];
  var result = findElement(list, 35);
  print("Found element on the position $result");

}
