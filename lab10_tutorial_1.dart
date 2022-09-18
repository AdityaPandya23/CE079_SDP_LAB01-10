import 'package:flutter/material.dart';
import 'package:lab10_1/pages/home.dart';
import 'package:lab10_1/pages/loading.dart';
import 'package:lab10_1/pages/choose_location.dart';

void main() => runApp(MaterialApp(
// home: Home(),
// instead of making home: property to make any page to initialize at beginning...
// we can use following code ....
//    initialRoute: '/home',
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/location': (context) => ChooseLocation(),
        }));

//pages
//choose_location.dart

// import 'package:flutter/material.dart';
// class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
@override
State<ChooseLocation> createState() => _ChooseLocationState();
// }
// class _ChooseLocationState extends State<ChooseLocation> {

//  // int counter = 0;
//  //  @override
//  //  void initState(){
//  //    // TODO: implement initState
//  //    super.initState();
//  //    getData();
//  //
//  //  }

//   @override
//   Widget build(BuildContext context) {
//     print('BUILD FUNCTION RUN IN CHOOSE LOCATION...');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Choose_location'),
//         centerTitle: true,
//         backgroundColor: Colors.blueAccent,
//       ),
//  /*    body: ElevatedButton(
//         onPressed: (){
//           setState((){
//             counter += 1;
//           });
//         },
//         child: Text('COUNTER IS : $counter'),
//       ), */
//     );
//   }
// }

//loading.dart

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';


// class Loading extends StatefulWidget {
// // const Loading({Key? key}) : super(key: key);
//   @override
//   State<Loading> createState() => _LoadingState();
// }
// class _LoadingState extends State<Loading> {

//   void getData() async {
//     final response = await
//     get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//     print(response.body); // it response in JSON form out put ...we need MAP format..
// // print(response.body.userId); // this will not work. because its not MAP format..
// // TO CONVERT JSON TO MAP..WE NEED TO IMPORT convert package....
//     Map data = jsonDecode(response.body);
//     print(data);
//     print(data['title']);
//   }

//   @override
//   void initState(){
//     // TODO: implement initState
//     super.initState();
//     getData();

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Loading'),
//         centerTitle: true,
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Text('LOADING SCREEN'),
//     );
//   }
// }

//home.dart
// import 'package:flutter/material.dart';
// class Home extends StatefulWidget {
//   @override
//   State<Home> createState() => _HomeState();
// }
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//             children: [
//               TextButton.icon(
//                 onPressed: (){
//                   Navigator.pushNamed(context,'/location');
//                 },
//                 icon: Icon(Icons.edit_location),
//                 label: Text('EDIT LOCATION'),
//               )
//             ],
//           )
//       ),
//     );
//   }
// }
