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

  //Adding getter
  bool get isEmpty => head == null;

  //Adding push, append, nodeAt, insertAt
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

  //Now implementig pop, removeLast, removeAt
  E? pop() {
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
    tail = current;
    tail!.next = null;
    return value;
  }

  E? removeAt(Node<E>? node) {
    final value = node!.next?.value;
    if (node.next == tail) {
      tail = node;
    }
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
}
