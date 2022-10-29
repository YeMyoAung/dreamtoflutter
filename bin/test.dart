String text = "Hi Myanamar";

String changeToHello(String x) {
  return x.replaceAll("a", "o");
}

String toSell = "IphOne 14 Pro max";

String textDecoration({required bool toLowercase}) {
  if (toLowercase) {
    return toSell.toLowerCase();
  } else {
    return toSell.toUpperCase();
  }
}

String char = '1 2 3 4 5 a b c d e f g';

bool containChar(String x, {int startFrom = 0}) {
  return char.contains(x, startFrom);
}

final List<Map<String, double>> store = [
  {
    'Apple': 300,
  },
  {
    'Orange': 500,
  },
  {
    'Rice': 500,
  },
  {
    'Chicken': 650,
  },
  {
    'Fish': 400,
  },
  {
    'Porridge': 400,
  }
];

List<Map<String, double>> searchProduct(
  String name, {
  // bool startWith = true,
  bool caseS = false,
}) {
  final result = store.where((data) {
    return caseS
        ? data.keys.first.toLowerCase().startsWith(name.toLowerCase())
        : data.keys.first.startsWith(name);
  });
  return result.toList();
}





void main() {
 List<Map<String, double>> a = searchProduct("a",caseS: true);
 print(a);
}
