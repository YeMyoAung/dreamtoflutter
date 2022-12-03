import 'package:flutter/material.dart';

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class App5State extends StatefulWidget {
  final String title;
  const App5State({super.key, required this.title});

  @override
  State<App5State> createState() => _App5StateState();
}

class _App5StateState extends State<App5State> {
  String state = "None";

  ///1
  @override
  void initState() {
    super.initState();
    // Future(() {
    print("init state");
    //   state = "Init State";
    // });
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void didUpdateWidget(covariant App5State oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    ///
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Build ");
    // setState(() {});
    return Scaffold(
      appBar: AppBar(
        title: const Text("App 5 State"),
      ),
      body: Center(
        child: Text(
          state,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // body: const Center(
      //   child: TextField(),
      // ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          state = DateTime.now().toString();
        });
      }),
    );
  }
}
