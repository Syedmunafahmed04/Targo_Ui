
import 'package:five_july/allpages.dart';
import 'package:five_july/backwardpagetransition.dart';
import 'package:five_july/bigbuttons.dart';
import 'package:five_july/forgotpass.dart';
import 'package:five_july/screencontainer.dart';
import 'package:five_july/signuppage.dart';
import 'package:five_july/signupwithgoogle.dart';

import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class signinpage extends StatefulWidget {
  static const String id = 'signinpage';
  const signinpage({super.key});

  @override
  State<signinpage> createState() => _signinpageState();
}

class _signinpageState extends State<signinpage> {
  TextEditingController signinemail = TextEditingController();
  TextEditingController signinpassword = TextEditingController();
  Color agreebuttoncolor = Colors.black;
  bool isagree = false;
  Icon agreeicon = Icon(Icons.circle_outlined, color: Colors.black, size: 20);

  void agree() {
    setState(() {
      agreebuttoncolor = Colors.white;
      isagree = true;
      agreeicon = Icon(
        Icons.circle,
        color: Colors.white,
        size: 20,
      );
    });
  }

  void notagree() {
    setState(() {
      agreebuttoncolor = Colors.black;
      isagree = false;
      agreeicon = Icon(
        Icons.circle_outlined,
        color: agreebuttoncolor,
        size: 20,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screencontainer(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(backwardpagetransition(child: Screen2()));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Text(
                      '  Sign In',
                      textAlign: TextAlign.left,
                      style: signup,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.indigo),
                  child: TextField(
                    controller: signinemail,
                    keyboardType: TextInputType.emailAddress,
                    style: fieldstyles,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_sharp,
                          color: Colors.white,
                        ),
                        hintText: 'Email Address',
                        hintStyle: normal,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(100)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.indigo),
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: signinpassword,
                    keyboardType: TextInputType.emailAddress,
                    style: fieldstyles,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        hintText: 'Password',
                        hintStyle: normal,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(100)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          isagree ? notagree() : agree();
                        },
                        icon: agreeicon),
                    Text(
                      'Remember Me',
                      style: normal,
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: Duration(milliseconds: 500),
                                  child: forgotpass(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        child: Text(
                          'Forgot Password',
                          style: forgotpassword,
                        ))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: allpages(),
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 500)));
                  },
                  child: bigbutton(
                      text: Text(
                    'Sign in',
                    style: signupbutton,
                  )),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'OR',
                      style: normal,
                    ),
                    SizedBox(
                      width: 150,
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {},
                  child: signupwithgoogle(
                    text: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.jpeg',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sign In With Google',
                            style: signupbutton,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have An Account?",
                      style: fieldstyles,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: Duration(milliseconds: 500),
                                  child: Screen2(),
                                  type: PageTransitionType.bottomToTop));
                        },
                        child: Text(
                          'Sign Up',
                          style: textbutton,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
