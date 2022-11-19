import 'package:flutter/material.dart';

Widget elevatedButton() => ElevatedButton.icon(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.red),
        side: MaterialStateProperty.all(
          BorderSide(
            color: Colors.green,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      onLongPress: () {
        print("on long pressed");
      },
      onPressed: () {
        print("onPressed");
      },
      icon: Icon(Icons.touch_app),
      label: Text("Click Here"),
    );

Widget outlinedButton() => OutlinedButton.icon(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.red),
        side: MaterialStateProperty.all(
          BorderSide(
            color: Colors.green,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      onLongPress: () {
        print("on long pressed");
      },
      onPressed: () {
        print("onPressed");
      },
      icon: Icon(Icons.touch_app),
      label: Text("Click Here"),
    );

Widget textButton() => TextButton(
      onLongPress: () {
        print("on long pressed");
      },
      onPressed: () {
        print("onPressed");
      },
      child: Icon(Icons.touch_app),
      // label: Text("Click Here"),
    );
