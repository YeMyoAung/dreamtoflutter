import 'package:flutter/material.dart';
import 'package:starlight_utils/starlight_utils.dart';

class FacebookClone extends StatefulWidget {
  const FacebookClone({super.key});

  @override
  State<FacebookClone> createState() => _FacebookCloneState();
}

class _FacebookCloneState extends State<FacebookClone>
    with TickerProviderStateMixin {
  late final TabController controller = TabController(length: 6, vsync: this);

  Widget circleWrapper(Widget child) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(200, 200, 200, 0.8),
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 10),
      child: child,
    );
  }

  Widget statusIcon(IconData icon, String data, Color color,
      [bool containBorder = true]) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        border: containBorder
            ? const Border(
                left: BorderSide(width: 0.3),
                right: BorderSide(width: 0.3),
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(data),
        ],
      ),
    );
  }

  Widget myDayCard([bool useFloatingAction = false]) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: NetworkImage(
              'https://www.hollywoodreporter.com/wp-content/uploads/2019/03/avatar-publicity_still-h_2019.jpg?w=1296'),
          fit: BoxFit.cover,
        ),
        color: Colors.green,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: useFloatingAction ? null : 33,
            height: useFloatingAction ? null : 33,
            padding: useFloatingAction ? const EdgeInsets.all(5) : null,
            decoration: useFloatingAction
                ? const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  )
                : BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpr2vCEsqxFSJf_W0YwY-9avDYCd-6-Sez1A&usqp=CAU'),
                    ),
                  ),
            child: useFloatingAction
                ? const Icon(
                    Icons.add,
                    color: Colors.blue,
                  )
                : null,
          ),
          const Text(
            "Starlight Studio",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget postCard() {
    return Container(
      margin: const EdgeInsets.only(top: 0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpr2vCEsqxFSJf_W0YwY-9avDYCd-6-Sez1A&usqp=CAU'),
                  radius: 25,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Ye Myo Aung",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Jan 2 2019",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Icon(Icons.more_horiz_outlined)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              """Sint aliqua consequat exercitation non pariatur pariatur cillum qui. Tempor ullamco sunt quis laboris et ut pariatur magna ipsum consectetur. Tempor nisi nostrud ullamco aute sint sunt sint cillum commodo adipisicing ipsum dolor eu ullamco. Excepteur elit ipsum dolor eiusmod voluptate deserunt cupidatat reprehenderit. Aliqua magna incididunt fugiat sunt adipisicing culpa et voluptate occaecat sint laborum occaecat cupidatat. Incididunt ad magna ea et occaecat ex laborum anim.""",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Image.network(
            'https://static01.nyt.com/images/2022/09/16/arts/16CAMERON1/16CAMERON1-videoSixteenByNine3000.jpg',
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(
                width: 0.1,
              ),
            )),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child:
                        statusIcon(Icons.thumb_up, 'like', Colors.blue, false)),
                Expanded(
                    child: statusIcon(
                        Icons.comment, 'Comment', Colors.grey, true)),
                Expanded(
                    child:
                        statusIcon(Icons.share, 'Share', Colors.grey, false)),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(200, 200, 200, 1),
      appBar: AppBar(
        elevation: 0.8,
        backgroundColor: Colors.white,
        title: const Text(
          "Dream To Flutter",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        actions: [
          circleWrapper(
            const Icon(
              Icons.search,
              color: Colors.black87,
            ),
          ),
          circleWrapper(const Icon(
            Icons.message,
            color: Colors.black87,
          )),
        ],
        bottom: TabBar(
          labelColor: Colors.black87,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.groups),
            ),
            Tab(
              icon: Icon(Icons.live_tv),
            ),
            Tab(
              icon: Icon(Icons.flag),
            ),
            Tab(
              icon: Icon(Icons.notifications),
            ),
            Tab(
              icon: Icon(Icons.menu),
            )
          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpr2vCEsqxFSJf_W0YwY-9avDYCd-6-Sez1A&usqp=CAU'),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(left: 20),
                              padding: const EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Text("What's on your mind?"),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 0.3,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: statusIcon(Icons.video_camera_back, "Live",
                                  Colors.red, false)),
                          Expanded(
                            child: statusIcon(
                              Icons.photo,
                              "Photo",
                              Colors.blueAccent,
                            ),
                          ),
                          Expanded(
                              child: statusIcon(Icons.location_on, "Live",
                                  Colors.redAccent, false)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 200,
                width: context.width,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myDayCard(true),
                    myDayCard(),
                    myDayCard(),
                    myDayCard(),
                    myDayCard(),
                    myDayCard(),
                  ],
                ),
              ),
              postCard(),
              postCard(),
              postCard(),
              postCard(),
            ],
          ),
          const Text("Group"),
          const Text("Watch"),
          const Text("Page"),
          const Text("Notification"),
          const Text("Menu"),
        ],
      ),
    );
  }
}
