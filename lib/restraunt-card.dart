import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    required this.image,
    required this.name,
    required this.time,
  });

  final String name;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xFFFDFFFE),
        borderRadius: BorderRadius.all(Radius.circular(13)),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0.5,
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 100,
            width: 100,
          ),
          Text(
            name,
            style: kSecFont,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            time,
            style: kTimeFont,
          )
        ],
      ),
    );
  }
}
