import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/model/restraunt.dart';
import 'package:fooddelivery/restaurant-popular.dart';
import 'package:fooddelivery/restraunt-card.dart';

import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(
                    //   width: 30,
                    // ),
                    Container(
                      child: Text(
                        'Find Your Favorite Food',
                        style: kMainFont,
                      ),
                      width: 240,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'images/Icon Notifiaction.png',
                      ),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFFDFFFE),
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 4,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Row(
                  children: [
                    Container(
                      child: Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.red),
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                  padding: EdgeInsets.only(left: 13, right: 13),
                                  child: Image.asset(
                                    'images/Icon Search.png',
                                    height: 2,
                                    width: 2,
                                  )),
                              filled: true,
                              fillColor: Colors.orange.withOpacity(0.05),
                              hintText: 'What do you want to order',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none))),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'images/Filter Icon.png',
                        height: 60,
                        width: 60,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Container(
                  height: 150,
                  width: 350,
                  child: Stack(
                    children: [
                      Image.asset('images/Image.png'),
                      Positioned(
                        right: 10,
                        top: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Hey'),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Buy Now'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('images/Frame.png'),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text(
                    'Nearest Restaurant',
                    style: kSecFont,
                  )),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return RestaurantPopularPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'View More',
                      style: kButtonStyle,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i in demoRestaurant)
                      RestaurantCard(
                        image: i.image,
                        name: i.name,
                        time: i.time,
                      ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text(
                    'Popular Menu',
                    style: kSecFont,
                  )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'View More',
                        style: kButtonStyle,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
