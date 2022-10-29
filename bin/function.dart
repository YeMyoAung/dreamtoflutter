////Datatype
////Name
////()  =>[],{} optional
////{}  =>

void execute({String? data}) {
  print(data ?? "Hello World");
}

String sayHello(String value1) {
  return "Hello";
}

final Map<String, double> rates = {
  'usd': 100,

  ///MMK
  'th': 0.1,

  ///MMK
  'jpy': 0.001,

  ///MMK
};

/// []
/// {}

double mmkToOtherExchange(double amount, [String? to]) {
  return amount / rates[to ?? 'usd']!;
}

final List<String> studentNames = ["mg mg", 'aung aung', 'su su'];

bool check(int row) {
  return studentNames[row] != '';
}

void applyForm({
  required String name,
  required String phone,
  required String father,
  required String mother,
}) {}

int jfklasjdfla(String name,

    ///မဖြစ်မနေထည့်ကိုထည့်ပေးရမယ်
    {required String age}

    ///
    ) {
  return 0;
}

void main() {
  applyForm(
      mother: "jfkladjflas",
      name: "lasjkfsa",
      phone: "jlkasjflasd",
      father: "fakfjalsjfalsd");

  String name;

  ///nulll

  final bool mgmgPresent = check(0);
  final bool aungaungPresent = check(1);
  final bool susuPresent = check(2);

  print(mgmgPresent);
  print(aungaungPresent);
  print(susuPresent);

  final double mmkToUsd = mmkToOtherExchange(100000, 'usd');

  ///400
  // final double mmkToTh = mmkToOtherExchange(100000,'th');///2000
  // final double mmkToJpy = mmkToOtherExchange(100000,'jpy');///90000

  // print("mmk-usd: $mmkToUsd");
  // print("mmk-th: $mmkToTh");
  // print("mmk-jpy: $mmkToJpy");

//  final String result = sayHello("Mg Mg");

//  print(result);
}
