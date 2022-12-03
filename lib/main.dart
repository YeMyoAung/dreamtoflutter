import 'package:dreamtoflutter_widget/card.dart';
import 'package:dreamtoflutter_widget/screen/screen_1.dart';
import 'package:dreamtoflutter_widget/sizedbox_stack.dart';
import 'package:flutter/material.dart';
import 'package:starlight_utils/starlight_utils.dart';

///TypeScript =>
///JAVA       =>

///Nodejs     =>
///Python     =>

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const DreamtoFlutter());
}

class DreamtoFlutter extends StatelessWidget {
  const DreamtoFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StarlightUtils.navigatorKey,
      home: const ScreenOne(),
      // home: const PageStorageKeyExample(),
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
        title: const Text(
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Icon(Icons.search),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(right: 20),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: const Icon(Icons.notifications),
          ),
        ],
        leading: const Icon(
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
