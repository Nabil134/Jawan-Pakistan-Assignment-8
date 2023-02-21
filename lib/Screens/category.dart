import 'package:assignment8/Screens/add_to_cart.dart';
import 'package:assignment8/widgets/customList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffC6AB59),
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            'Speakers',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xff171717),
            ),
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                CupertinoIcons.slider_horizontal_3,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              /*first portion start here*/
              Padding(
                padding: EdgeInsets.only(left: 80, right: 20),
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'images/SpeakerPageFirstImg.png',
                    scale: 2,
                  ),
                ),
              ),
              /*first portion end here*/
              SizedBox(
                height: 10,
              ),
              /*second portion start here*/
              TabBar(
                controller: tabController,
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Portable',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Multiroom',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Architectural',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              /*second portion end here*/
              SizedBox(
                height: 10,
              ),
              /*
              /*third portion start here*/
              Container(
                height: MediaQuery.of(context).size.height * .14,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xffF3F6F8),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/speakerPageBeosoundImg.png',
                            height: 80,
                            width: 80,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Beosound 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4.5 ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffC6AB59),
                                    size: 11,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffC6AB59),
                                    size: 11,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffC6AB59),
                                    size: 11,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffC6AB59),
                                    size: 11,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                    size: 11,
                                  ),
                                ],
                              ),
                              Text(
                                '\$1,600',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*third portion end here*/
            */
              /*last portion start here*/

              ListView.builder(
                itemCount: details.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => AddToCart(),
                        ),
                      );
                    }),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 120),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .14,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffF3F6F8),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    details[index]['image'],
                                    height: 80,
                                    width: 80,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        details[index]['name'],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '4.5 ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffC6AB59),
                                            size: 11,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffC6AB59),
                                            size: 11,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffC6AB59),
                                            size: 11,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffC6AB59),
                                            size: 11,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.grey,
                                            size: 11,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "\$${details[index]['price'].toString()}",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              /*last portion end here*/
            ],
          ),
        ),
      ),
    );
  }
}
