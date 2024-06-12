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

  //Adding operations like push, append, nodeAt & insertAt
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
    //1
    var currentNode = head;
    var currentindex = 0;
    //2
    while (currentNode != null && currentindex < index) {
      currentNode = currentNode.next;
      currentindex += 1;
    }
    //3
    return currentNode;
  }

  Node<E>? insertAt(Node<E>? node, E value) {
    if (node!.next == tail) {
      append(value);
      return tail;
    }
    node.next = Node(value: value, next: node.next);
    return node.next;
  }

  //Now adding opeartions like pop, removeLast, removeAt
  E? pop() {
    final value = head!.value;
    head = head!.next;
    return value;
  }

  E? removeLast() {
    //1
    if (head!.next == tail) {
      tail = null;
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

  linkedList.push("Shivam");
  linkedList.push("Golu");
  linkedList.push("Rishab");
  linkedList.push("Raju");
  linkedList.push("Gaurav");
  linkedList.push("Sumit");
  linkedList.push("Suyash");
  linkedList.push("pal");
  linkedList.push(999);

  linkedList.append(999);
  var insertAtLOC = linkedList.nodeAt(4);
  linkedList.insertAt(insertAtLOC, 999);

  print("Implementig push, append and insertAt");
  print(linkedList.toString());
  print("Now implementing pop, removeLast, removeAt");
  var popHistory = linkedList.pop();
  print("Using pop 'Removing First Value' $popHistory");
  var removeLastHistory = linkedList.removeLast();
  print("Using removeLast 'Removing Last Value' $removeLastHistory");
  var removeAtHistory = linkedList.removeAt(insertAtLOC);
  print("Using removeAt 'Remove At Certain Point Value' $removeAtHistory");
  print(linkedList.toString());
}
