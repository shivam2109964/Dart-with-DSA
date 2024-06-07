class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  //Adding getters
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
  E get peek => _storage.last;

  //Adding push, pop operations
  void push(E value) {
    _storage.add(value);
  }

  E? pop() {
    var popValue = _storage.removeLast();
    return popValue;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty Stack';
    return '---Stack---\n'
        '${_storage.reversed.join('\n')}';
  }
}

void main() {
  final stack = Stack();

  print(stack.toString());
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);

  print(stack.toString());

  print("Now Showing the peek value ---> ${stack.peek}");
  print("Now performing the poping value ---> ${stack.pop()}");
  print("After poping the value the stack is \n ${stack.toString()}");
}
