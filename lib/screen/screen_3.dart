import 'package:dreamtoflutter_widget/screen/screen_4.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 3"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (_) {
              return const Screen4();
            }), (route) {
              ///False => Delete
              ///True  => Skip

              ///home
              ///login
              ///register
              ///profile

              return ['home', 'profile'].contains(route.settings.name);

              // print(route.settings.name);
              // return route.settings.name == '/3';
            });
          },
          child: const Text("Push and Remove"),
        ),
      ),
    );
  }
}
