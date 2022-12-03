import 'package:dreamtoflutter_widget/card.dart';
import 'package:dreamtoflutter_widget/sizedbox_stack.dart';
import 'package:flutter/material.dart';

class StateWidget extends StatefulWidget {
  const StateWidget({super.key});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  String? switchValue;
  TextEditingController cc = TextEditingController();
  FocusNode ff = FocusNode();

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  Widget drawerUi() {
    print("drawer was built");
    return Container(
      color: Colors.white,
      width: double.infinity,
      // child: SingleChildScrollView(
      //   child: Column(
      //     children: List.generate(1000, (_) => card()),
      //   ),
      // ),
      // child: ListView(
      //   children: [card(), TextField(), sizedBoxStack()],
      // ),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (build, count) {
          return [card(), const TextField(), sizedBoxStack()][count];
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(cc.text);
    return Scaffold(
      key: key,
      // drawer: drawerUi(),
      endDrawer: drawerUi(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          // TextFormField(
          //   autovalidateMode: AutovalidateMode.onUserInteraction,
          //   validator: (value) {
          //     // return value?.isNotEmpty == true
          //     //     ? double.tryParse(value ?? "") == null
          //     //         ? "We only accept numer"
          //     //         : null
          //     //     : null;
          //     // return value?.startsWith('@') == true
          //     //     ? null
          //     //     : "Twitter name must be start with @ sign";
          //     return null;
          //   },
          //   // keyboardType: TextInputType.number,
          //   decoration: const InputDecoration(
          //     hintText: "Twitter Name",
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // TextButton(
          //   onPressed: () {
          //     // key.currentState?.openDrawer();
          //     key.currentState?.openEndDrawer();
          //   },
          //   child: Text("Test"),
          // )
        ],
      ),
    );
  }
}