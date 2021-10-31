import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';
import 'package:fooddelivery/model/restraunt.dart';
import 'package:fooddelivery/restraunt-card.dart';

class RestaurantPopularPage extends StatelessWidget {
  const RestaurantPopularPage({Key? key}) : super(key: key);

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
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
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
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return RestaurantCard(
                      image: demoRestaurant[index].image,
                      name: demoRestaurant[index].name,
                      time: demoRestaurant[index].time,
                    );
                  },
                  itemCount: demoRestaurant.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
