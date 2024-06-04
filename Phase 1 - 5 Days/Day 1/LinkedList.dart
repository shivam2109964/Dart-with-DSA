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

//Now create a LinkedList
class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  //Pushing the value
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return head.toString();
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

  print(list.toString());
}
