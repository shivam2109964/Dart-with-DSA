class Node<T> {
  T value;
  Node<T>? next;
  Node<T>? previous;

  Node({required this.value, this.next, this.previous});

  @override
  String toString() {
    return '$value';
  }
}

class DoublyLinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
    Node<E> newNode = Node(value: value, next: head);

    if (head != null) {
      head!.previous = newNode;
    }
    if (tail == null) {
      tail = head;
    }
  }
    
}
