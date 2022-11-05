import 'dart:math';

void main() {
  ///var ကဘာနဲ့တူလဲဆိုရင် late သဘောတရားတူတယ်
  ///var ကဘယ်လိုအလုပ်လုပ်လဲဆိုရင် နီးစပ်ရာDataTypeကိုပြောင်းပြီးအလုပ်လုပ်ပေးတယ်

  // var hello = {};
  // print(hello.runtimeType);

// var fajslfas = "hello";
// dynamic fdjkafjds = "hello";
// fajslfas= "jdklfajlsda";
// fdjkafjds = 1;

// var fajsdlfsa;
//  fajsdlfsa = 1;
//  fajsdlfsa = 'fjdas';

  // dynamic students = {
  //   'map':1
  // };

// print(students.subString(10));

  // students.length;
  // print(students.reversed.toList());
  ///mgmg == MgMg
  // students.hashCode;
  // print('mgmg'.hashCode);
  // print('mgmG'.hashCode);
  // print(fasjfsal().runtimeType);

// list.first;
// list.last;
// list.isEmpty;
// list.isNotEmpty;
// {fasfas,f,dfsa,fasd,}
// list.iterator;
// print(list.single);
// list.add({});
// list.addAll([1,2,3,4,54,5,6,]);

// hello(hi);
  // print();
  // print(list.contains('mg mg'));
  // list.contains('Mg Mg');

  // list.contains('1');
  // list.contains(2);

  // print(list.asMap());
//  List castList = list.cast();
//    print(list);
//    print(castList);
//    print("--------");
//  list.add("hello");
//     print(list);
//    print(castList);
// print( toDoList.any((incoming) {
//     return incoming == 'Mg Mg' || incoming == 1 || incoming == 2;
//   }));
// print(toDoList.every((incoming){
//  return incoming == 'Mg Mg' || incoming == 1 || incoming == 2;
// }));
// list.clear();
// print(list);
  List toDoList = ["work", "learn", "freelance", "rest", "Dart"];
  List complete = ["work", "learn", "freelance"];

  // toDoList.shuffle();

  // print(toDoList);

  toDoList.sort((previous, current) {
    return previous.toString().length.compareTo(current.toString().length);
  });
  print(toDoList);
  // toDoList.forEach((e) {
  //   print(e);
  // });

  // final data = toDoList.map((data) {
  //   return [data];
  // });

// print(data);

  // final data =toDoList.take(10);
  // print(data.toList());

//  final data = toDoList.sublist(3);
//  print(data);

// toDoList.fillRange(3,5,"x");
// print(toDoList);

//   toDoList.replaceRange(0, 4, ["Flutter"]);
// print(toDoList);

//  final data = toDoList.removeAt(2);//"freelance"
// toDoList.add(data);
//  print(toDoList);

//   toDoList.removeWhere((data){
//     return data.contains("llllm");
//   });

// print(toDoList);

//  final int result = toDoList.indexWhere((data){
//     return data.contains("e");
//   },3);
  // print(result);

//  final result = toDoList.lastWhere((data){
//     return data == '1';
//   },orElse: () {
//     return "There is no data";
//   },);

//   print(result);

//  final hello = toDoList.firstWhere((data){
// return data == "rests";
//   },orElse: (){
//     return "There is no data";
//   },);
//   print(hello);

//  final bool result = toDoList.every((data){
// return data == "Flutter";
//   });
//   print(result);

//  final bool result = toDoList.any((data){
//     return data == "Flutter" || data == "Dart";
//   });

//   print(result);

//   toDoList.contains(complete);
// print(
//    toDoList.every((fasfsa){
//   return complete.contains(fasfsa);
//  })
// );
// print(toDoList.any((jfdlajs){
//   return complete.contains(jfdlajs);
// }));
}

// var h = (dfjaslfdjkas) {
//   return dfjaslfdjkas == 'mg mg' || dfjaslfdjkas == 1;
// };

// bool Function(dynamic) test
// int hi(){}

// void hello(Function fsafasd){

// }
