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

  //Adding getters
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
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    //1
    var currentNode = head;
    var currentIndex = 0;
    //2
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    //3
    return currentNode;
  }

  Node<E>? insertAt(Node<E>? node, E value) {
    //1
    if (node!.next == tail) {
      append(value);
      return tail;
    }
    //2
    node.next = Node(value: value, next: node.next);
    return node.next;
  }

  //Adding pop, removeLast, removeAt
  E? pop() {
    final value = head?.value;
    head = head!.next;
    return value;
  }

  // E? removeLast() {
  //   //1
  //   if (head!.next == null) {
  //     return pop();
  //   }
  // }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return '${head.toString()}';
  }
}
