import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  num addNumber = 1;
  num total = 1600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*first portion start here*/
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              title: Center(
                child: Text(
                  ' My Cart',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ),
            ),
            /*first portion end here*/
            SizedBox(
              height: 20,
            ),
            /*second portion start here*/
            Container(
              height: 148,
              width: 305,
              decoration: BoxDecoration(
                color: Color(0xffF3F6F8),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      /*first portion start here*/
                      Image.asset(
                        "images/speakerPageBeosoundImg.png",
                        width: 80,
                        height: 80,
                      ),
                      /*first portion end here*/
                      Column(
                        children: [
                          /*second portion start here*/
                          Text(
                            ' Beosound 1',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          /*second portion end here*/
                          SizedBox(
                            height: 10,
                          ),
                          /*third portion start here*/
                          Row(
                            children: [
                              Text(
                                'Color',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Colors.black54),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Size',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Colors.black54),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Text("S"),
                              ),
                            ],
                          ),
                          /*third portion end here*/
                          SizedBox(
                            height: 10,
                          ),
                          /*forth portion start here*/
                          Text(
                            '\$1,600',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                          /*forth portion end here*/
                          /*last portion start here*/
                          Row(
                            children: [
                              InkWell(
                                onTap: (() {
                                  setState(() {
                                    if (addNumber < 0) {
                                      addNumber = 0;
                                    } else {
                                      addNumber = --addNumber;
                                    }
                                  });
                                }),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text('$addNumber'),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: (() {
                                  setState(() {
                                    addNumber = ++addNumber;
                                  });
                                }),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          /*last portion end here*/
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*second portion end here*/
            SizedBox(
              height: 10,
            ),
            /*third portion start here*/
            Container(
              height: 78,
              width: 305,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffF3F6F8),
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Shipping',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2-3 days',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            /*third portion end here*/
            SizedBox(
              height: 10,
            ),
            /*forth portion start here*/
            Container(
              height: 78,
              width: 305,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffF3F6F8),
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.percent,
                    color: Colors.black,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Promo Code',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '- \$100.00',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 56,
                        decoration: BoxDecoration(
                          color: Color(0xffC6AB59),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text('ST#132'),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.check,
                        color: Color(0xff02C697),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*forth portion end here*/
            SizedBox(
              height: 30,
            ),
            /*fifth portion start here*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  '${addNumber * total}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            /*fifth portion end here*/
            SizedBox(
              height: 10,
            ),
            /*fifth portion  and CHECKOUT Button start here */
            Container(
              height: 44,
              width: 305,
              //color: Color(0xffC6AB59),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffC6AB59),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Text(
                      'CHECKOUT',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            /*fifth portion  and CHECTOUT Button end here */
          ],
        ),
      ),
    );
  }
}


/*
  /*second portion start here*/
          Container(
            height: 148,
            width: 305,
            decoration: BoxDecoration(
              color: Color(0xffF3F6F8),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    /*first portion start here*/
                    Image.asset(
                      "images/speakerPageBeosoundImg.png",
                      width: 80,
                      height: 80,
                    ),
                    /*first portion end here*/
                    Column(
                      children: [
                        /*second portion start here*/
                        Text(
                          ' Beosound 1',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        /*second portion end here*/
                        SizedBox(
                          height: 10,
                        ),
                        /*third portion start here*/
                        Row(
                          children: [
                            Text(
                              'Color',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Size',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Text("S"),
                            ),
                          ],
                        ),
                        /*third portion end here*/
                        SizedBox(
                          height: 10,
                        ),
                        /*forth portion start here*/
                        Text(
                          '\$1,600',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        /*forth portion end here*/
                        /*last portion start here*/
                        Row(
                          children: [
                            Text(
                              '-',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text('4'),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '+',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        /*last portion end here*/
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          /*second portion end here*/
*/