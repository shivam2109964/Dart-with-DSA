//Quadratic Time
//this, algorithm don't perform well at scale. 
//No matter how inefficiently a linear time O(n) algorithm is written, for a sufficiently large n, 
//the linear time algorithm will execute faster than a super optimized quadratic algorithm. 

void printMoreNames(List<String> names) {
  for (final _ in names) {
    for (final name in names) {
      print(name);
    }
  }
}

void main() {
  List<String> names = ['Data', 'DSA', "KeyBoard", "Laptop", "Mobile"];
  printMoreNames(names);
}
