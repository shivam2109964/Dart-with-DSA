//Making a stack Iterable

class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  //Adding a push and pop operations
  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  //Adding a non essential Operations Getter
  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

  //Making stack Iterable
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  @override
  String toString() {
    return '---Stack---\n'
        '${_storage.reversed.join('\n')}';
  }
}

void main() {
  final stack = Stack();
  stack.push(38);
  stack.push(287);
  stack.push(47);
  stack.push(27);
  stack.push(84);
  stack.push(45);

  print(stack.toString());

  const list = ['S', 'H', 'I', 'V', 'M'];
  final iterableStack = Stack.of(list);
  print(iterableStack.toString());
}
