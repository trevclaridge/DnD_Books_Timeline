import 'package:flutter/material.dart';
import 'package:dnd_books/view/view.dart';

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
        initialRoute: 'home',
        routes: <String, WidgetBuilder>{
          'home': (context) => const MyHomePage(),
        });
  }
}
