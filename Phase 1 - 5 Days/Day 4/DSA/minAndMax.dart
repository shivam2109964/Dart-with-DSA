void findMinAndMax(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        //swap
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  print("Sorted array ---> $arr");
  print("Minimum value is ---> ${arr[0]}");
  print("Maximum value is ---> ${arr[arr.length - 1]}");
}

void main() {
  List<int> arr = [45, 96, 78, 10, 02, 65, 45, 87, 32];
  findMinAndMax(arr);
}
