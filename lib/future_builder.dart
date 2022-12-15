import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'future_builder_detail_screen.dart';

class DogList {
  final List<String> dogs;

  DogList(this.dogs);
}

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  DogList? dogList;

  @override
  void initState() {
    super.initState();
    // getAllDog().then((value) {
    //   dogList = value;
    //   setState(() {});
    // });
  }

  Future<DogList> getAllDog() async {
    // try {
    //   ///...code...
    // } on SocketException catch (e) {
    //   print(e);

    //   /// Socket Only
    // } catch (error) {
    ///General => Any Error
    // }

    ///post,get => Data Request Method
    ///Request => body => Data Carring
    try {
      final http.Response result =
          await http.get(Uri.parse('https://dog.ceo/api/breeds/list/all/'));

      ///Response => body => Browser Body
      ///decode =>dynamic (Map,List)
      ///encode =>String
      final Map decode = json.decode(result.body);

      final Map extractMessage = decode['message']; //nulla

      final DogList dogList =
          DogList(extractMessage.keys.map((e) => e.toString()).toList());
      return dogList;
    } on SocketException {
      throw "No Internet Connection";
    } on TypeError {
      throw "Failed To Parse Data";
    }
  }

  @override
  Widget build(BuildContext context) {
    // try {
    //   print("build");
    //   // getAllDog();
    //   final String encoded = json.encode({'name': 'mg mg', 'age': '21'});
    //   // print(encoded);
    //   final List decoded = json.decode(encoded);
    // } catch (e) {
    //   ///
    // }

    /// => Map
    // print(decoded);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder Example"),
      ),
      // body: dogList == null
      //     ? const Center(
      //         child: CircularProgressIndicator(),
      //       )
      //     : ListView.builder(
      //         itemCount: dogList!.dogs.length,
      //         itemBuilder: (_, i) {
      //           ///Card => Row

      //           return ListTile(
      //             title: Text(dogList!.dogs[i]),
      //           );
      //         },
      //       ),

      body: FutureBuilder(
        // initialData: DogList([]),
        future: getAllDog(),
        builder: (_, workingState) {
          print(
              "FutureBuilder => ${workingState.connectionState} ${workingState.data?.dogs.length}");
          if (workingState.connectionState == ConnectionState.waiting) {
            ///Loading
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (workingState.connectionState == ConnectionState.done) {
            ///Error,Data
            if (workingState.hasError) {
              return Center(child: Text(workingState.error.toString()));
            }

            ///loading
            return ListView.builder(
                itemCount: workingState.data!.dogs.length,
                itemBuilder: (_, i) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          settings: RouteSettings(
                            arguments: workingState.data!.dogs[i],
                          ),
                          builder: (_) {
                            return const FutureBuilderDetailScreen();
                          },
                        ),
                      );
                    },
                    title: Text(workingState.data!.dogs[i]),
                  );
                });
          }

          return const Center(
            child: Text("Version Error"),
          );
          // ///
          // return Center(
          //   child: Text(
          //     snapshot.hasError ? snapshot.error.toString() : "No Error",
          //     style: const TextStyle(
          //       color: Colors.green,
          //       fontSize: 28,
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
