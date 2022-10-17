import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Calling'),
      ),
      body:ListView.builder(
        itemCount: 20,
        itemBuilder:
      (context, index) =>
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Text('${index+1}')),
             title: Text('Hello World'),
             subtitle: Text('Panda'),
           ),
         ),
      ) ,
    );
  }
}
