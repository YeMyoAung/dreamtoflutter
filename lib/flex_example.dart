import 'package:flutter/material.dart';
import 'package:starlight_utils/starlight_utils.dart';

class FlexExample extends StatelessWidget {
  const FlexExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex Example"),
      ),
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 2,
          runAlignment: WrapAlignment.end,
          alignment: WrapAlignment.center,
          runSpacing: 20,
          verticalDirection: VerticalDirection.down,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: 100,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.symmetric(vertical: 20),
              color: Colors.green,
            ),
            Container(
              width: 92,
              height: 200,
              color: Colors.blue,
              margin: const EdgeInsets.symmetric(vertical: 20),
            ),
            Container(
              width: 100,
              height: 200,
              color: Colors.green,
              margin: const EdgeInsets.symmetric(vertical: 20),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              margin: const EdgeInsets.symmetric(vertical: 20),
            ),
            Container(
              width: 92,
              height: 200,
              color: Colors.cyan,
              margin: const EdgeInsets.symmetric(vertical: 20),
            ),
          ],
        ),
      ),
    );
  }
}
