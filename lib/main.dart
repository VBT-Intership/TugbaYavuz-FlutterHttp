import 'package:flutter/material.dart';
import 'package:flutterhttp/HttpFlowers/view/http_flowers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData.dark(),
      title: 'Material App',
      home: HttpFlowers(),
    );
  }
}