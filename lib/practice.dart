import 'package:flutter/material.dart';

class ScrollIt extends StatefulWidget {

  @override
  State<ScrollIt> createState() => _ScrollItState();
}

class _ScrollItState extends State<ScrollIt> {
  final List<String>str = ["hi",
    "there",
    "is",
    "some",
    "thing",
    "over",
    "there",
    "take",
    "a",
    "look",
    "at",
    "it",
    "hello",
    "there",
    "is",
    "some",
    "it"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: str.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color : Colors.yellow,
                child: ListTile(
                  leading : Text("${str[index]}", style : TextStyle(fontSize : 30.0,)),
                  trailing: Icon(Icons.add_a_photo),
                ),
              )
            );
          },
        ),
      );
  }
}
