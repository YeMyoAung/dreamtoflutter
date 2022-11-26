import 'package:flutter/material.dart';

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({super.key});

  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  Widget container(int index) {
    print("Build: count ${index + 1}");
    return Container(
      margin: const EdgeInsets.all(10),
      height: 600,
      width: 600,
      color: Colors.lightGreen,
      alignment: Alignment.center,
      child: Text(index.toString()),
    );
  }

  ///1 => Performance
  ///in case => singleChildScrollWidget (Ui ကို အခုလက်ရှိအတိုင်းမြင်ချင်တဲ့အခါမျိုးမှာသုံးတယ်)
  ///

  Widget singleChildScrollWidget() {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(20, container),
      ),
    );
  }

  Widget listView() {
    return ListView(
      itemExtent: 100,
      children: List.generate(1000, container),
    );
  }

  Widget listViewBuilder() {
    return ListView.builder(
      itemExtent: 100,
      itemBuilder: (_, i) => container(i),
    );
  }

  Widget gridView() {
    return GridView(
      // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 2,
      //   mainAxisSpacing: 40,
      //   crossAxisSpacing: 40,
      //   // mainAxisExtent: 200,
      //   childAspectRatio: 0.4,
      // ),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 200,
      ),
      children: List.generate(100, container),
    );
  }

  Widget gridViewBuilder() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 300,
      ),
      itemCount: 100,
      itemBuilder: (context, index) => container(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: singleChildScrollWidget(),
    );
  }
}
