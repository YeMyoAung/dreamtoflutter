import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String? groupValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio(
                    fillColor: MaterialStateProperty.all(Colors.green),
                    // activeColor: Colors.green,
                    value: "Male",
                    groupValue: groupValue,
                    onChanged: (value) {
                      // print(value);
                      print(groupValue);
                      setState(() {
                        groupValue = value;
                      });
                    }),
                const Text("Male")
              ],
            ),
            RadioListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                title: const Text("Female"),
                value: "Female",
                groupValue: groupValue,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    groupValue = value;
                  });
                }),
            Radio(
                value: "Other",
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
