import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home:const  HomeScreen(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: const Center(
          // child: 
          child: Icon(
            Icons.ac_unit_sharp,
            color: Colors.black,
            size: 100,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.deepPurple,
            child: const Text("Click")),
      ),
    );
  }

  
//   import 'package:flutter/material.dart';
// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   static const String _title = 'Flutter Code Sample';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('BUTTONS WIDGET'),
//           centerTitle: true,
//           backgroundColor: Colors.greenAccent,
//         ),
//         // body: Center(
//         //   child: ElevatedButton(
//         //     child: Text('Button_Demo'),
//         //     onPressed: () {},
//         //     style: ElevatedButton.styleFrom(
//         //         primary: Colors.red[800],
//         //         padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//         //         textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
//         //   ),
//         // ),
//         // floatingActionButton: FloatingActionButton(
//         //   onPressed: () {}, // must required property...
//         //   child: Text('Click'),
//         //   backgroundColor: Colors.red[400],
//         // ),
//         body: Center(
//           child: TextButton.icon(
//             icon: Icon(
//               Icons.photo_camera,
//               color: Colors.purple[400],
//               size: 50.0,
//             ),

//         // body: Center(
//         //     child: FlatButton(
//         //   onPressed: () {
//         //     print('print consol output');
//         //   },
//         //   child: Text('click Me'),
//         //   color: Colors.yellow,
//         // )));

//             label: Text(
//               "Gallery",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 40.0,
//                 letterSpacing: 2.0,
//                 backgroundColor: Colors.pink,
//               ),
//               textAlign: TextAlign.start,
//             ),
//             onPressed: () {},
//           ),
//         ));
//   }
// }
