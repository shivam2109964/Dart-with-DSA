class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  //Create a push and pop Operations
  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  @override
  String toString() {
    return 
'''---Stack---\n
${_storage.reversed.join('\n')}
''';
  }
}

void main() {
  final stack = Stack();
  stack.push(84);
  stack.push(82);
  stack.push(75);
  stack.push(30);
  print(stack.toString());
  var history = stack.pop();
  print("Delete History  $history");
  var history1 = stack.pop();
  print("Delete History  $history1");
  print("");
  print(stack.toString());
}
