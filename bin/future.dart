import 'example.dart';

void main() async {
  final Map data = {'data': 'hi', 'hi': 'data'};

  print(data.entries);
  // data.addEntries();

  print("Start Working");
  fetchData().then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  });
  // generatePassword();
  print("Done");
  // print("Done");
  // print("Done");
  // print("Done");
}

// Future<String> fdjskd() async {}

// Future<String> generatePassword() async {
//   await Future.delayed(Duration(seconds: 3));
//   throw "error";
// }

// Future<String> fkafdjsl()async {
//   return '';
// }

// void fdjaslfk()async{

// }