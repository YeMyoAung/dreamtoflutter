import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({super.key});

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  int count = 0;

  ///controller (stream,sink)
  final StreamController defaultcontroller = StreamController();
  final StreamController namedcontroller = StreamController.broadcast();

  @override
  void initState() {
    super.initState();

    // Future(() {
    //   defaultcontroller.sink.add("hello");
    // });

    // Future(() {
    // namedcontroller.stream.listen(
    //   (data) {
    //     // setState(() {});
    //   },
    //   onDone: () {
    //     print('done');
    //   },
    // );

    //   namedcontroller.stream.listen((data) {
    //     setState(() {});
    //   });

    //   Timer.periodic(const Duration(seconds: 1), (timer) {
    //     count++;
    //     namedcontroller.sink.add(count);
    //   });
    // });

    // Future(() {
    // streamFunction().listen(
    //   (event) {
    //     // setState(() {});
    //   },
    //   onDone: () {
    //     print("done");
    //   },
    // );
    // });
  }

  @override
  void dispose() {
    namedcontroller.close();
    namedcontroller.close();
    defaultcontroller.close();
    super.dispose();
  }

  ///fx (count++)
  Stream streamFunction() async* {
    count++;

    ///return
    yield count;
  }

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("StreamBuilder Example"),
      ),
      body: Center(
        child: StreamBuilder(
          // key: UniqueKey(),
          stream: defaultcontroller.stream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Waiting....");
            }
            return Text(snapshot.data?.toString() ??
                snapshot.error?.toString() ??
                "Something went wrong");

            // return Text(snapshot.connectionState.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          count++;
          defaultcontroller.sink.add(count);
          // defaultcontroller.sink.add(Random.secure().nextInt(99999999));
          // defaultcontroller.addError("Error is hi");
          // defaultcontroller.close();
        },
      ),
    );
  }
}
