void main() {
  final List<Map> personalInfo = [
    {
      'name': "Mg Mg",
      "age": 20,
      "parents": {
        "father": {
          "name": "U Mya",
          "age": 48,
        },
        "mother": {
          "name": "Daw Hla",
          "age": 44,
        }
      }
    },
    {
      'name': "Aung Aung",
      "age": 20,
      "parents": {
        "father": {
          "name": "U Mya",
          "age": 48,
        },
        "mother": {
          "name": "Daw Hla",
          "age": 44,
        }
      }
    },
    {
      'name': "Su Su",
      "age": 20,
      "parents": {
        "father": {
          "name": "U Mya",
          "age": 48,
        },
        "mother": {
          "name": "Daw Hla",
          "age": 44,
        }
      }
    }
  ];

  final List<Person> persons = personalInfo.map((e) {
    return Person(e);
  }).toList();

  print(persons[0].name);
  print(persons[1].name);
  // final Person person = Person(personalInfo);
  // print(person.age);
}

///Admin => login
///User  => login

class Person {
  // Person(Map data) {
  //   name = data['name'];
  //   age = data['age'];
  //   father.name = data['parents']['father']['name'];
  //   father.age = data['parents']['father']['age'];
  //   mother.name = data['parents']['mother']['name'];
  //   mother.age = data['parents']['mother']['age'];
  // }

  Person(fsafd){
    ////
  }

  String name = '';
  int age = 0;
  Father father = Father();

  String get fatherName => father.name;

  Mother mother = Mother();
}

class Father {
  String name = '';
  int age = 0;
}

class Mother {
  String name = '';
  int age = 0;
}
