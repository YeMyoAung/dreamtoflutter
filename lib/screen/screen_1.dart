import 'package:dreamtoflutter_widget/screen/screen_2.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter == 0 ? "" : counter.toString()),
            ElevatedButton(
              onPressed: () async {
                print("start");

                final int? result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const Screen2();
                    },
                    settings: RouteSettings(
                      name: "/2",
                      arguments: counter,
                    ),
                  ),
                );
                // if (result != null) {
                //   counter = result;
                //   setState(() {});
                // }
                // Navigator.push(context, CupertinoPageRoute(builder: (value) {
                //   return const Screen2();
                // }));
              },
              child: const Text("Go To Screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}
