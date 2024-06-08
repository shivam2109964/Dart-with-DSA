void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];
  var arr1 = [45, 55, 652, 75, 2, 35]; // Changed 02 to 2
  
  print(arr.reversed.toList()); // Convert to list to print reversed list
  
  arr.sort(); // Sorts the list in place
  print(arr); // Print the sorted list
  
  arr1.sort(); // Optionally sort the second list as well
  print(arr1); // Print the sorted second list
}
