import 'package:facepexels/pages/index.dart';
import 'package:flutter/material.dart';

void main() => runApp(FacePexels());

class FacePexels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FacePexels',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        canvasColor: Colors.transparent,
      ),
      home: Index(),
    );
  }
}
