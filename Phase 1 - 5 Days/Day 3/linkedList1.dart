class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value ---> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  //Adding Getter
  bool get isEmpty => head == null;

  //Adding push, append, nodeAt, insertAt
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    //1
    if (isEmpty) {
      push(value);
    }
    //2
    
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return '${head.toString()}';
  }
}
