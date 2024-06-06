class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  //Adding getters
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
  E get peek => _storage.last;

  //Adding push and pop
  void push(E value) {
    _storage.add(value);
  }

  E? pop() {
    return _storage.removeLast();
  }

  void printReverseValue(List<E> list) {
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
    if (isEmpty) return 'Empty';
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

  print(stack.toString());
  print("");
  final list = ['S', 'H', 'I', 'V', 'A', 'M'];
  stack.printReverseValue(list);
}
