import 'package:flutter/material.dart';
import 'quote.dart'; // due to same directory file no need path

void main() => runApp(MaterialApp(
      home: EchoList(),
    ));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
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
  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

//card with delete functionality

// import 'package:flutter/material.dart';
// import 'quote.dart';
// import 'quoteCard.dart';

// void main() => runApp(const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: EchoList(),
//     ));

// class EchoList extends StatefulWidget {
//   const EchoList({super.key});

//   @override
//   State<EchoList> createState() => _EchoListState();
// }

// class _EchoListState extends State<EchoList> {
//   List<Quote> quotes = [
//     Quote(
//         text: "Arise, awake, stop not till the goal is reached.",
//         author: "Swami Vivekananda"),
//     Quote(
//         text:
//             "Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning.",
//         author: "Albert Einstein"),
//     Quote(
//         text:
//             "Live as if you were to die tomorrow. Learn as if you were to live forever.",
//         author: "Mahatma Gandhi"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         title: const Text(
//           "Quote",
//           style: TextStyle(letterSpacing: 4),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: quotes
//               .map((quote) => QuoteCard(
//                   quote: quote,
//                   delete: () {
//                     setState(() {
//                       quotes.remove(quote);
//                     });
//                   }))
//               .toList(),
//         ),
//       ),
//     );
//   }
// }

