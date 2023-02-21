import 'package:assignment8/Screens/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool hidePassword = true;
  bool is_Select = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
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
                  'Getting Started',
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
                  'Create an account to continue!',
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
                  'Email',
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
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Color(0xff171717),
                      fontSize: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.email,
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
                  'Username',
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
            /*forth portion end here */
            SizedBox(
              height: 10,
            ),
            /*fifth portion start here */
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
            /*fifth portion end here */
            SizedBox(
              height: 20,
            ),
            /*sixth portion start here */
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: is_Select,
                    onChanged: (val) {
                      setState(() {
                        is_Select = !is_Select;
                      });
                    }),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'By creating an account, you agree to our',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            /*sixth portion end here */
            SizedBox(
              height: 20,
            ),
            /*seventh portion  and Sign In Button start here */
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
                      'SIGN UP',
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
            /*seventh portion  and Sign In Button end here */
            SizedBox(
              height: 10,
            ),
            /*eight portion start here*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
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
                        builder: (ctx) => SignIn(),
                      ),
                    );
                  },
                  child: Text(
                    ' Sign In',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            /*eight portion end here*/
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
      ),
    );
  }
}
