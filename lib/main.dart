import 'package:dreamtoflutter_widget/button.dart';
import 'package:dreamtoflutter_widget/card.dart';
import 'package:dreamtoflutter_widget/container.dart';
import 'package:dreamtoflutter_widget/sizedbox_stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DreamtoFlutter());
}

class DreamtoFlutter extends StatelessWidget {
  const DreamtoFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DreamtoFlutterHomePage(),
    );
  }
}

class DreamtoFlutterHomePage extends StatelessWidget {
  const DreamtoFlutterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Our First App Development",
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
            fontFamily: 'zawgyi',
            fontFamilyFallback: ['san', 'one'],
            decoration: TextDecoration.underline,
            shadows: [
              Shadow(color: Colors.green, offset: Offset(1, 2)),
              Shadow(color: Colors.red, offset: Offset(1, 2)),
              Shadow(color: Colors.amber, offset: Offset(1, 2)),
            ],
            fontSize: 25,
            // height: 2,
            color: Colors.redAccent,
            backgroundColor: Colors.white,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            // letterSpacing: 10,
            wordSpacing: 10,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Icon(Icons.search),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: Icon(Icons.notifications),
          ),
        ],
        leading: Icon(
          Icons.menu,
          size: 40,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
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
        ),
      ),
    );
  }
}
