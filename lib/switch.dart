import 'package:flutter/material.dart';

Widget switchWidget() => Switch(
      thumbColor: MaterialStateProperty.all(Colors.cyan),
      trackColor: MaterialStateProperty.all(Colors.purple),
      overlayColor: MaterialStateProperty.all(Colors.red),
      splashRadius: 0,
      activeColor: Colors.green,
      activeTrackColor: Colors.amber,
      inactiveThumbColor: Colors.red,
      inactiveTrackColor: Colors.amberAccent,
      value: switchValue,
      onChanged: (value) {
        setState(() {});
        switchValue = !switchValue;
        print(switchValue);
        setState(() {});
      },
    );
