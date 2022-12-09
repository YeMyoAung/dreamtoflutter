import 'package:flutter/material.dart';

class RefreshIndicatorExample extends StatefulWidget {
  const RefreshIndicatorExample({super.key});

  @override
  State<RefreshIndicatorExample> createState() =>
      _RefreshIndicatorExampleState();
}

class _RefreshIndicatorExampleState extends State<RefreshIndicatorExample> {
  int itemCount = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Refresh Indicator Example"),
      ),
      body: RefreshIndicator(
        color: Colors.red,
        backgroundColor: Colors.amber,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 20));
          itemCount += 10;
          setState(() {});
        },
        child: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (_, i) {
            return Container(
              color: Colors.green,
              height: 200,
              margin: const EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.center,
              child: Text(
                "$i",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
