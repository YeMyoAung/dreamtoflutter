import 'package:flutter/material.dart';

Widget slider() => Slider(
      label: "$switchValue",
      divisions: 10,
      thumbColor: Colors.green,
      min: -100,
      max: 100,
      value: switchValue,
      activeColor: Colors.red,
      inactiveColor: Colors.amber,
      onChanged: (value) {
        print(value);
        setState(() {
          switchValue = value;
        });
      },
    );
