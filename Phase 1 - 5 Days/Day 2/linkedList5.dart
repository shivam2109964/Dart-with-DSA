class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value --> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  //Adding getters
  bool get isEmpty => head == null;

  //Adding push, append, nodeAt and insertAfter
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  //Now adding a pop
  E? pop() {
    final value = head?.value;
    head = head!.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  //Now Remoing last
  E? removeLast() {
    //1
    if (head?.next == null) {
      return pop();
    }
    //2
    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }
    //3
    final value = tail!.value;
    tail = current;
    tail!.next = null;
    return value;
  }

  @override
  String toString() {
    if (head == null) return 'Empty List';
    return '${head.toString()}';
  }
}

void main() {
  final linkedList = LinkedList();
  linkedList.push(1);
  linkedList.push(2);
  linkedList.push(3);
  linkedList.push(4);
  linkedList.push(5);

  print(linkedList.toString());
  linkedList.pop();
  print(linkedList.toString());
  linkedList.removeLast();
  print(linkedList.toString());
}
