import 'package:flutter/material.dart';
import 'package:fooddelivery/Inputpage.dart';

void main() => runApp(FoodDelivery());

class FoodDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xFFFDFFFE),
      ),
      home: InputPage(),
    );
  }
}

