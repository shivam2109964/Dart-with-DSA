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

  //Adding some getter
  bool get isEmpty => head == null;

  //Adding push value in LinkedList
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  //Adding append value in LinkedList
  void append(E value) {
    if (isEmpty) {
      push(value);
    }
    tail!.next = Node(
      value: value,
    );
    tail = tail!.next;
  }

  //Now implementing a nodeAt and insertAfter
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

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
    if (head == null) return 'Empty List';
    return '${head.toString()}';
  }
}

void main() {
  final linkedlist = LinkedList();
  linkedlist.push(1);
  linkedlist.push(2);
  linkedlist.push(3);
  linkedlist.push(4);
  linkedlist.push(5);
  linkedlist.push(6);

  print(linkedlist.toString());
  print("");
  linkedlist.append(99);
  print(linkedlist.toString());
  var middleValue = linkedlist.nodeAt(2);
  linkedlist.insertAfter(middleValue, 999);
  print("");
  print(linkedlist.toString());
}
