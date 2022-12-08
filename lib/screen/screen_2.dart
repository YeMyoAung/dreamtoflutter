import 'package:flutter/material.dart';

final PageStorageBucket pageStorageBucket = PageStorageBucket();

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 2"),
      ),
      body: PageStorage(
        bucket: pageStorageBucket,
        child: ListView.builder(
          key: const PageStorageKey('fajskfa'),
          itemBuilder: (_, i) {
            return Container(
              height: 200,
              margin: const EdgeInsets.all(10),
              color: Colors.red,
              alignment: Alignment.center,
              child: Text(i.toString()),
            );
          },
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Screen2 extends StatefulWidget {
//   const Screen2({super.key});

//   @override
//   State<Screen2> createState() => _Screen2State();
// }

// class _Screen2State extends State<Screen2> {
//   int counter = 0;

//   @override
//   void initState() {
//     super.initState();
//     // Future(() {
//     //   counter = (ModalRoute.of(context)?.settings.arguments as int?) ?? 0;
//     //   setState(() {});
//     // });
//   }

//   @override
//   void didChangeDependencies() {
//     // counter = (ModalRoute.of(context)?.settings.arguments as int?) ?? 0;
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     ///!Avoid
//     // print(ModalRoute.of(context)?.settings.name);
//     // print(ModalRoute.of(context)?.settings.arguments.runtimeType);
//     // Navigator.of(context).pop();
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: true,
//         // leading: IconButton(
//         //     onPressed: () {
//         //       Navigator.maybePop(context);
//         //       // print(Navigator.canPop(context));
//         //     },
//         //     icon: const Icon(Icons.arrow_back)),
//         // leading: const SizedBox(),
//         title: const Text("Screen 2"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             ///
//             // Navigator.push(context, route)
//             // Navigator.pushAndRemoveUntil(context, route)
//             // Navigator.pushReplacement(context, route)

//             // Navigator.pop(context)
//             // Navigator.popUntil(context, (route) => false)

//             // Navigator.replace(context,
//             //     oldRoute: MaterialPageRoute(builder: (_) {
//             //   return const Screen2();
//             // }), newRoute: MaterialPageRoute(builder: (adfas) {
//             //   return const Screen3();
//             // }));
//             // Navigator.push(
//             //     context,
//             //     MaterialPageRoute(
//             //         builder: (_) {
//             //           return const Screen3();
//             //         },
//             //         settings: const RouteSettings(
//             //           name: '/3',
//             //         )));

//             Navigator.pushNamed(context, '/screen3');
//           },
//           child: const Text("Go To Screen 3"),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         counter++;
//         setState(() {});
//       }),
//     );
//   }
// }
