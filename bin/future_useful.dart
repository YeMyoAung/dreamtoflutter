void main() async {
  print('start');
  // final result = await Future.any([
  // firstMethod(),
  // secondMethod(),
  // thirdMethod(),
  // ]); //Performance Compare
  // print(result);
  final result = await Future.wait([
    thirdMethod(), //1  => bool
    firstMethod(), //1  =>String
    secondMethod(), //1 =>int
  ]); //Parallel Work
  print(result);
  // await Future.delayed(Duration(seconds: 3), () {
  //   print("done");
  // }); //Timer
  print("complete");
  // Future.value();//Normal Type => Future<Type>
}

Future<String> firstMethod() {
  return Future.value("fdajlfdaslk");
}

Future<int> secondMethod() async {
  await Future.delayed(Duration(seconds: 6));

  return 10;
}

Future<bool> thirdMethod() async {
  await Future.delayed(Duration(seconds: 1));

  return true;
}
