import 'package:assignment8/Screens/home_page.dart';
import 'package:assignment8/Screens/sign_up_page.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(children: [
          /*first portion start here */
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 20,
                color: Color(0xff000000),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Perth, Western Australia',
                style: TextStyle(
                  color: Color(0xff171717),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          /*first portion end here */
          SizedBox(
            height: 20,
          ),
          /*second portion start here */
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Let\’s Sign You In',
                style: TextStyle(
                  color: Color(0xff171717),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome back, you’ve been missed!',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          /*second portion end here */
          SizedBox(
            height: 40,
          ),
          /*third portion start here */
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Username or Email',
                style: TextStyle(
                  color: Color(0xff8F92A1),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: Color(0xff171717),
                    fontSize: 20,
                  ),
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Color(0xff171717),
                  ),
                ),
              ),
            ],
          ),
          /*third portion end here */
          SizedBox(
            height: 10,
          ),
          /*forth portion start here */
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Password',
                style: TextStyle(
                  color: Color(0xff8F92A1),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: hidePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Color(0xff171717),
                    fontSize: 20,
                  ),
                  prefixIcon: Icon(
                    Icons.looks,
                    color: Color(0xff171717),
                  ),
                  suffixIcon: IconButton(
                    color: Color(0xff171717),
                    icon: hidePassword
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          /*forth portion end here */
          SizedBox(
            height: 80,
          ),
          /*fifth portion  and Sign In Button start here */
          Container(
            height: 44,
            width: double.infinity,
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
                    'SIGN IN',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Icon(Icons.arrow_forward),
                ],
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => HomePage(),
                  ),
                );
              },
            ),
          ),
          /*fifth portion  and Sign In Button end here */
          SizedBox(
            height: 10,
          ),
          /*sixth portion start here*/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t Have  an Account?',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  ' Sign Up',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          /*sixth portion end here*/
          SizedBox(
            height: 30,
          ),
          /*last portion start here*/
          Container(
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              //  color: Color(0xff3C79E6),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff3C79E6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.facebook),
                  Text(
                    'Connect with Facebook',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  Container(),
                ],
              ),
              onPressed: () {},
            ),
          ),
          /*last portion end here*/
        ]),
      ),
    );
  }
}
