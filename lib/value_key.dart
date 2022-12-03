import 'package:flutter/material.dart';

class ValueKeyExample extends StatefulWidget {
  const ValueKeyExample({super.key});

  @override
  State<ValueKeyExample> createState() => _ValueKeyExampleState();
}

class _ValueKeyExampleState extends State<ValueKeyExample> {
  bool show = true;
  final TextEditingController input1 = TextEditingController(),
      input2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Value key Example"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        show = !show;
        setState(() {});
      }),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (show)
              ValueKeyContainer(
                controller: TextEditingController(),
                key: UniqueKey(),
              ),
            ValueKeyContainer(
              controller: input2,
              key: const ValueKey(2),
            )
          ],
        ),
      ),
    );
  }
}

class ValueKeyContainer extends StatefulWidget {
  final TextEditingController controller;
  const ValueKeyContainer({
    super.key,
    required this.controller,
  });

  @override
  State<ValueKeyContainer> createState() => _ValueKeyContainerState();
}

class _ValueKeyContainerState extends State<ValueKeyContainer> {
  @override
  void initState() {
    ///INiti
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ValueKeyContainer oldWidget) {
    print(oldWidget.key);
    print(widget.key);
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return const TextField(
        // controller: widget.controller,
        );
  }
}
