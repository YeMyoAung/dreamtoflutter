import 'package:dreamtoflutter_widget/screen/screen_3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    // Future(() {
    //   counter = (ModalRoute.of(context)?.settings.arguments as int?) ?? 0;
    //   setState(() {});
    // });
  }

  @override
  void didChangeDependencies() {
    // counter = (ModalRoute.of(context)?.settings.arguments as int?) ?? 0;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    ///!Avoid
    // print(ModalRoute.of(context)?.settings.name);
    // print(ModalRoute.of(context)?.settings.arguments.runtimeType);
    // Navigator.of(context).pop();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.pop(context, counter),
            icon: const Icon(Icons.arrow_back)),
        // leading: const SizedBox(),
        title: const Text("Screen 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) {
                      return const Screen3();
                    },
                    settings: const RouteSettings(
                      name: '/3',
                    )));
          },
          child: const Text("Go To Screen 3"),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        counter++;
        setState(() {});
      }),
    );
  }
}
