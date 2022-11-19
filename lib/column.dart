import 'package:dreamtoflutter_widget/card.dart';
import 'package:dreamtoflutter_widget/sizedbox_stack.dart';
import 'package:flutter/material.dart';

Widget column() => Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sizedBoxStack(),
        // sizedBoxStack(),
        // sizedBoxStack(),
        // Expanded(child: ),
        card()
      ],
    );
