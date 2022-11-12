class Human {
  Human() {
    print("hello i'm human class");
    _head = "Changed from constructor";
    for (var i = 0; i < 10; i++) {
      age++;
    }
  }

  String _head = 'head';

  ///getter =>ရ
  String get head {
    return _head;
  }

  ///setter =>ထည့်
  set head(String value) {
    _head = value;
  }

  int age = 10;

  void main() {
    print("invoke main");
  }

  void create() {
    print("invoke create");
  }
}

// class NewFeed {
//   List feeds = [];

//   NewFeed() {
//     fetchFromInternet();
//   }
// }

// class Storage {
//   List store = [];

//   void addData() {}

//   void deleteData() {}

//   void replaceData() {}
// }

void main() {
  // final List<Map> personalInfo = [
  //   {
  //     'name': "Mg Mg",
  //     "age": 20,
  //     "parents": {
  //       "father": {
  //         "name": "U Mya",
  //         "age": 48,
  //       },
  //       "mother": {
  //         "name": "Daw Hla",
  //         "age": 44,
  //       }
  //     }
  //   },
  // ];

  Human human = Human();
  // Human.head;
  human._head = "aung aung";
  human.age = 20;
  human.create();
  human.main();
  print(human._head);
  print(human.age);
}
