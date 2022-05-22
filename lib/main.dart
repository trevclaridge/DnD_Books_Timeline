import 'package:flutter/material.dart';
import 'package:dnd_books/view/view.dart';
import 'package:dnd_books/model/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DnD Book Timeline',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DnD Book Timeline'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: const <Widget>[
        //     BookTile(
        //       bookTitle: 'Player\'s Handbook',
        //       publishedDate: 'August 19, 2014',
        //       imageUrl:
        //           'https://cdn11.bigcommerce.com/s-9im8f1/images/stencil/1280x1280/products/4097/1583/81pViXqeVLL__74431.1587749379.jpg?c=2',
        //     ),
        //     BookTile(
        //       bookTitle: 'Monster Manual',
        //       publishedDate: 'September 30, 2014',
        //       imageUrl:
        //           'https://www.boardgamequest.com/wp-content/uploads/2015/01/Monster-Manual-Cover-Art.jpg',
        //     ),
        //   ],
        // ),
        child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          itemCount: Data().books.length,
          itemBuilder: (context, index) {
            return BookTile(
                bookTitle: Data().books.elementAt(index).title!,
                publishedDate: Data().books.elementAt(index).publishedDate!,
                imageUrl: Data().books.elementAt(index).imageUrl!);
          },
        ),
      ),
    );
  }
}
