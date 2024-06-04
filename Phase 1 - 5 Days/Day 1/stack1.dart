//Some Non-Essential Operations
//Peek is an operation that is often attributed to the stack interface.
//The idea of peek is to look at the top element of the stack without
//mutating its contents.

class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  //Adding getters
  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return '----Stack----\n'
        '${_storage.reversed.join('\n')}';
  }
}

void main() {
  final stack = Stack();
  stack.push(4520);
  stack.push(56);
  stack.push(54);
  stack.push(31);
  stack.push(42);

  print(stack.toString());
}
