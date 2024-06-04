class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  //Adding push and pop
  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  //Adding getter
  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

  //Making Iterable
  Stack.of(Iterable<E> elements) : _storage = List.of(elements);

  void printInReverse(List<E> list) {
    var stack = Stack();

    for (E value in list) {
      stack.push(value);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  bool checkParenthese(String text) {
    var stack = Stack<int>();

    final open = '('.codeUnitAt(0);
    final close = ')'.codeUnitAt(0);

    for (int codeUnit in text.codeUnits) {
      if (codeUnit == open) {
        stack.push(codeUnit);
      } else if (codeUnit == close) {
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
    return '---Stack---\n'
        '${_storage.reversed.join('\n')}';
  }
}

void main() {
  var elements = ['S', 'H', 'I', 'V', 'M'];
  var result = Stack.of(elements);
  print(result.toString());
  print("");
  var stack = Stack();
  stack.printInReverse(elements);

  var result1 = stack.checkParenthese("(kljkljfds)scdff(jkj)vfads");
  var result2 = stack.checkParenthese("kvlsdfkn)fk99(");

  print(result1);
  print(result2);
}
