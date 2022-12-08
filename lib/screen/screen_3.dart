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
            //  (route) {
            //   ///False => Delete
            //   ///True  => Skip

            //   ///home
            //   ///login
            //   ///register
            //   ///profile

            //   return ['home', 'profile'].contains(route.settings.name);

            //   // print(route.settings.name);
            //   // return route.settings.name == '/3';
            // }
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //       settings: const RouteSettings(name: "/4"),
            //       builder: (_) {
            //         return const Screen4();
            //       }),
            // );
            // Navigator.pushReplacementNamed(context, '/screen1');

            // Navigator.popUntil(context, (route) {
            //   return route.settings.name == '/screen1';
            // });
            // Navigator.popAndPushNamed(context, '/screen4');
            Navigator.pushNamedAndRemoveUntil(context, '/screen4', (route) {
              return route.settings.name == '/screen2';
            });
          },
          child: const Text("Pop Until"),
        ),
      ),
    );
  }
}
