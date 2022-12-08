import 'package:dreamtoflutter_widget/route.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1"),
      ),
      body: ListView.builder(itemBuilder: (_, i) {
        return Container(
          height: 200,
          margin: const EdgeInsets.all(10),
          color: Colors.green,
          alignment: Alignment.center,
          child: Text(i.toString()),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        '/screen2'.route(context);
      }),
    );
  }
}


// import 'package:dreamtoflutter_widget/route.dart';
// import 'package:flutter/material.dart';

// class ScreenOne extends StatefulWidget {
//   const ScreenOne({super.key});

//   @override
//   State<ScreenOne> createState() => _ScreenOneState();
// }

// class _ScreenOneState extends State<ScreenOne> {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Screen 1"),
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               counter.toString(),
//               style: const TextStyle(
//                 fontSize: 100,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 print("start");

//                 ///Push => Screen ကူးတာမှန်သမျှ
//                 ///Pop  => Backလုပ်တာမှန်သမျှ pop => maybepop
//                 ///until => တိုင်တောင်
//                 ///
//                 // Navigator.of(context)
//                 //     .pushReplacement(MaterialPageRoute(builder: (context) {
//                 //   return const Screen2();
//                 // }));

//                 // Navigator.pushNamed(context, , arguments: counter);
//                 '/screen4'.route(context);

//                 // final int? result = await Navigator.of(context).push(
//                 //   MaterialPageRoute(
//                 //     builder: (ctx) {
//                 //       return const Screen2();
//                 //     },
//                 //     settings: RouteSettings(
//                 //       name: "/2",
//                 //       arguments: counter,
//                 //     ),
//                 //   ),
//                 // );
//                 // if (result != null) {
//                 //   counter = result;
//                 //   setState(() {});
//                 // }
//                 // Navigator.push(context, CupertinoPageRoute(builder: (value) {
//                 //   return const Screen2();
//                 // }));
//               },
//               child: const Text("Go To Screen 2"),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//         },
//       ),
//     );
//   }
// }
