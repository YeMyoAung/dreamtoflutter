import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List> getDogDetail(String dogType) async {
  try {
    final http.Response result =
        await http.get(Uri.parse('https://dog.ceo/api/breed/$dogType/images'));
    final Map decode = json.decode(result.body);
    return decode['message'];
  } on SocketException {
    throw "No Internet Connection";
  } on TypeError {
    throw "Failed to Parse";
  }
}

class FutureBuilderDetailScreen extends StatelessWidget {
  const FutureBuilderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String dogType =
        ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text(dogType),
      ),
      body: FutureBuilder(
        future: getDogDetail(dogType),
        builder: (_, workingState) {
          if (workingState.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (workingState.connectionState == ConnectionState.done) {
            ///Data,Error
            if (workingState.hasData) {
              return GridView.builder(
                itemCount: workingState.data!.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100),
                itemBuilder: (_, i) {
                  return Image.network(workingState.data![i]);
                },
              );
            }
            return Text(workingState.error.toString());
          }
          return const Center(
            child: Text("Version Error"),
          );
        },
      ),
    );
  }
}
