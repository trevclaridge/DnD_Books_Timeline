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
      body: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        itemCount: Data().books.length,
        separatorBuilder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.center,
            child: Container(height: 30.0, width: 7.0, color: Colors.black45),
          );
        },
        itemBuilder: (context, index) {
          return BookTile(
              bookTitle: Data().books.elementAt(index).title!,
              publishedDate: Data().books.elementAt(index).publishedDate!,
              imageUrl: Data().books.elementAt(index).imageUrl!);
        },
      ),
    );
  }
}
