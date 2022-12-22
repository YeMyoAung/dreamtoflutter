import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ModalFootball {
  final List<Map> videos;
  final String title, photo, date, competition, matchviewUrl, competitionUrl;
  ModalFootball(
      {required this.title,
      required this.photo,
      required this.date,
      required this.competition,
      required this.matchviewUrl,
      required this.competitionUrl,
      required this.videos});
}

class FootballApi extends StatefulWidget {
  @override
  State<FootballApi> createState() => _FootballApiState();
}

class _FootballApiState extends State<FootballApi> {
  final String api =
      "https://www.scorebat.com/video-api/v3/feed/?token=MjkwOTNfMTY2NTM0Mjg2NF81NGFhMDlkODcxODEyZWVlYTI2ZGFjNzNiM2VmZTEzMGEyMmE3MDUw";
  List<ModalFootball> showdata = [];

  Future<List> takeFootball() async {
    final http.Response response = await http.get(Uri.parse(api));
    return json.decode(response.body)["response"];
  }

  @override
  void initState() {
    super.initState();

    takeFootball().then((list) {
      showdata.addAll(
        list.map(
          (e) {
            return ModalFootball(
              title: e['title'],
              photo: e['thumbnail'],
              date: e['date'].split("T").first,
              competition: e['competition'],
              matchviewUrl: e['matchviewUrl'],
              competitionUrl: e['competitionUrl'],
              videos: e['video'] ?? [],
            );
          },
        ),
      );
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        if (showdata.isEmpty)
          const Center(
            child: CircularProgressIndicator(),
          )
        else
          for (dynamic getdata in showdata)
            Column(
              children: [
                Text(getdata.competition.toString()),
              ],
            )
      ]),
    );
  }
}
