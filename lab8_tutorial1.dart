//column container

// body: Column(
// // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(),
//             Container(
//               color: Colors.orange,
//               padding: EdgeInsets.all(30.0),
//               child: Text('container 1'),
//             ),
//             Container(
//               color: Colors.blue,
//               padding: EdgeInsets.all(30.0),
//               child: Text('container 2'),
//             ),
//             Container(
//               color: Colors.orange,
//               padding: EdgeInsets.all(30.0),
//               child: Text('container 3'),
//             ),
//           ],
//         ));

//Row Container

//  body: Row(
//           children: [
//             Text('HELLO ROW'),
//             FlatButton(
//               onPressed: () {},
//               color: Colors.green,
//               child: Text('I am Button'),
//             ),
//             Container(
//               color: Colors.cyanAccent,
//               padding: EdgeInsets.all(20.0),
//               child: Text('element of row-container'),
//             ),
//           ],
//         ));

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: FinalTest1(),
    ));

class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NAME: ',
              style: TextStyle(
                color: Colors.lightGreenAccent[50],
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Pandya Aditya',
              style: TextStyle(
                color: Colors.blue[300],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.green[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '20',
              style: TextStyle(
                color: Colors.brown[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  color: Colors.deepPurple[800],
                ),
                SizedBox(width: 12.0),
                Text(
                  'pandyaaditya600@gmail.com',
                  style: TextStyle(
                    color: Colors.brown[800],
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
