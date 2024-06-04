class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  //Add Push and Pop operations
  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  //Addting some getter
  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

  //Add a function to reverse the value
  void printReverseValue(List<E> elements) {
    var stack = Stack();
    for (E value in elements) {
      stack.push(value);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  //Making iterable
  Stack.of(Iterable<E> elements) : _storage = List.of(elements);

  @override
  String toString() {
    return '----Stack----\n'
        '${_storage.reversed.join('\n')}';
  }
}

void main() {
  final stack = Stack();

  final element1 = ['S', 'H', 'I', 'V', 'A', 'M'];
  final element2 = [];

  stack.printReverseValue(element1);
  print(stack.toString());
  stack.printReverseValue(element2);
}
