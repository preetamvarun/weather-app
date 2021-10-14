import 'package:flutter/material.dart';

class ExploreScreenTextWidget extends StatelessWidget {

  final text, fontSize;
  ExploreScreenTextWidget({this.text,this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
