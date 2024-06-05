class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  //Adding push and pop operations
  void push(E value) => _storage.add(value);
  E pop() => _storage.removeLast();

  //Adding some getters
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
  E get peek => _storage.last;

  Stack.of(Iterable<E> list) : _storage = List<E>.of(list);

  //Performing some operations
  //Printing a reversValue
  void printReverseValue(List<E> value) {
    final stack = Stack();
    for (E element in value) {
      stack.push(element);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  @override
  String toString() {
    return '----Stack----\n'
        '${_storage.reversed.join('\n')}';
  }
}

void main() {
  final stack = Stack();
  var value = ['S', 'H', 'I', 'V', 'A', 'M'];
  stack.printReverseValue(value);
}
