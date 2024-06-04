void main() {
  final people = ['Pablo', 'Manda', 'Megan'];
  print(people[0]);
  print(people[1]);
  print(people[2]);
  print("");
  print(people);

  //Inserting a middle value
  people.insert(0, "Hello");
  int middle = people.length ~/ 2;
  people.insert(middle, "Ji");

  print(people);
}
