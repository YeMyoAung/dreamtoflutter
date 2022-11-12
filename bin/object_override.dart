// Map name = {};

// class Exam {
//   ///override

//   final String _name;

//   ///creator
//   // Exam(String name)

//   //     ///prepare
//   //     : _name = name {
//   //   //created ,Exam
//   // }

//   Exam(this._name);

//   Exam.private(String name)
//       :

//         ///prepare
//         _name = name {
//     ///createing
//   }

//   // factory
//   factory Exam.hkjfahskjfda(String name) {
//     return Exam.private(name);
//   }

//   ///default => name တန်ဖိုးရှိနေမယ်
//   // Exam(String name) {
//   //   //this => အခုလက်ရှိ instance,this.name
//   //   this.name = name;
//   // }

//   ///name constructorဖြစ်ချင်ရင်  .ခံပြီးကိုယ်ပေးချင်တဲ့နာမည်ပေး
//   ///name constructorပေးလိုက်တာနဲ့ default constructorပျက်တယ်
//   // Exam.ielts() {
//   //   ///code
//   // }
//   // Exam.speaking() {
//   //   ///code
//   // }
//   // Exam.writing() {
//   //   ///code
//   // }
// }

abstract class Exam {
  String variable = "aung aung";

  void hello() {}

  static String name = "mg mg";

  ///String name
  static void test() {
    // final String a = name;
    // print(a);
    print("test fun");
  }
}

class GradeOne implements Exam {
  @override
  String variable = "aung aung";

  @override
  void hello() {
    // TODO: implement hello
  }

  // @override
  // void test() {
  //   //this,super
  //   super.test();
  //   print("hello");
  //   print("hi");
  // }
}

void main() {
  // Exam();
  // GradeOne gradeOne = GradeOne();

  // print(gradeOne is String);

  Exam exam = Exam();
  Exam.name = "hi";

  ///1
  Exam exam2 = Exam();
  Exam.name = "hello";

  ///2
  Exam exam3 = Exam();
  Exam.name = "yo";

  ///3

  exam.variable = "hi";
  exam2.variable = "hello";
  exam3.variable = "yo";
  print(Exam.name);
  print(exam.variable);
  print(exam2.variable);
  print(exam3.variable);

  // GradeOne gradeOne = GradeOne();
  // Exam.test();
  // Exam.name;
  // gradeOne.test();

  // print(gradeOne.name);

  // Exam exam = Exam("fasfsda"); //object

  ///this.name = exam.name
  // exam.name;
  // print(exam);
}
