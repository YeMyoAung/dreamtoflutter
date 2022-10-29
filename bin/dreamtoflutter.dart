import 'dart:math';

///K    Keyword
///Data Type(var,dyanmic) => (1,2,3),[mg mg,aung aung],nay kaung lar
///Name       =>
///Value      =>
///let x = 1
///
///
///String =>  စာသား
///int    => ကိန်းပြည့်
///double => ဒဿမကိန်း
///bool   => မှား/မှန်
///[], => List
///{}  => Map (K,V)
///Null => ?, ?? ,!

///Math
/// +,-,*,/
/// ~/ => ဒဿမနဲ့မထွက်ဘူး
/// ++ => တစ်တိုး
/// -- => တစ်လျော့
/// += => ပေါင်းထည့် 1+=3,4
/// -= => လျော့ပစ်မှာ
/// >,<
/// >=  =>ကြီးကြီးချင်ကြီးမယ် ညီချင်ညီမယ်
/// <=  =>

/// = (assgin)
/// == (ညီတယ်)
/// != (မညီဘူး)
/// && (နှင့်)
/// || (or)
/// ?
void main() {
  // String firstValue;///null
  // print(firstValue);

  final int a = 4;
  final int b = 2;
// question ? :
  final String result = a == b ? "Hello World" : "Hi World";
  // print(result);
  ///if   => လျှင် true
  ///else => သို့မဟုတ် false
  ///aက 3ညီလျှင် a is 3,aက ၂ညီလျှင် a is 2,aက 1ညီလျှင် a is 1

  // a == 3 ? "a is 3" : "unknown";

  // a == 3 ? "a is 3"
  // : a == 2 ? "a is 2"
  // : a == 1 ? "a is 1"
  // :"unknown";

  // a == 1 ? "": "";

  // if (a == 3) {
  //   print("a is 3");
  // }
  //else if (a == 2) {
  //   print("a is 2");
  // } else if (a == 1) {
  //   print("a is 1");
  // } else {
  //   print("unknown");
  // }

  ///switch =>
  ///case   =>
  ///break

  // switch ("apple") {
  //   case "a":
  //     print("hey");
  //     break;
  //   case "arrow":
  //     print("hi");
  //     break;
  //   default:
  //     print("default value");
  // }

  // print(calculateUsdToMMK(100));
  print(getParent("mg_mg", "19"));

  ///U Mya
  print(getParent("aung_aung", "20"));

  ///U Kyaw
}

final Map<String, String> parents = {
  "mg_mg": "U Mya",
  "aung_aung": "U Kyaw",
  "su_su": "U Aye"
};

String getParent(String name, String age) {
  return parents[name] ?? "";
}

// double calculateUsdToMMK(double usd){
//   ///100
//   return usd * 3100;
// }

void backup() {
  double name = 23;
  double susu = -23.0;

  int plusInt = 23;
  int minusInt = -23;

// print(name);

  String welcomeText = 'မြန်မာသာစကား';

// print(welcomeText);
// print(susu);

  bool examIsPass = false;

  ///index   = 0       0,3
  List studentsList = ["Mg Mg", "Aung Aung", "Su Su", 123, 345, true, false];

  ///K,V
  Map<String, List<Map<String, String>>> newMap = {
    //  "value": [
    //   {
    //     "value":"Hello World",
    //     "value2":"Hi World",
    //   }
    //  ]
  };

  var hello = newMap['value']!;

// newMap['value'];///[{}]
// newMap['value'][0];///{}
// newMap['value'][0]['value2'];///

  // print(newMap['value']![0]["value2"]);

  // print(studentsList[3]);
  // print(newMap["key2"]);

  // print(studentsList[1]);
  // print(studentsList[5]);

  // print(newMap["hello"]);
  // print(newMap["Hi"]);

//  var x= 1;
//  var y = 2;
//  var z = x +y;

//  print(z);

//  double value1;

//  double value2 = 10;

//  print(value1 + value2);

// String? value;///NULL

// print(value);

  // String? name;

  // name = "hello";

  // print(name);

//   Map<String,String?> hello = {
//     "value":null,
//     "value1":"Hi World",
//   };

//  String value = hello["value"] ?? "NUll Value";
//  print(value );
//  print(value);

  int x = 3;
  int y = 3;
  bool z = x >= y;
  print(z);
  pow(x, 3);
  // y++;
  // x--;
  // x = x ~/100;
  // x ~/= 100;
  // x = x + 10;
  // x*=10;
  // double z = x/y;///double

  // print(z);
  ///
  const String constantName = 'hello world';

//  kdnv
  final String uniqueName;
  uniqueName = 'a';
  late String lateName;

  ///must be assgin
  lateName = 'a';
  lateName = 'b';
}

///DataType
///Name
///() => DN (Datatype,Name)
///{}
///return ပြန်
///
///
double jfalsjlafjdsla(){
  return 0;
}

getHaHa(){
  return 3;
}

// Map<String,dynamic> getAddress(){
//   print("hi world");
//   return {};
//   print("hello world");
// }

// List<dynamic> getAge(){
//   return [];
// }

// double getNumber(){
//   return 1;
// }
