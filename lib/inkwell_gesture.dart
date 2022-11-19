import 'package:dreamtoflutter_widget/sizedbox_stack.dart';
import 'package:flutter/material.dart';

Widget gestureDetector() => GestureDetector(
      onTap: () {
        print("onTap");
      },
      child: sizedBoxStack(),
    );

Widget inkWell() => InkWell(
      onTap: () {
        print("onTap");
      },
      child: sizedBoxStack(),
    );
