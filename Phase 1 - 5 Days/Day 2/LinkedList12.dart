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
    while (currentNode != tail && currentIndex < index) {
      currentNode = currentNode!.next;
      currentIndex += 1;
    }
    //3
    return currentNode;
  }

  Node<E>? insertAt(Node<E>? node, E value) {
    //1
    if (tail == node) {
      append(value);
      return tail;
    }
    //2
    node!.next = Node(value: value, next: node.next);
    return node.next;
  }

  //implementing the pop, removeLast, removeAt
  E? pop() {
    //1
    final value = head!.value;
    head = head!.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  E? removeLast() {
    //1
    if (head!.next == null) {
      return pop();
    }
    //2
    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }
    //3
    final value = tail!.value;
    tail!.next = null;
    tail = current;
    return value;
  }

  E? removeAt(Node<E>? node) {
    //1
    final value = node!.next?.value;
    //2
    if (node.next == tail) {
      tail = node;
    }
    //3
    node.next = node.next!.next;
    return value;
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

  print("----- Linked List Deletion Operations -----");
  linkedList.pop();
  print(linkedList.toString());
  linkedList.removeLast();
  print(linkedList.toString());
  linkedList.removeAt(insertLocation);
  print(linkedList.toString());

  // print("------------------------");
  // for (final element in linkedList) {
  //   print(element);
  // }
}
