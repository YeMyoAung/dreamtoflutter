import 'package:http/http.dart' as http;

Future<String> fetchData() async {
  final http.Response response =
      await http.get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
  return response.body;
}
