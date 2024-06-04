import 'dart:collection';

void main() {
  final scors = {'Eric': 9, 'Mark': 12, 'Wayne': 1};
  scors['Shivam'] = 15;
  print(scors);

  final hashMap = HashMap.of(scors);
  print(hashMap);
}
