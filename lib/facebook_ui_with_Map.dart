import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:starlight_utils/starlight_utils.dart';
import 'package:http/http.dart' as http;

class FacebookCloneWithHttpResponseWithMap extends StatefulWidget {
  const FacebookCloneWithHttpResponseWithMap({super.key});

  @override
  State<FacebookCloneWithHttpResponseWithMap> createState() =>
      _FacebookCloneWithHttpResponseWithMapState();
}

class _FacebookCloneWithHttpResponseWithMapState
    extends State<FacebookCloneWithHttpResponseWithMap>
    with TickerProviderStateMixin {
  late final TabController controller = TabController(length: 6, vsync: this);

  final List posts = [];

  // void data(){
  //   for(String data in posts){

  //   }
  // }

  @override
  void initState() {
    super.initState();
    getPost().then((value) {
      posts.addAll(value);
      setState(() {});
    });
  }

  Future<List> getPost() async {
    final http.Response data = await http
        .get(Uri.parse('https://yemyoaung.github.io/json/social-media.json'));
    return json.decode(data.body);
  }

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

  Widget postCardMap(Map post) {
    ///print => limit
    final String name = post['profile']['name'];
    final String description = post['description'];
    final String date = post['published'].split('T').first;
    final List comments = post['comment'];
    return Container(
      margin: const EdgeInsets.only(top: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${date.split('-')[1]} ${date.split('-').last} ${date.split('-').first}",
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        )),
                        // isScrollControlled: true,
                        context: context,
                        builder: (_) {
                          return Container(
                            height: 150,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.edit),
                                  title: const Text("Edit"),
                                  onTap: () {
                                    print("edit");
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.delete),
                                  title: const Text("Delete"),
                                  onTap: () {
                                    Navigator.pop(context);
                                    posts.removeWhere((value) {
                                      return value['id'] == post['id'];
                                    });
                                    setState(() {});

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            const Text("Successfully Deleted"),
                                        action: SnackBarAction(
                                          label: 'Ok',
                                          onPressed: () {
                                            // Navigator.pop(context);
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: const Icon(Icons.more_horiz_outlined))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Image.network(
            'https://picsum.photos/id/237/200/300',
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
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
                    child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          insetPadding: EdgeInsets.zero,
                          contentPadding:
                              const EdgeInsets.only(left: 10, right: 10),
                          content: Material(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Comments",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Divider(),
                                  Expanded(
                                      child: ListView.builder(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    itemCount: comments.length,
                                    itemBuilder: (_, i) {
                                      return Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                const CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584__340.png'),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(comments[i]['name'])
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 50, right: 20),
                                              child:
                                                  Text(comments[i]['comment']),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          borderSide: BorderSide.none,
                                        ),
                                        hintText: 'Write a comment...',
                                        suffixIcon: const Icon(
                                          Icons.camera_alt,
                                          color: Colors.grey,
                                        ),
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            224, 221, 224, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child:
                      statusIcon(Icons.comment, 'Comment', Colors.grey, true),
                )),
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

              if (posts.isEmpty)
                const Center(child: CircularProgressIndicator())
              else
                for (dynamic post in posts) postCardMap(post)

              // postCard(),
              // postCard(),
              // postCard(),
              // postCard(),
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
