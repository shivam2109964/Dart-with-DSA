class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  //Adding getters
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
  E get peek => _storage.last;

  //Adding some operations
  void push(E value) {
    _storage.add(value);
  }

  E? pop() => _storage.removeLast();

  @override
  String toString() {
    return '---Stack---'
        '${_storage.reversed.join('\n')}';
  }
}

void main() {
  final stack = Stack();
  stack.push(1);
  stack.push(54);
  stack.push(32);
  stack.push(89);



  print(stack.toString());
  print(stack.peek);
}
