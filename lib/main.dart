import 'package:api2/HomePage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Page());
}

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
