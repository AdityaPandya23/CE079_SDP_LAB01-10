void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EchoList(),
    ));

class EchoList extends StatefulWidget {
  const EchoList({super.key});

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  List<Quote> quotes = [
    Quote(
        text: "Education enpowers us to become a good human being",
        author: 'PandyaAditya1'),
    Quote(
        author: 'PandyaAditya2', text: "Try to achieve Perfection perfectly."),
    Quote(
        text: 'The time is always right to do what is right',
        author: 'Unknown'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Quote",
          style: TextStyle(letterSpacing: 4),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     ));

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Center(
//         child: Column(
//           children: [
//             TextButton.icon(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/location');
//               },
//               icon: const Icon(
//                 Icons.location_on_outlined,
//                 size: 40,
//                 color: Colors.deepPurple,
//               ),
//               label: const Text(
//                 "Edit Location",
//                 style: TextStyle(fontSize: 25, color: Colors.deepPurple),
//               ),
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }

//location.dart
// import 'dart:convert';

// import 'package:flutter/material.dart';
// class Loading extends StatefulWidget {
//   const Loading({Key? key}) : super(key: key);

//   @override
//   State<Loading> createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {
//   String? time = 'LOADING.....';

//   void setWorldTime() async {
//     try {
//     } on FormatException catch (e) {
//       print(e);
//     }
//     setState(() {
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     setWorldTime();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Text(time.toString()),
//       ),
//     );
//     ;
//   }
// }

