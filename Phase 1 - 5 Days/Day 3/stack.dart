class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  //Adding getters
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

  //Adding push and pop operations
  void push(E value) {
    _storage.add(value);
  }

  E pop() => _storage.removeLast();

  //adding opearation to printReverse
  void printReverse(List<E> list) {
    var stack = Stack();
    for (final value in list) {
      stack.push(value);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  @override
  String toString() {
    return '---Stack---\n'
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

  final list = ['S', 'H', 'I', 'V', 'A', 'M'];
  stack.printReverse(list);
}
