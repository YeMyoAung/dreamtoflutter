import 'dart:async';

import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  final PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    // animatePage();
  }

  Future<void> animatePage() {
    return Future.delayed(
      const Duration(seconds: 3),
      doThisTask,
    );
  }

  int currentPage = 0;
  bool isIncrease = true;

  void doThisTask() {
    if (isIncrease) {
      if (currentPage == 4) {
        isIncrease = false;
        currentPage--;
      } else {
        currentPage++;
      }
    } else {
      if (currentPage == 0) {
        isIncrease = true;
        currentPage++;
      } else {
        currentPage--;
      }
    }

    setState(() {});

    controller.animateToPage(
      currentPage,
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
    animatePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        // controller.nextPage(
        //   duration: const Duration(seconds: 5),
        //   curve: Curves.ease,
        // );
        // controller.jumpToPage(12);
        // controller.jumpTo(1000);
      }),
      appBar: AppBar(
        title: const Text("PageView Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                PageView.builder(
                  controller: controller,
                  itemCount: 5,
                  itemBuilder: (_, i) {
                    return Container(
                      width: double.infinity,
                      height: 300,
                      alignment: Alignment.center,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Hello $i",
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30, bottom: 10),
                            child: Text("Second slide label"),
                          ),
                          const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                        ],
                      ),
                    );
                  },
                ),
                Positioned(
                  top: 125,
                  left: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Colors.white60,
                    ),
                  ),
                ),
                Positioned(
                  top: 125,
                  right: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white60,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (index) => GestureDetector(
                          onTap: () {
                            currentPage = index;
                            setState(() {});
                            controller.animateToPage(index,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.linear);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: index == currentPage
                                  ? Colors.black
                                  : Colors.white60,
                              // shape: BoxShape.circle,
                            ),
                            width: 12,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
