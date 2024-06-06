abstract class Queue<E> {
  bool enqueue(E element);
  E? dequeue();
  bool get isEmpty;
  E? get peek;
}

class QueueList<E> implements Queue<E> {
  final _list = <E>[];

  @override
  bool enqueue(E value) {
    _list.add(value);
    return true;
  }

  @override
  E? dequeue() => (isEmpty) ? null : _list.removeAt(0);

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => _list.first;

  //Testing the List-Based Implementation
  @override
  String toString() => _list.toString();
}

void main() {
  final queue = QueueList();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);

  print(queue.toString());
  print("Using dequeue ---> ${queue.dequeue()}");
  print(queue.toString());
  print("Peek value ---> ${queue.peek}");
  print("Adding new value ---> ${queue.enqueue(99)}");
  print(queue.toString());
}
