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

class LinkedList<E> extends Iterable<E> {
  Node<E>? head;
  Node<E>? tail;

  //Adding getters
  @override
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
      return;
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

  //Now adding operations like pop, removeLast, removeAt
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
    //1
    final value = node!.next?.value;
    node.next = node.next!.next;
    return value;
  }

  @override
  Iterator<E> get iterator => _LinkedListIterator(this);

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return '${head.toString()}';
  }
}

class _LinkedListIterator<E> implements Iterator<E> {
  _LinkedListIterator(LinkedList<E> list) : _list = list;
  final LinkedList<E> _list;

  Node<E>? _currentNode;

  @override
  E get current => _currentNode!.value;

  bool _firsPass = true;

  @override
  bool moveNext() {
    //1
    if (_list.isEmpty) return false;
    //2
    if (_firsPass) {
      _currentNode = _list.head;
      _firsPass = false;
    } else {
      _currentNode = _currentNode?.next;
    }
    //3
    return _currentNode != null;
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
  print("");
  for (final element in linkedList) {
    print(element);
  }
}
