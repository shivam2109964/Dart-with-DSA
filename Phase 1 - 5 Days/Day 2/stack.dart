class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  //Adding some operations in stack
  void push(E value) => _storage.add(value);
  E pop() => _storage.removeLast();

  //Adding some getters
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

  E get peek => _storage.last;

  //Adding some functions
  //Printing reverse value
  void printReverseValue(List<E> elements) {
    var stack = Stack();
    for (E value in elements) {
      stack.push(value);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  //making iterable
  Stack.of(Iterable<E> list) : _storage = List<E>.of(list);

  //Check Parenthises
  bool checkParenthises(String value) {
    final stack = Stack();
    var startingPoint = '('.codeUnitAt(0);
    var endingPoint = ')'.codeUnitAt(0);

    for (int codeUnit in value.codeUnits) {
      if (codeUnit == startingPoint) {
        stack.push(codeUnit);
      } else if (codeUnit == endingPoint) {
        if (stack.isEmpty) {
          return false;
        } else {
          stack.pop();
        }
      }
    }
    return stack.isEmpty;
  }

  @override
  String toString() {
    return '----Stack----\n'
        '${_storage.reversed.join('\n')}';
  }
}

void main() {
  final stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  print(stack.toString());
  print("");
  print(stack.peek);
  print("");
  var elements = ['S', 'H', 'I', 'V', 'A', 'M'];
  var list = ['C', 'O', 'M', 'P', 'U', 'T', 'E', 'R'];
  stack.printReverseValue(elements);

  var iterableValue = Stack.of(list);
  print(iterableValue.toString());
}
