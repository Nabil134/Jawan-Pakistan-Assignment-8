import 'package:assignment8/Screens/category.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              /*first portion start here*/
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Image.asset(
                      'images/drawer.png',
                    ),
                  ],
                ),
              ),
              /*first portion end here*/
              SizedBox(
                height: 20,
              ),
              /*second portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Browse by Categories',
                    style: TextStyle(
                      color: Color(0xff171717),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              /*second portion end here*/
              SizedBox(
                height: 20,
              ),
              /*third portion start here*/

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => Category(),
                          ),
                        );
                      },
                      child: Image.asset('images/homePageSpeaker.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('images/homepageHeadsetImg.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('images/speaker.png'),
                  ],
                ),
              ),

              /*third portion end here*/
              SizedBox(
                height: 10,
              ),
              /*forth portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Recommended for You',
                    style: TextStyle(
                      color: Color(0xff171717),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              /*forth portion end here*/
              SizedBox(
                height: 10,
              ),

              /*fifth portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /*first container start here*/
                  Container(
                    height: 209,
                    width: 145,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F6F8),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      children: [
                        Image.asset('images/homePageBeosoundImg.png'),
                        Text(
                          'Beosound 1',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '\$1,600',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*first container end here*/
                  /*second container start here*/
                  Container(
                    height: 209,
                    width: 145,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F6F8),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      children: [
                        Image.asset('images/homePageBeolitImg.png'),
                        Text(
                          'Beolit 17',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '\$500',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*second container end here*/
                ],
              ),
              /*fifth portion end here*/
            ],
          ),
        ),
      ),
    );
  }
}
