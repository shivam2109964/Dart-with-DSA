//Creating Node
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

//Creating LinkedList
class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  //Getter of isEmpty
  bool get isEmpty => head == null;

  //Push Operation
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  //Append Operation
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);

    tail = tail!.next;
  }

  //NodeAt operation
  Node<E>? nodeAt(int index) {
    //1
    var currentNode = head;
    var currentIndex = 0;
    //2
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  //InsertAfter Opearation
  Node<E> insertAfter(Node<E>? node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }
    node!.next = Node(value: value, next: node.next);
    return node.next!;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return '${head.toString()}';
  }
}

void main() {
  final list = LinkedList();
  list.push(1);
  list.push(2);
  list.push(3);
  list.push(4);

  var middleNode = list.nodeAt(2);
  list.insertAfter(middleNode, 44);

  print(list);
}
