//Logarithmatic Time

const numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450];

bool navieContains(int value, List<int> list) {
  for (final element in list) {
    if (element == value) return true;
  }
  return false;
}

bool betterNavieContains(int value, List<int> list) {
  if (list.isEmpty) return false;
  final middleIndex = list.length ~/ 2;

  if (value > list[middleIndex]) {
    for (var i = middleIndex; i < list.length; i++) {
      if (list[i] == value) return true;
    }
  } else {
    for (var i = middleIndex; i >= 0; i--) {
      if (list[i] == value) return true;
    }
  }
  return false;
}

void main() {
  var result = navieContains(57, numbers);
  var result1 = navieContains(105, numbers);
  print("");
  print(result);
  print(result1);
  print("");
  var result2 = betterNavieContains(32, numbers);
  var result3 = betterNavieContains(450, numbers);
  print(result2);
  print(result3);
  print("");
}
