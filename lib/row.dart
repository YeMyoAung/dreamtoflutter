import 'package:dreamtoflutter_widget/card.dart';
import 'package:dreamtoflutter_widget/sizedbox_stack.dart';
import 'package:flutter/material.dart';

Widget row() => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        sizedBoxStack(),
        // sizedBoxStack(),
        // sizedBoxStack(),
        Expanded(child: card()),
      ],
    );
