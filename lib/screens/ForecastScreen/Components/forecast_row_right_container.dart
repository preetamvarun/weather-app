import 'package:flutter/material.dart';

class ForecastContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right : 8.0),
                child: Text(
                  "14",
                  style: TextStyle(
                    color: Color(0xFF293E7E),
                    fontSize: deviceWidth / 10.5,
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
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom : 4.0),
                child: Text('Monday', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Text("19 October"),
            ],
          )
        ],
      ),
    );
  }
}
