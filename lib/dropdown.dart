import 'package:flutter/material.dart';

Widget dropdown() => DropdownButton(
      // menuMaxHeight: 50,
      borderRadius: BorderRadius.circular(10),
      dropdownColor: Colors.green,
      // isDense: true,
      // isExpanded: true,
      itemHeight: 100,
      icon: Icon(Icons.start),
      underline: SizedBox(),
      hint: Text("Select"),
      disabledHint: Text("Ha Ha"),
      value: switchValue,
      items: [
        DropdownMenuItem(
          value: '0',
          child: Text("Item 1"),
        ),
        DropdownMenuItem(
          value: '1',
          child: Text("Item 2"),
        ),
        DropdownMenuItem(
          value: '2',
          child: Text("Item 3"),
        ),
      ],
      onChanged: (value) {
        setState(() {
          switchValue = value;
        });
      },
    );
