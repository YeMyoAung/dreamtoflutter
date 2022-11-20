import 'package:flutter/material.dart';

Widget checkbox() => Checkbox(
      fillColor: MaterialStateProperty.all(Colors.amber),
      // activeColor: Colors.green,
      checkColor: Colors.green,
      tristate: true,
      overlayColor: MaterialStateProperty.all(Colors.red),
      splashRadius: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      value: switchValue,
      onChanged: (value) {
        print(value);
        setState(() {
          switchValue = value;
        });
      },
    );
