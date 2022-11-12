void main() {
  Map<String, dynamic> toDoList = {
    'day1': {'morning': 'work', 'evening': 'rest'},
    'day2': {'morning': 'learn', 'evening': 'gym'},
    'day3': {'morning': 'trip', 'evening': 'work'},
  };
  // toDoList.entries;
  // print(toDoList.keys.toList());
  // print(toDoList.values.toList());

  // toDoList.length;
  // toDoList.addEntries([MapEntry('day4', {})]);
  // print(toDoList);
  toDoList.addAll({
    'day4': {},
    'day5': {},
  });
  // print(toDoList);
  // toDoList.cast();
  // toDoList.clear();
  // print(toDoList.containsKey('day5'));
  // print(toDoList.containsValue({}));
  // toDoList.forEach((key, value) {
  //   print(key);
  //   print(value);
  // });
  // print(toDoList.map((key, value) {
  //   return MapEntry(value, key);
  // }));
  // final data = toDoList.putIfAbsent("day1", () => "hello world");
  // print(toDoList);
  // print(data);
  // final data = toDoList.remove('day1');
  // print(data);
  // print(toDoList);
  // toDoList.removeWhere((key, value) {
  //   return key == "day2";
  // });
  // print(toDoList);
}


// ()=>"";