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

  //Adding getter
  bool get isEmpty => head == null;

  //Adding push, append, nodeAt, insertAfter
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

  Node<E>? insertAt(Node<E>? node, E value) {
    if (tail == node) {
      append(value);
      return tail;
    }
    node!.next = Node(value: value, next: node.next);
    return node.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
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
  linkedList.push(69);

  print(linkedList.toString());
  linkedList.append(99);
  print(linkedList.toString());

  var insertLocation = linkedList.nodeAt(2);
  var insertionValue = linkedList.insertAt(insertLocation, 293);
  print("insertion value is -> $insertionValue");
  print(linkedList.toString());
}
