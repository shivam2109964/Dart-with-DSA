class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  //Adding push operation
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  //Adding append operation
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  //Adding nodeAt operation
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  //Adding insertAfter Operation
  Node<E>? insertAfter(Node<E>? node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }
    node!.next = Node(value: value, next: node.next);
    return node.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty';
    return '${head.toString()}';
  }
}

void main() {
  final list = LinkedList();
  list.push(1);
  list.push(2);
  list.push(3);
  list.push(4);
  list.push(5);
  list.push(6);

  var value = list.nodeAt(3);
  list.insertAfter(value, 333);

  print("${list.toString()}");
}
