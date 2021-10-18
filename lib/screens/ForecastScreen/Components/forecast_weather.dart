import 'package:flutter/material.dart';

class ForecastContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right : 10.0),
                child: Text(
                  "14",
                  style: TextStyle(
                    color: Color(0xFF293E7E),
                    fontSize: 50.0,
                  ),
                ),
              ),
              Positioned(
                right : 0,
                top : 0,
                child: Text(
                  "o",
                  style: TextStyle(
                    color: Color(0xFF293E7E),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text('Monday', style: TextStyle(fontWeight: FontWeight.bold,)),
              Text("19 October", style: TextStyle(
              ),),
            ],
          )
        ],
      ),
    );
  }
}
