import 'package:flutter/material.dart';
import 'package:starlight_utils/starlight_utils.dart';

class TabBarViewExample extends StatefulWidget {
  const TabBarViewExample({super.key});

  @override
  State<TabBarViewExample> createState() => _TabBarViewExampleState();
}

class _TabBarViewExampleState extends State<TabBarViewExample>
    with TickerProviderStateMixin {
  late final TabController controller = TabController(
    // initialIndex: 2,
    length: 3,
    vsync: TickerProviderImpl(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // bottom: ,
          ),
      body: Column(
        children: [
          TabBar(
            isScrollable: false,
            controller: controller,
            indicatorColor: Colors.red,
            indicatorWeight: 20,
            indicator: const BoxDecoration(
              color: Colors.amber,
            ),
            onTap: (value) {
              ///ToDo:::
            },
            unselectedLabelColor: Colors.green,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(
                text: "Home HJJDSAKLJKLJSAKLJDKLAJ ",
              ),
              Tab(
                text: "Page JLJLKJAKLDJKLDJASKL",
              ),
              Tab(
                text: "Account JKLJLKDAJSKLJDLAKJLKDJA:LJDA:L",
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
